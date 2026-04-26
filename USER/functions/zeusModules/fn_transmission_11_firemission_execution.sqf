{
    _x params ["_audioID", "_sleep"];
    
    private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
    private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
    private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
    private _object = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object");

    [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
    sleep ((_duration + 1) + _sleep);
} forEach [
   ["mission_044_bulldog_6", 1], 
   ["mission_045_neptune", 1], 
   ["mission_046_bulldog_6", 3],
   ["mission_047_neptune", 1], 
   ["mission_048_bulldog_6", 20], 
//    "mission_049_neptune",
   ["mission_050_bulldog_6", 2], 
   ["mission_051_neptune", 1], 
   ["mission_052_bulldog_6", 44],
   ["mission_053_neptune", 0], 
   ["mission_054_bulldog_6", 10], 
   ["mission_055_bulldog_6", 1],
   ["mission_056_neptune", 8],
   ["mission_057_warlord", 0]
];