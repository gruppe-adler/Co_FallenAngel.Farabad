{
    _x params ["_audioID"];
    
    private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
    private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
    private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
    private _object = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object");

    [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
    sleep (_duration + 1);
} forEach [
   "mission_044_bulldog_6", 
   "mission_045_neptune", 
   "mission_046_bulldog_6",
   "mission_047_neptune", 
   "mission_048_bulldog_6", 
   "mission_049_neptune",
   "mission_050_bulldog_6", 
   "mission_051_neptune", 
   "mission_052_bulldog_6",
   "mission_053_neptune", 
   "mission_054_bulldog_6", 
   "mission_055_bulldog_6",
   "mission_056_neptune"
];