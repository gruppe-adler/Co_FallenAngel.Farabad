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



["Fallen Angel - Ambient", "Music Radio",
    {
      // Get all the passed parameters
      params ["_position", "_object"];
      _position = ASLToAGL _position;

      private _radio = (selectRandom ["land_gm_euro_furniture_radio_01", "jbad_radio_b", "Land_FMradio_F"]) createVehicle [0,0,0];
      _radio setPos _position;
      _radio setDir (random 360);

      private _music = (selectRandom ["arabicsong1", "arabicsong2", "arabicsong3"]);
      private _source = createSoundSource [_music, _position, [], 0];
      [_source, _music, _radio, false] call grad_ambient_fnc_soundSourceHelper;
      
      {
        _x addCuratorEditableObjects [[_radio], false];
      } forEach allCurators;

    }] call zen_custom_modules_fnc_register;


["Fallen Angel - Reinforcements", "Unarmed Vodnik", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_GAZ_Vodnik", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Reinforcements", "Unarmed Tigr", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_Tigr", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Reinforcements", "Unarmed Offroad", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_Offroad_Unarmed", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Reinforcements", "Unarmed Kamaz", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_Kamaz_Covered", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Reinforcements", "Unarmed GAZ-66", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_Gaz66_Covered", ASLToAGL _position] call FA_fnc_spawnReinforcements;
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Reinforcements", "Unarmed UAZ", {
	params ["_position", "_object"];

	["UK3CB_CSAT_B_O_UAZ_Closed", ASLToAGL _position] call FA_fnc_spawnReinforcements;
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
    [] remoteExec ["FA_fnc_transmission_00_copy", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Transmissions", "00 COPY THAT, STAND BY", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_00_standby", 2];
}] call zen_custom_modules_fnc_register;



["Fallen Angel - Mission Flow", "01 Briefing Checkpoint", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_01_briefing", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "02 Fisher Boat Task", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_02_tasking", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "02b After Vessel RTB", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_02b_taskRTB", 2];
}] call zen_custom_modules_fnc_register;


["Fallen Angel - Mission Flow", "03 - Init A10 crash", {
	params ["_position", "_object"];

	[] remoteExec ["FA_fnc_handleCrash", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "04 Pilot Rescue Task", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_09_taskreposition", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "05 Pilot Contact 1", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_13_pilotcontact_1", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "06 - Init VLS Attack", {
	params ["_position", "_object"];

	[] remoteExec ["FA_fnc_handleVLSAttack", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "07 Pilot Contact 2", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_14_pilotcontact_2", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "07b Convoy Start", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_initChase", 2];
}] call zen_custom_modules_fnc_register;




["Fallen Angel - Mission Flow", "09 Pilot KIA", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_16_pilotKIA", 2];

    missionNamespace setVariable ["FA_pilotBeaconActive", false, true];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "10 Pilot RTB", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_16_pilotRTB", 2];

     missionNamespace setVariable ["FA_pilotBeaconActive", false, true];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "11 Final Tasking", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_17_finalTask", 2];
}] call zen_custom_modules_fnc_register;


["Fallen Angel - Mission Flow", "12 Secondary Objective: Local rescue", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_18_localRescue", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "13 Secondary Objective: Local rescue Success", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_19_localRescueSuccess", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "13 Secondary Objective: Local rescue Failed", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_20_localRescueFailed", 2];
}] call zen_custom_modules_fnc_register;


["Fallen Angel - Mission Flow", "13 Secondary Objective: Refinery Attack", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_21_refineryAttack", 2];
}] call zen_custom_modules_fnc_register;

["Fallen Angel - Mission Flow", "14 Secondary Objective: Refinery Attack Success", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_22_refinerySuccess", 2];
}] call zen_custom_modules_fnc_register;




["Fallen Angel - Transmissions", "99 MISSION COMPLETE", {
    params ["_position", "_object"];
    [] remoteExec ["FA_fnc_transmission_99_rtb", 2];
}] call zen_custom_modules_fnc_register;
