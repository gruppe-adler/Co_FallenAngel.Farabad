
{
    private _vehicle = _x;
    private _path = []; 

    for "_i" from 1 to 65 do {
        _path pushBack (getPos call compile ("convoy_" + str _i));
    };


    _vehicle setSpeedMode "FULL";

    _vehicle setDriveOnPath _path;

} forEach [pilot_car, convoy_car];