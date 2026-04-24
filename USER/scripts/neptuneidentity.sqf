params ["_unit"];

if (!isServer) exitWith {};

_unit setUnitLoadout [[],[],[],["UK3CB_CSAT_F_O_U_SF_JumperUniform",[]],[],[],"UK3CB_ADP_B_H_Beret","G_mas_usl_beard",[],["","","ItemRadio","gm_ge_army_conat2","ItemWatch",""]];

[{
	params ["_unit"];
	[_unit, "Neptune"] remoteExec ["setIdentity", 0, _unit];
}, [_unit], 5] call CBA_fnc_waitAndExecute;