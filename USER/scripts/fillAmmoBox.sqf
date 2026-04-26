params ["_box"];

if (!isServer) exitWith {};

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


private _magazines = [
    ["30Rnd_556x45_Stanag", 50],
    ["rhs_200rnd_556x45_M_SAW", 10],
    ["rhs_weap_M136", 6],
    ["SmokeShell", 10],
    ["1Rnd_SmokeRed_Grenade_shell", 10],
    ["1Rnd_Smoke_Grenade_shell", 10],
    ["1Rnd_SmokeBlue_Grenade_shell", 10],
    ["HandGrenade", 10]
];

{	
	_x params ["_type", "_number"];

	_box addMagazineCargoGlobal [_type, _number];
} forEach _magazines;
