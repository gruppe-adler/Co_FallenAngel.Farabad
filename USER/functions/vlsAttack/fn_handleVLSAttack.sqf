if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

[] call FA_fnc_transmission_10_firemission_request;
sleep 2;
[] spawn FA_fnc_transmission_11_firemission_execution;

// VLS flight time is 53s — fire at Neptune's "Shot" call (t=77), impact at t=130
sleep 77;
[[liberty_VLS], FA_vlsTarget, 0, "magazine_Missiles_Cruise_01_x18", 1] call zen_modules_fnc_moduleFireMission;