/*
    Amb_battle.sqf — Ambient battlefield soundscape (dedicated-server only)
    Usage:  [this, 1000] execVM "Amb_battle.sqf";
    Pause:  GRAD_AMBIENT_BATTLEFIELD = false;
*/

if (!isServer) exitWith {};

params [["_source", objNull], ["_radius", 600]];

private _effRadius = if (_radius > 100) then { _radius / 25 } else { _radius };
private _minDist   = 150;

GRAD_AMBIENT_BATTLEFIELD = true;
publicVariable "GRAD_AMBIENT_BATTLEFIELD";

private _anchorPos = getPos _source;

while { true } do {

    sleep (1 + random 7);
    if (!GRAD_AMBIENT_BATTLEFIELD) then { continue };

    for "_b" from 1 to (1 + ceil random 2) do {

        [_anchorPos, _effRadius, _minDist] spawn {
            params ["_anchorPos", "_radius", "_minDist"];

            for "_s" from 1 to (round random 7 + round random 56 + 1) do {

                private _soundPos = _anchorPos vectorAdd [
                    random _radius - random _radius,
                    random _radius - random _radius,
                    random 1       - random 2
                ];

                private _dist = 1e9;
                { private _d = _x distance2D _soundPos; if (_d < _dist) then { _dist = _d } } forEach allPlayers;

                if (_dist < _minDist) then { continue };

                private _vol = [0.1, 0.5, 1.0, 1.5, 2.0] select
                    ([250, 500, 800, 1000, 1e9] findIf { _dist <= _x });

                _vol = _vol * 0.19;

                playSound3D [
                    format ["A3\Sounds_F\ambient\battlefield\battlefield_firefight%1.wss", floor random 4 + 1],
                    objNull, false, ASLToAGL _soundPos,
                    _vol + 1 + random 3,
                    random 0.5 + 0.5,
                    0
                ];

                sleep (random 14 + random 14);
            };
        };

        sleep (random 21 + random 21);
    };
};