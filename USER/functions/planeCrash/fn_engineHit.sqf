/*
    fn_engineHit.sqf

    Engine fire + smoke effect, recreating the look of the vanilla
    burning-vehicle effect (test_EmptyObjectForFireBig + test_EmptyObjectForSmoke)
    using setParticleParams directly so we can customize the smoke lifetime.

    Run on every machine via remoteExec.

    PARAMS:
        0: OBJECT - the aircraft
        1: STRING - selection name (default "engine_1_hit")
        2: STRING - selection LOD  (default "HitPoints")
*/

params [
    "_aircraft",
    ["_selection", "engine_1_hit"],
    ["_lod",       "HitPoints"]
];

if (isNull _aircraft) exitWith {};

private _offset = _aircraft selectionPosition [_selection, _lod];

// =====================================================================
// FIRE — bright animated flames at the engine
// Direct copy of BIKI Particles Tutorial "burning vehicle fire"
// =====================================================================
private _fire = "test_EmptyObjectForFireBig" createVehicleLocal [0, 0, 0];
_fire attachTo [_aircraft, _offset];

// =====================================================================
// SMOKE — dark trail rising from the engine (lighter grey layer)
// Adapted from BIKI Particles Tutorial smoke
// =====================================================================
private _smoke = "#particlesource" createVehicleLocal [0, 0, 0];

_smoke setParticleRandom [
    8,                         // lifeTime variation
    [0.5, 0.3, 0.5],            // position variation
    [0.5, 0.75, 0.5],           // moveVelocity variation
    0.5,                        // rotationVelocity variation
    0,                          // size variation
    [0, 0, 0, 0.06],            // color (RGBA) variation
    0,                          // randomDirectionPeriod variation
    0,                          // randomDirectionIntensity variation
    0.5,                        // angle variation
    0                           // bounceOnSurface variation
];

_smoke setParticleParams [
    // [shape, FSNtieth, FSIndex, FSFrameCount, FSLoop]
    ["\A3\data_f\ParticleEffects\Universal\Universal_02", 8, 0, 40, 1],
    "",                         // animationName
    "Billboard",                // particleType
    1,                          // timerPeriod
    4,                          // lifeTime
    [0, 0, 0],                  // pos3D (relative)
    [0, 5, 0],                  // moveVelocity
    1,                          // rotationVelocity
    0.05,                       // weight
    0.04,                       // volume
    0.05,                       // rubbing
    [1, 10], // sizeOverLifetime
    [                           // color (Array of RGBA over lifetime)
        [0.35, 0.35, 0.35, 0.6 ],
        [0.35, 0.35, 0.35, 0.75],
        [0.35, 0.35, 0.35, 0.45],
        [0.42, 0.42, 0.42, 0.28],
        [0.42, 0.42, 0.42, 0.16],
        [0.42, 0.42, 0.42, 0.09],
        [0.42, 0.42, 0.42, 0.06],
        [0.5,  0.5,  0.5,  0.02],
        [0.5,  0.5,  0.5,  0   ]
    ],
    [1, 0.55, 0.35],            // animationSpeed
    0.3,                        // randomDirectionPeriod
    0.2,                        // randomDirectionIntensity
    "",                         // onTimerScript
    "",                         // beforeDestroyScript
    "",                         // obj
    0,                          // angle
    false,                      // onSurface
    0,                          // bounceOnSurface
    []                          // emissiveColor
];
_smoke setDropInterval 0.08;
_smoke attachTo [_aircraft, _offset];

// =====================================================================
// SMOKE — dark trail rising from the engine (darker layer)
// =====================================================================
private _smoke2 = "#particlesource" createVehicleLocal [0, 0, 0];

_smoke2 setParticleRandom [
    5,                         // lifeTime variation
    [0.5, 0.3, 0.5],            // position variation
    [0.5, 0.75, 0.5],           // moveVelocity variation
    0.5,                        // rotationVelocity variation
    0,                          // size variation
    [0, 0, 0, 0.06],            // color (RGBA) variation
    0,                          // randomDirectionPeriod variation
    0,                          // randomDirectionIntensity variation
    0.5,                        // angle variation
    0                           // bounceOnSurface variation
];

_smoke2 setParticleParams [
    // [shape, FSNtieth, FSIndex, FSFrameCount, FSLoop]
    ["\A3\data_f\ParticleEffects\Universal\Universal_02", 8, 0, 40, 1],
    "",                         // animationName
    "Billboard",                // particleType
    1,                          // timerPeriod
    3,                          // lifeTime
    [0, 0, 0],                  // pos3D (relative)
    [0, 3, 0],                  // moveVelocity
    0,                          // rotationVelocity
    0.05,                       // weight
    0.04,                       // volume
    0.05,                       // rubbing
    [1, 8], // sizeOverLifetime
    [                           // color (Array of RGBA over lifetime)
        [0.04, 0.04, 0.04, 0.4 ],
        [0.04, 0.04, 0.04, 0.6 ],
        [0.09, 0.09, 0.09, 0.45],
        [0.09, 0.09, 0.09, 0.32],
        [0.09, 0.09, 0.09, 0.2 ],
        [0.09, 0.09, 0.09, 0.1 ],
        [0.09, 0.09, 0.09, 0.06],
        [0.16, 0.16, 0.16, 0.01],
        [0.16, 0.16, 0.16, 0   ]
    ],
    [1, 0.45, 0.35],            // animationSpeed
    0.3,                        // randomDirectionPeriod
    0.2,                        // randomDirectionIntensity
    "",                         // onTimerScript
    "",                         // beforeDestroyScript
    "",                         // obj
    0,                          // angle
    false,                      // onSurface
    0,                          // bounceOnSurface
    []                          // emissiveColor
];
_smoke2 setDropInterval 0.05;
_smoke2 attachTo [_aircraft, _offset];

// =====================================================================
// Cleanup when plane is destroyed
// =====================================================================
[
    {
        params ["_plane"];
        !alive _plane
    },
    {
        params ["_plane", "_fire", "_smoke", "_smoke2"];
        { if (!isNull _x) then { deleteVehicle _x } } forEach [_fire, _smoke, _smoke2];
    },
    [_aircraft, _fire, _smoke, _smoke2]
] call CBA_fnc_waitUntilAndExecute;

[_fire, _smoke, _smoke2]