[] spawn {
  waitUntil {!isNull player};
  waitUntil {  time > 3 };

  {
    private _curator = _x;
    
      _curator addEventHandler ["CuratorGroupPlaced", {
          params ["", "_group"];

          ["GRAD_missionControl_setServerAsOwner", [_group]] call CBA_fnc_serverEvent;
      }];

      _curator addEventHandler ["CuratorObjectPlaced", {
          params ["", "_object"];

          if (_object isKindOf "CAManBase") then {
             if (count units _object == 1) then {
                 ["GRAD_missionControl_setServerAsOwner", [group _object]] call CBA_fnc_serverEvent;
             };
          } else {
             if (count crew _object > 1) then {
                 ["GRAD_missionControl_setServerAsOwner", [group (crew _object select 0)]] call CBA_fnc_serverEvent;
             };
         };

      }];

  } forEach allCurators;
};


["Fallen Angel - Reinforcements", "Unarmed Vodnik", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_GAZ_Vodnik", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Reinforcements", "Unarmed Tigr", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_Tigr", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Reinforcements", "Unarmed Tigr", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_Tigr", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Reinforcements", "Unarmed Quilin", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_LSV_02", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Reinforcements", "Unarmed UAZ", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_UAZ_Closed", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - A10 Crash", "Init A10 crash", {
	params ["_position", "_object"];

	[] remoteExec ["FA_fnc_handleCrash", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - VLS Attack", "Init VLS Attack", {
	params ["_position", "_object"];

	[] remoteExec ["FA_fnc_handleVLSAttack", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Ambient", "Mute Battlefield Sounds", {
	params ["_position", "_object"];

	GRAD_AMBIENT_BATTLEFIELD = false;
    publicVariable "GRAD_AMBIENT_BATTLEFIELD";

    "Sounds muted" call CBA_fnc_notify;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Ambient", "Start Battlefield Sounds", {
	params ["_position", "_object"];

	GRAD_AMBIENT_BATTLEFIELD = true;
    publicVariable "GRAD_AMBIENT_BATTLEFIELD";

    "Sounds started" call CBA_fnc_notify;
}] call zen_custom_modules_fnc_register;



["Fallen Angel - Mine Entry", "Mine Entry Explosion", {
	params ["_position", "_object"];

	[] remoteExec ["grad_ambient_fnc_lunaxplosion", 2];
}] call zen_custom_modules_fnc_register;


["Fallen Angel - Civilian IED", "Add Hidden IED", {
	params ["_position", "_object"];

    if (isNull _object) exitWith {
        "no object selected" call CBA_fnc_notify;
    };

    "IED added" call CBA_fnc_notify;

	[_object] remoteExec ["grad_ambient_fnc_addHiddenIED", 2];
}] call zen_custom_modules_fnc_register;



["Fallen Angel - Transmissions", "00 SEND IT", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_00_copy", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "00 COPY THAT, STAND BY", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_00_standby", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;



["Fallen Angel - Transmissions", "01 Briefing", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_01_briefing", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "02 Follow-on Tasking", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_02_tasking", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "02b After Vessel RTB", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_02b_taskRTB", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "03 CAS Request", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_03_casrequest", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "04 Aircraft Check-in", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_04_aircraftcheckin", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "05 Situation Update & Game Plan", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_05_gameplan", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "06 Nine-Line Brief", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_06_nineliner", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "07 Talk-on & Shootdown", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_07_talkon_shootdown", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "08 Downed Pilot Report", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_08_downedpilot", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "09 Reposition Order", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_09_taskreposition", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "10 Fire Mission Request", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_10_firemission_request", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "11 Fire Mission Execution", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_11_firemission_execution", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "12 Airspace Clear", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_12_airspace_clear", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "13 Pilot Contact 1", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_13_pilotcontact_1", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "14 Pilot Contact 2", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_14_pilotcontact_2", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "15 Panic Call", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_15_paniccall", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "16 Pilot KIA", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_16_pilotKIA", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "16 Pilot RTB", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_16_pilotRTB", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "17 Final Tasking", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_17_finalTask", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;


["Fallen Angel - Transmissions", "99 MISSION COMPLETE", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_99_rtb", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;
