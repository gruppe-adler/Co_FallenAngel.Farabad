{
    _x params ["_audioID", "_sleep"];
    
    private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
    private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
    private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
    private _object = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object");

    [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
    sleep ((_duration + 1) + _sleep);
} forEach [
    ["mission_041_bulldog_6", 1], 
    ["mission_042_warlord", 10], 
    ["mission_043_warlord", 0]
];