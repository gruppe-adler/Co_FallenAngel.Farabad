params ["_box"];

if (!isServer) exitWith {};

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


private _magazines = [
    ["30Rnd_556x45_Stanag", 200],
    ["rhs_200rnd_556x45_M_SAW", 30],
    ["rhs_weap_M136", 10],
    ["SmokeShell", 40],
    ["1Rnd_SmokeRed_Grenade_shell", 30],
    ["1Rnd_Smoke_Grenade_shell", 30],
    ["1Rnd_SmokeBlue_Grenade_shell", 30],
    ["HandGrenade", 30]
];

{	
	_x params ["_type", "_number"];

	_box addMagazineCargoGlobal [_type, _number];
} forEach _magazines;
