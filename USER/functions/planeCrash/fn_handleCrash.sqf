if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

// To-Do: voice lines

// Create plane
([[0,0,200], 0, "B_Plane_CAS_01_dynamicLoadout_F", west] call BIS_fnc_spawnVehicle) params ["_a10", "_crew", "_group"];
_a10 allowDamage false;
[_a10] call FA_fnc_playA10;

// Launch SAM
waitUntil { _a10 inArea FA_crashTrigger };
missionNamespace setVariable ["FA_a10", _a10, true];
[] call FA_fnc_startSAM;

// Cleanup
waitUntil { isTouchingGround _a10 };
{
    deleteVehicle _x;    
} forEach ([_a10] + _crew);
