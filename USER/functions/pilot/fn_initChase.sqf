if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

(vehicle pilot_car) engineOn true;

[] spawn FA_fnc_transmission_15_paniccall;

sleep 2;

{
    private _vehicle = _x;
    private _path = []; 

    for "_i" from 1 to 65 do {
        _path pushBack (getPos call compile ("convoy_" + str _i));
    };

    _vehicle setSpeedMode "FULL";
    _vehicle setDriveOnPath _path;

    
} forEach [pilot_car];

[driver pilot_car, "Hawg"] remoteExec ["setIdentity", 0, driver pilot_car];
