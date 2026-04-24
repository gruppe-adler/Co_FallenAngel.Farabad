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




["SHOTGUN WEDDING - MISSION RESUME", "Resume Main Mission",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  ["RESUME"] remoteExec ["fnc_handleWeddingPhase", 2];
  [] remoteExec ["grad_church_fnc_letsGo", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - MISSION RESUME", "Couple get in Car",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_bridegroom_fnc_getInCar", 2];
}] call zen_custom_modules_fnc_register;





["SHOTGUN WEDDING - INTRO", "Intro Landing Flight",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_bridegroom_fnc_landingFlight", 2];
  
}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - 01 BEACH", "Take Photo at Beach",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_speech_fnc_mission1", 2];
}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - 02 BANK", "AlarmBell",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_bankrobbery_fnc_alarmBell", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - 02 BANK", "Robbery Reaction",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_bankrobbery_fnc_robberyReaction", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - 02 BANK", "Wallet Found Reaction",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_bankrobbery_fnc_walletReaction", 2];
}] call zen_custom_modules_fnc_register;



["SHOTGUN WEDDING - 03 HAIR DRESSER", "Start Attack",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] call GRAD_HAIRDRESSER_fnc_startAttack;
}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - 03 HAIR DRESSER", "Make Isa Banter",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["GRAD_HAIRDRESSER_fnc_hairDresserBanter", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - 03 HAIR DRESSER", "Put Flowers in Hair",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [grad_bride] remoteExec ["GRAD_HAIRDRESSER_fnc_addHair", 2];
}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - 03-04 RICO", "Spawn Rico",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [asltoagl _position] call grad_bridegroom_fnc_createRicoCar;
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - 03-04 RICO", "Rico sings (execute from Driver)",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_bridegroom_fnc_ricoSings", 0];

}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - 03-04 RICO", "Rico Reaction",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_bridegroom_fnc_ricoReaction", 2];
}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - 04 ALLIGATORS", "Alligator Reaction",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_speech_fnc_alligatorReaction", 2];
}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - 05 CHURCH", "ChurchBell",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_church_fnc_churchBell", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - 05 CHURCH", "Church Task Photo",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_church_fnc_churchBanter", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - 05 CHURCH", "Spawn Assassin",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [asltoagl _position] remoteExec ["grad_bridegroom_fnc_createRicoAssassin", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - 06 MANSION", "Execute from Bride! (To the mansion)",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

   [] remoteExec ["grad_mansion_fnc_toTheMansion", 2];
}] call zen_custom_modules_fnc_register;



["SHOTGUN WEDDING - 06 MANSION", "Make Marco vulnerable",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  private _marco = missionNameSpace getVariable ["grad_groom", objNull];
  if (isNull _marco) exitWith {
      "ERROR: Marco not found!" call CBA_fnc_notify;
  };

  [_marco, true] remoteExec ["allowDamage", _marco];
  "Marco damage allowed!" call CBA_fnc_notify;
  
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - 06 MANSION", "Make Isa vulnerable",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  private _isa = missionNameSpace getVariable ["grad_bride", objNull];
  if (isNull _isa) exitWith {
      "ERROR: Isa not found!" call CBA_fnc_notify;
  };

  [_isa, true] remoteExec ["allowDamage", _isa];
  "Isa damage allowed!" call CBA_fnc_notify;
  
}] call zen_custom_modules_fnc_register;



["SHOTGUN WEDDING - 07 EXTRACT", "Don Hector Reacts to Death",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_speech_fnc_mission7", 2];
}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - OUTRO", "Start Outro / End Mission",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  ["EXTRACTION_DONE"] remoteExec ["fnc_handleWeddingPhase", 2];
  
}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING ----", "---------",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - CONVOY SPEED", "Isabella Complains",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_speech_fnc_convoySpeed", 2];
}] call zen_custom_modules_fnc_register;








["SHOTGUN WEDDING - HELPERS", "Spawn Bride",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [asltoagl _position] call grad_bridegroom_fnc_createBride;
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - HELPERS", "Spawn Groom",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [asltoagl _position] call grad_bridegroom_fnc_createGroom;
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - HELPERS", "Headshot (manual)",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  private _priest = missionNameSpace getVariable ["grad_priest", objNull];
  if (isNull _priest) exitWith {
      "ERROR: Priest not found!" call CBA_fnc_notify;
  };

  [_position, _priest] remoteExec ["grad_church_fnc_headshot", 2];
}] call zen_custom_modules_fnc_register;