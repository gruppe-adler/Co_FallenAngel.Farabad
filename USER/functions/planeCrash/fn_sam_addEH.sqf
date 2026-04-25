if (!isServer) exitWith {};

private _handler = 
FA_SAM addEventHandler ["Fired",
	{ 
		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

		[
			{
				params ["_projectile", "_unit"];
				
				systemChat "fired";
				private _a10 = missionNamespace getVariable ["FA_a10", objNull];
				[_projectile, _a10] call FA_fnc_guideMissile;
			},
			[_projectile, _unit],
			1
		] call CBA_fnc_waitAndExecute;
	}
];