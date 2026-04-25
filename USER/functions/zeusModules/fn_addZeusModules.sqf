["Fallen Angel", "Init A10 crash", {
	params ["_position", "_object"];

	[] remoteExec ["FA_fnc_handleCrash", [0, -2] select isDedicated];
}] call zen_custom_modules_fnc_register;