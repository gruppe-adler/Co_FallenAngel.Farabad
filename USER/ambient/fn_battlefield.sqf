/*
//  Amb_battle.sqf — Dedicated-server compatible ambient battle sound script
//
//  1. Place "Amb_battle.sqf" into missionfolder.
//  2. Place a GAME LOGIC or TRIGGER on map and paste this into its init line:
//       o = [this, 1000] execVM "Amb_battle.sqf";
//
//  Sound scheduling and playback both run on the server.
//  playSound3D is global — all clients hear the same soundscape.
//  Volume is calculated from the nearest player's distance (server-side allPlayers loop).
// original by r/Sahba77 

// refactored to dedicated only usage by nomisum
*/

if (isServer) then {

    private _source       = _this select 0;
    private _battleRadius = if (count _this >= 2) then { _this select 1 } else { 350 };
    private _minDist      = 150; // metres — skip sound if logic spawned this close to any player
    GRAD_AMBIENT_BATTLEFIELD = true;
    publicVariable "GRAD_AMBIENT_BATTLEFIELD";

    private _centerGroup = createGroup sideLogic;
    private _logic = _centerGroup createUnit ["LOGIC", getPos _source, [], 0, ""];

    while { true } do {

        sleep (1 + random 7);

        if (GRAD_AMBIENT_BATTLEFIELD) then {

            for "_burst" from 1 to (1 + ceil (random 2)) do {

                [_logic, _source, _battleRadius, _minDist] spawn {
                    params ["_logic", "_source", "_radius", "_minDist"];

                    private _effectiveRadius = if (_radius > 100) then { _radius / 25 } else { _radius };

                    for "_s" from 1 to (round (random 7) + round (random 56)) do {

                        _logic setPos (_logic modelToWorld [
                            random _effectiveRadius - random _effectiveRadius,
                            random _effectiveRadius - random _effectiveRadius,
                            random 1 - random 2
                        ]);

                        private _logicPos = getPos _logic;

                        // ── Find nearest player distance (server-side) ────────────
                        private _nearestDist = 999999;
                        {
                            private _d = _logic distance _x;
                            if (_d < _nearestDist) then { _nearestDist = _d };
                        } forEach allPlayers;

                        // Skip entirely if any player is too close
                        if (_nearestDist < _minDist) then { continue };

                        // ── Volume from nearest player ────────────────────────────
                        private _vol = switch (true) do {
                            case (_nearestDist <= 250)  : { 0.1 };
                            case (_nearestDist <= 500)  : { 0.5 };
                            case (_nearestDist <= 800)  : { 1.0 };
                            case (_nearestDist <= 1000) : { 1.5 };
                            default                     { 2.0  };
                        };

                        // ── Sound pool ────────────────────────────────────────────
                        private _onWater = surfaceIsWater _logicPos;
                        private _sound1  = format [
                            "A3\Sounds_F\ambient\battlefield\battlefield_firefight%1.wss",
                            floor (random 4) + 1
                        ];

                        private _pool = [];
                        if (random 1 > 0.5 || _onWater)  then { _pool pushBack _sound1 };
                        if (count _pool == 0)             then { _pool pushBack _sound1 };

                        private _sound   = _pool select (floor random count _pool);
                        private _isExpl  = (_sound == _sound1);
                        private _pitch   = if (_isExpl) then { random 0.5 + 0.5 } else { random 0.6 + 0.8 };
                        private _volFinal = if (_isExpl) then { _vol + 1 + random 3 } else { _vol + 0.1 + random 2 };

                        playSound3D [_sound, _logic, false, getPosASL _logic, _volFinal, _pitch, 0];

                        sleep (random 14 + random 14);
                    };
                }; // spawn

                sleep (random 21 + random 21);
            };
        };

        // basically never executed, while always true

        deleteVehicle _logic;
        deleteGroup _centerGroup;
    };

};