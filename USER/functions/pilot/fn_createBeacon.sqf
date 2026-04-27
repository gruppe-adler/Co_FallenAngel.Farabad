params ["_pilot", ["_pulseMaxSize", 100], ["_pulsePeriod", 1.5]];

private _marker = createMarkerLocal ["fa_pilotBeacon", getPosATL _pilot];
"fa_pilotBeacon" setMarkerShapeLocal "ELLIPSE";
"fa_pilotBeacon" setMarkerColorLocal "ColorWEST";
"fa_pilotBeacon" setMarkerAlphaLocal 1;
"fa_pilotBeacon" setMarkerSizeLocal [0.01, 0.01];
"fa_pilotBeacon" setMarkerBrushLocal "SolidFull";

[{
    params ["_args", "_handle"];
    _args params ["_marker", "_pilot", "_pulseMaxSize", "_pulsePeriod"];

    if !(missionNamespace getVariable ["FA_pilotBeaconActive", true]) exitWith {
        [_handle] call CBA_fnc_removePerFramehandler;
        deleteMarkerLocal _marker;
    };

    // _time is 0.0 at pulse start, 1.0 at pulse end
    private _time = (time mod _pulsePeriod) / _pulsePeriod;

    _marker setMarkerPosLocal _pilot;
    _marker setMarkerAlphaLocal (1 - _time);
    _marker setMarkerSizeLocal [_time * _pulseMaxSize, _time * _pulseMaxSize];

}, 0, ["fa_pilotBeacon", _pilot, _pulseMaxSize, _pulsePeriod]] call CBA_fnc_addPerFramehandler;
