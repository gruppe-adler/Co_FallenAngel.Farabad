params ["_unit"];

if (!isServer) exitWith {};

_unit setUnitLoadout [[],[],[],["UK3CB_CW_US_B_LATE_U_J_Pilot_Uniform_01_NATO",[]],[],[],"H_HeadBandage_bloody_F","gm_xx_facewear_scarf_01_red",[],["","","ItemRadio","gm_ge_army_conat2","ItemWatch",""]];

[{
	params ["_unit"];
	[_unit, "Hawg"] remoteExec ["setIdentity", 0, _unit];
}, [_unit], 5] call CBA_fnc_waitAndExecute;