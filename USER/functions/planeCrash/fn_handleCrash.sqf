if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

// Initial CAS-Request
[] call FA_fnc_transmission_03_casrequest;
sleep 120;

[] call FA_fnc_transmission_04_aircraftcheckin;
sleep 3;
[] call FA_fnc_transmission_05_gameplan;
sleep 2;
[] call FA_fnc_transmission_06_nineliner;

// Create plane
([[0,0,200], 0, "B_Plane_CAS_01_dynamicLoadout_F", west] call BIS_fnc_spawnVehicle) params ["_a10", "_crew", "_group"];
_a10 allowDamage false;
[_a10] call FA_fnc_playA10;

// Launch SAM
[
    {
        params ["_a10"];
        _a10 inArea FA_crashTrigger
    },
    {
        params ["_a10"];
        missionNamespace setVariable ["FA_a10", _a10, true];
        [] call FA_fnc_startSAM;
    },
    [_a10]
] call CBA_fnc_waitUntilAndExecute;

// IP Inbound
sleep 35.5;
[] call FA_fnc_transmission_07_talkon_shootdown;


// Cleanup
waitUntil { isTouchingGround _a10 };
{
    deleteVehicle _x;    
} forEach ([_a10] + _crew);

[] call FA_fnc_transmission_08_downedpilot;
