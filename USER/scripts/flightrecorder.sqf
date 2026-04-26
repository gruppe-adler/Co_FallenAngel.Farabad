params ["_object"];

_object addAction
[
	"Collect IFF Module",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script

        deleteVehicle _target;

        ["IFF Module picked up."] remoteExec ["CBA_fnc_notify"];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true",		// condition
	2.5,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];