/*
    fn_guideMissile.sqf
    
    Lead-pursuit guidance for a scripted missile against a moving target
    (typically a unitPlay'd aircraft). Direct-attack profile.
    
    Uses setVelocityTransformation for smoother MP replication —
    the same mechanism BIS_fnc_unitPlay uses to drive the target.
    
    Runs server-side. The missile (ammo object) must be global.
    
    PARAMS:
        0: OBJECT    - the missile
        1: OBJECT    - the target aircraft
        2: STRING    - selection name on the target to aim at
                       (e.g. "engine_1_hit"); defaults to "" (centre of target)
        3: STRING    - LOD for selectionPosition lookup;
                       defaults to "HitPoints"
        4: NUMBER    - max missile speed in m/s (default 500)
        5: NUMBER    - boost duration in seconds (default 1.5).
                       Set 0 to skip boost (missile starts at full speed).
        6: NUMBER    - boost target speed in m/s (default 300)
        7: NUMBER    - max turn angle per frame in degrees (default 1)
        8: CODE      - callback executed on impact, passed
                       [_missile, _target, _impactPosASL]; default {}
*/

#define MAX_ANGLE_DEFAULT 1
#define TERMINAL_RANGE   50   // metres — below this, stop leading and go direct
#define IMPACT_DISTANCE  15   // metres — terminal proximity threshold

params [
    "_missile",
    "_target",
    ["_targetSelection", ""],
    ["_selectionLOD",    "HitPoints"],
    ["_maxSpeed",        400],
    ["_boostDuration",   2],
    ["_boostSpeed",      200],
    ["_maxAngle",        MAX_ANGLE_DEFAULT],
    ["_onImpact",        {}]
];

_missile setMissileTarget objNull;

private _startTime  = diag_tickTime;

// Resolve initial target position to compute initial distance
private _initialTargetPos = if (_targetSelection isEqualTo "") then {
    getPosASLVisual _target
} else {
    AGLToASL (_target modelToWorldVisual
              (_target selectionPosition [_targetSelection, _selectionLOD]))
};
private _initialDistance = _missile distance _initialTargetPos;

private _stateData = createHashMapFromArray [
    ["startTime",       _startTime],
    ["lastTime",        _startTime],
    ["lastDistance",    _initialDistance],
    ["initialDistance", _initialDistance],
    ["impacted",        false]
];

