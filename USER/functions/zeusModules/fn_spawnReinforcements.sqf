if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

params ["_vehClass", "_positionAGL"];

([_positionAGL, 0, _vehClass, east] call BIS_fnc_spawnVehicle) params ["_veh", "_crew", "_group"];

private _unitTypes = ["UK3CB_CSAT_B_O_AT", "UK3CB_CSAT_B_O_GL", "UK3CB_CSAT_B_O_RIF_1", "UK3CB_CSAT_B_O_RIF_1", "UK3CB_CSAT_B_O_RIF_2", "UK3CB_CSAT_B_O_RIF_2", "UK3CB_CSAT_B_O_MK", "UK3CB_CSAT_B_O_LMG", "UK3CB_CSAT_B_O_MG", "UK3CB_CSAT_B_O_AR"];
private _emptySeats = _veh emptyPositions "Cargo";

for "_i" from 1 to _emptySeats do {
	private _unit = _group createUnit [selectRandom _unitTypes, [0,0,0], [], 0, "CARGO"];

	if ((objectParent _unit) isNotEqualTo _veh) then {
		_unit assignAsCargo _veh;
		_unit moveInCargo _veh;
	};
};
