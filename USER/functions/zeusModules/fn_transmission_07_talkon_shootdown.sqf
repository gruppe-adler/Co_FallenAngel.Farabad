{
    _x params ["_audioID", "_sleep"];
    
    private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
    private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
    private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
    private _object = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object");

    [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
    sleep ((_duration + 1) + _sleep);
} forEach [
    ["mission_023_hawg_2_1", 5], 
    ["mission_024_hawg_2_1", 0], 
    ["mission_025_bulldog_6", 1],
    ["mission_026_hawg_2_1", 0.5], 
    ["mission_027_bulldog_6", 1], 
    ["mission_028_hawg_2_1", 4],
    ["mission_029_hawg_2_1", 1], 
    ["mission_030_bulldog_6", 2], 
    ["mission_031_hawg_2_1", 9],
    ["mission_032_hawg_2_1", 0]
];