{
    _x params ["_audioID"];
    
    private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
    private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
    private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
    private _object = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object");

    [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
    sleep (_duration + 1);
} forEach [
    "mission_001_warlord", 
    "mission_002_warlord", 
    "mission_003_warlord", 
    "mission_004_warlord", 
    "mission_005_warlord", 
    "mission_006_warlord"
];