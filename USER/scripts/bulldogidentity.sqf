params ["_unit"];

if (!isServer) exitWith {};

_unit setUnitLoadout [[],[],[],["rhs_uniform_acu_ucp",[["FirstAidKit",1],["rhsusf_ANPVS_14",1],["rhsusf_patrolcap_ucp",1]]],["rhsusf_iotv_ucp_Squadleader",[["rhs_mag_m18_red",1,1],["rhs_mag_m18_purple",1,1],["rhs_mag_m18_yellow",1,1],["Chemlight_red",2,1]]],[],"rhsusf_ach_helmet_headset_ess_ucp","",["rhsusf_bino_m24","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
[{
	params ["_unit"];
	[_unit, "Warlord"] remoteExec ["setIdentity", 0, _unit];
}, [_unit], 5] call CBA_fnc_waitAndExecute;