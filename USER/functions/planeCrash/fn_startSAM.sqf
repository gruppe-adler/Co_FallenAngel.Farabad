if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

private _launcher = FA_SAM;

private _relPos = _launcher getRelPos [30, 0];
_relPos set [2, 100];
_launcher lookAt _relPos;

sleep 9.5;

private _muzzle = (_launcher weaponsTurret [0]) # 0;
[_launcher, _muzzle] call BIS_fnc_fire;