[{
    params ["_args", "_pfh"];
    _args params [
        "_missile", "_target", "_targetSelection", "_selectionLOD",
        "_maxSpeed", "_boostDuration", "_boostSpeed", "_maxAngle",
        "_onImpact", "_state"
    ];

    // ---- Sanity ----
    if (isNull _missile || {!alive _missile}) exitWith {
        [_pfh] call CBA_fnc_removePerFrameHandler;
    };
    if (isNull _target) exitWith {
        [_pfh] call CBA_fnc_removePerFrameHandler;
    };

    // ---- dt + elapsed ----
    private _now = diag_tickTime;
    private _dt  = _now - (_state get "lastTime");
    _state set ["lastTime", _now];
    if (_dt <= 0) exitWith {};
    if (_dt > 0.5) then { _dt = 0.5; };
    
    private _elapsed = _now - (_state get "startTime");
    
    // ---- Resolve target world position (selection-aware) ----
    private _targetPos = if (_targetSelection isEqualTo "") then {
        getPosASLVisual _target
    } else {
        AGLToASL (_target modelToWorldVisual
                  (_target selectionPosition [_targetSelection, _selectionLOD]))
    };
    
    private _missilePos      = getPosASLVisual _missile;
    private _missileVel      = velocity _missile;
    private _currentDistance = _missile distance _targetPos;
    private _lastDistance    = _state get "lastDistance";
    _state set ["lastDistance", _currentDistance];
    
    // ---- Abort: missile is running away from target ----
    if (_currentDistance > (_lastDistance * 1.5) && {_currentDistance > 75}) exitWith {
        [_pfh] call CBA_fnc_removePerFrameHandler;
        private _charge = "HelicopterExploBig" createVehicle (ASLToAGL _missilePos);
        _charge setPosASL _missilePos;
        _charge setDamage 1;
        deleteVehicle _missile;
    };
    
    // ---- Terminal phase / impact check ----
    if (_currentDistance <= IMPACT_DISTANCE && {!(_state get "impacted")}) exitWith {
        _state set ["impacted", true];
        [_pfh] call CBA_fnc_removePerFrameHandler;
        
        _missile setPosASL _targetPos;
        
        private _charge = "HelicopterExploBig" createVehicle (ASLToAGL _targetPos);
        _charge setPosASL _targetPos;
        _charge setDamage 1;
        deleteVehicle _missile;
        
        [_target] remoteExec ["FA_fnc_engineHit", [0, -2] select isDedicated, _target];
    };
    
    // ---- Compute aim point ----
    // At terminal range, lead becomes counterproductive — the missile can't
    // catch a future position it's already passed. Aim straight at the target.
    // Outside terminal range, use time-to-intercept lead prediction.
    private _aimPoint = if (_currentDistance < TERMINAL_RANGE) then {
        // TERMINAL: direct aim at current target position (no lead, no chase)
        _targetPos
    } else {
        // CRUISE: time-to-intercept lead prediction with iteration
        private _missileSpeedNow = (vectorMagnitude _missileVel) max 300;
        private _timeToGo = (_currentDistance / _missileSpeedNow) min 6;
        
        private _targetVel = velocity _target;
        private _predicted = _targetPos vectorAdd (_targetVel vectorMultiply _timeToGo);
        _timeToGo = ((_missile distance _predicted) / _missileSpeedNow) min 6;
        _targetPos vectorAdd (_targetVel vectorMultiply _timeToGo)
    };
    
    private _flightVec = _missilePos vectorFromTo _aimPoint;
    
    // ---- Speed: boost phase or cruise ----
    private _missileSpeed = if (_elapsed < _boostDuration && {_boostDuration > 0}) then {
        private _t = _elapsed / _boostDuration;
        linearConversion [0, 1, _t, 50, _boostSpeed, true]
    } else {
        private _forwardSpeed = (velocityModelSpace _missile) select 1;
        ((_forwardSpeed * 1.0001) max _boostSpeed) min _maxSpeed
    };
    
    // ---- Turn-rate cap via angle-based bezier interpolation ----
    // Applied at ALL ranges to prevent terminal-phase zig-zag.
    // Without this cap, the missile flips its heading every frame as
    // the target's selection moves, producing visible jitter.
    private _projVec = vectorNormalized _missileVel;
    if (vectorMagnitude _projVec < 0.01) then {
        _projVec = _flightVec;
    };
    
    private _dot   = _projVec vectorDotProduct _flightVec;
    private _cross = _projVec vectorCrossProduct _flightVec;
    private _angle = (vectorMagnitude _cross) atan2 _dot;
    
    if (_angle > _maxAngle) then {
        private _rate = (_maxAngle / _angle) max 0.08;
        _flightVec = _rate bezierInterpolation [_projVec, _flightVec];
    };
    
    // ---- Build new transform ----
    private _newDir = vectorNormalized _flightVec;
    private _newVel = _newDir vectorMultiply _missileSpeed;
    private _newPos = _missilePos vectorAdd (_newVel vectorMultiply _dt);
    
    // Compute up vector perpendicular to flight direction
    private _newUp = _newDir vectorCrossProduct [_newDir # 1, _newDir # 0, 0];
    if (vectorMagnitude _newUp < 0.01) then {
        _newUp = [0, 0, 1];
    };
    
    // ---- Apply via setVelocityTransformation ----
    _missile setVelocityTransformation [
        _missilePos, _newPos,
        _missileVel, _newVel,
        vectorDir _missile, _newDir,
        vectorUp  _missile, _newUp,
        1
    ];
    
}, 0, [
    _missile, _target, _targetSelection, _selectionLOD,
    _maxSpeed, _boostDuration, _boostSpeed, _maxAngle,
    _onImpact, _stateData
]] call CBA_fnc_addPerFrameHandler;