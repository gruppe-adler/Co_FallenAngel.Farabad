/*
*   Hier können eigene Sounds eingebunden werden.
*   Ist in CfgSounds included.
*/

class arabicsong1   {
        name = "arabicsong1";
        sound[] = { "USER\sounds\arabicsong1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
    };

class arabicsong2   {
        name = "arabicsong2";
        sound[] = { "USER\sounds\arabicsong2.ogg", 2, 1, 100 };
        titles[] = {0, ""};
    };

class arabicsong3   {
        name = "arabicsong3";
        sound[] = { "USER\sounds\arabicsong3.ogg", 2, 1, 100 };
        titles[] = {0, ""};
    };


class buzz
{
    name = "buzz";
    sound[] = {"USER\sounds\buzz.ogg", 1, 1, 50};
    titles[] = {0,""};
};

class mission_001_warlord
    {
        name = "mission_001_warlord";
        sound[] = { "USER\sounds\001_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Alpha, this is Warlord. Stand by for mission brief."
        };
        duration = 3;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_002_warlord
    {
        name = "mission_002_warlord";
        sound[] = { "USER\sounds\002_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Situation. Friendly elements from Bulldog Company are currently conducting offensive operations to retake the city of Farabad. Successful seizure of Farabad collapses enemy control across the sector and allows us to establish a forward operating base for follow-on ops."
        };
        duration = 15;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_003_warlord
    {
        name = "mission_003_warlord";
        sound[] = { "USER\sounds\003_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Majority of our assets are committed. You are the only uncommitted maneuver element in the AO. Therefore, you will function as theater QRF. Expect tasking to shift rapidly."
        };
        duration = 10;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_004_warlord
    {
        name = "mission_004_warlord";
        sound[] = { "USER\sounds\004_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Initial tasking: Port Farabad. Friendly elements hold the port but are stretched thin on the perimeter and do not have manpower to run inspections. Port Farabad is our primary logistics hub for this entire operation, nothing moves in or out of the region without it."
        };
        duration = 14;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_005_warlord
    {
        name = "mission_005_warlord";
        sound[] = { "USER\sounds\005_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Your primary task on station is checkpoint operations. Inspect all transports transiting the port: inbound cargo, outbound cargo, crew. Assume nothing. We have credible intel that hostile elements may attempt infiltration through civilian shipping."
        };
        duration = 15;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_006_warlord
    {
        name = "mission_006_warlord";
        sound[] = { "USER\sounds\006_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Wolfpack will insert at the port LZ and RTB after drop-off. Rules of engagement are standard: PID before you engage, minimize civilian exposure. Further tasking will follow. Warlord out."
        };
        duration = 12;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_007_warlord
    {
        name = "mission_007_warlord";
        sound[] = { "USER\sounds\007_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Wolfpack, Warlord. New tasking."
        };
        duration = 2;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_008_warlord
    {
        name = "mission_008_warlord";
        sound[] = { "USER\sounds\008_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Maritime radar is tracking an unidentified fishing vessel, inbound to Port Farabad. Vessel is currently approximately 500 meters south of the village of Karkanak. Vessel has not responded to hails on maritime frequencies."
        };
        duration = 13;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_009_warlord
    {
        name = "mission_009_warlord";
        sound[] = { "USER\sounds\009_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Your task: overflight and visual inspection. Confirm or deny hostile personnel, weapons, or suspicious cargo on deck. Visual sweep only, do not attempt a boarding."
        };
        duration = 10;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_010_warlord
    {
        name = "mission_010_warlord";
        sound[] = { "USER\sounds\010_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "If the vessel displays hostile intent, you are cleared to engage. Otherwise, observe and report."
        };
        duration = 6;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_010b_warlord {
        name = "mission_010b_warlord";
        sound[] = { "USER\sounds\010b_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Wolfpack, Warlord. Good copy. Vessel inspected, nothing actionable found. Doesn't mean the intel was wrong — means we didn't find it, or it wasn't there. Either way, you did your job.  Break off and RTB to the carrier. Stand by for further tasking on arrival. Warlord out."
        };
        duration = 18;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_011_warlord
    {
        name = "mission_011_warlord";
        sound[] = { "USER\sounds\011_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Alpha, monitor and continue checkpoint operations. Warlord out."
        };
        duration = 3;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_012_bulldog_6
    {
        name = "mission_012_bulldog_6";
        sound[] = { "USER\sounds\012_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, " Warlord, Bulldog-6. Troops in contact, troops in contact, grid 049054. Enemy armor, danger close, request immediate CAS, over."
        };
        duration = 12;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_013_warlord
    {
        name = "mission_013_warlord";
        sound[] = { "USER\sounds\013_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Bulldog-6, Warlord. Good copy. Hawg 2-1 is inbound your position, checking in on this net in figures 2. Warlord out."
        };
        duration = 7;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_014_hawg_2_1
    {
        name = "mission_014_hawg_2_1";
        sound[] = { "USER\sounds\014_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Bulldog-6, Hawg 2-1, checking in as fragged. How copy?"
        };
        duration = 4;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_015_bulldog_6
    {
        name = "mission_015_bulldog_6";
        sound[] = { "USER\sounds\015_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1, Bulldog-6, Lima Charlie. Send your check-in."
        };
        duration = 4;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_016_hawg_2_1
    {
        name = "mission_016_hawg_2_1";
        sound[] = { "USER\sounds\016_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1, single-ship A-10C, posit one-five miles south, cherubs one-three, playtime one plus zero-zero. Ordnance: two by GBU-38, six by Mark-82, two AGM-65 Delta, full gun. Abort code in the clear: Saturn. Ready for situation update."
        };
        duration = 21;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_017_bulldog_6
    {
        name = "mission_017_bulldog_6";
        sound[] = { "USER\sounds\017_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1, Bulldog-6. SITREP as follows. Friendlies, reinforced squad, pinned behind a stone wall in the residential district on the northeast side of the block, marked with VS-17 panel. Enemy, one BMP-2 plus dismounts, stationary in the open three hundred meters northeast of friendlies, clear of structures, turret oriented southwest."
        };
        duration = 22;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_018_bulldog_6
    {
        name = "mission_018_bulldog_6";
        sound[] = { "USER\sounds\018_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Game plan: Type 2 in effect, single attack, guns only, danger close, initials Romeo Golf Bravo. Advise when ready for nine-line."
        };
        duration = 10;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_019_hawg_2_1
    {
        name = "mission_019_hawg_2_1";
        sound[] = { "USER\sounds\019_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1 copies Type 2, single attack, guns only, danger close, initials Romeo Golf Bravo. Ready to copy."
        };
        duration = 7;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_020_bulldog_6
    {
        name = "mission_020_bulldog_6";
        sound[] = { "USER\sounds\020_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "IP Checkpoint Alpha, heading three-one-five, offset left, distance two, target elevation two-zero feet, target description BMP-2 stationary in the open, target location grid 052055, mark type Willy Pete, friendlies three hundred meters southwest behind stone wall in residential district, marked VS-17 panel, egress south to Checkpoint Bravo. Remarks: final attack heading three-one-zero to three-two-zero, guns only, danger close, time on target your discretion. How copy, over."
        };
        duration = 38;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_021_hawg_2_1
    {
        name = "mission_021_hawg_2_1";
        sound[] = { "USER\sounds\021_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1 copies. Target elevation two-zero feet, target grid 052055. Restrictions: danger close, friendlies three hundred meters southwest behind wall marked VS-17 panel, final attack heading three-one-zero to three-two-zero."
        };
        duration = 18;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_022_bulldog_6
    {
        name = "mission_022_bulldog_6";
        sound[] = { "USER\sounds\022_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Good read-back. Call IP inbound."
        };
        duration = 2;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_023_hawg_2_1
    {
        name = "mission_023_hawg_2_1";
        sound[] = { "USER\sounds\023_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1 is IP inbound."
        };
        duration = 2;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_024_hawg_2_1
    {
        name = "mission_024_hawg_2_1";
        sound[] = { "USER\sounds\024_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1, tally target, captured. Single BMP, in the open, on bare ground northeast of the city."
        };
        duration = 7;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_025_bulldog_6
    {
        name = "mission_025_bulldog_6";
        sound[] = { "USER\sounds\025_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Good tally. Confirm visual on friendlies — two blocks southwest of target, VS-17 panel on the east side of the residential block."
        };
        duration = 8;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_026_hawg_2_1
    {
        name = "mission_026_hawg_2_1";
        sound[] = { "USER\sounds\026_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Visual friendlies, VS-17 panel in sight."
        };
        duration = 3;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_027_bulldog_6
    {
        name = "mission_027_bulldog_6";
        sound[] = { "USER\sounds\027_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Good visual. Hawg 2-1, call in with direction."
        };
        duration = 3;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_028_hawg_2_1
    {
        name = "mission_028_hawg_2_1";
        sound[] = { "USER\sounds\028_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1, in from the southea—"
        };
        duration = 2;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_029_hawg_2_1
    {
        name = "mission_029_hawg_2_1";
        sound[] = { "USER\sounds\029_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "MAYDAY, MAYDAY, MAYDAY — Hawg 2-1 is hit! SAM impact left engine, I've lost number one, I've got fire warning!"
        };
        duration = 7;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_030_bulldog_6
    {
        name = "mission_030_bulldog_6";
        sound[] = { "USER\sounds\030_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1, Bulldog-6, copy emergency, cleared out of my airspace. Squawk emergency, good luck."
        };
        duration = 6;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_031_hawg_2_1
    {
        name = "mission_031_hawg_2_1";
        sound[] = { "USER\sounds\031_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, " Hawg 2-1 squawking seven-seven-zero-zero. Losing hydraulics, she's not responding, I'm heading for the mountains.  If I lose her, I'm punching out over the high ground. Hawg 2-1."
        };
        duration = 11;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_032_hawg_2_1
    {
        name = "mission_032_hawg_2_1";
        sound[] = { "USER\sounds\032_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1, MAYDAY, MAYDAY fire's out of control, ejecting, ejecting, ejecti—"
        };
        duration = 5;
        avatar = "user\rscMessage\hawg_up.paa";
        object = "Hawg";
    };

    class mission_033_bulldog_6
    {
        name = "mission_033_bulldog_6";
        sound[] = { "USER\sounds\033_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Warlord, Bulldog-6, FLASH traffic. Hawg 2-1 is down, I say again, Hawg 2-1 is down. Aircraft broke up post-SAM impact, one good chute observed. Impact vicinity northern half of grid 0705. No visual on pilot post-canopy, over."
        };
        duration = 19;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_034_warlord
    {
        name = "mission_034_warlord";
        sound[] = { "USER\sounds\034_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Bulldog-6, Warlord. Understood. Warlord is tasking QRF for personnel recovery. Continue your mission. Warlord out."
        };
        duration = 7;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_035_warlord
    {
        name = "mission_035_warlord";
        sound[] = { "USER\sounds\035_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Alpha, Wolfpack, this is Warlord. Priority tasking, break off current operations."
        };
        duration = 5;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_036_warlord
    {
        name = "mission_036_warlord";
        sound[] = { "USER\sounds\036_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "We have a downed pilot. Hawg 2-1, A-10, shot down by enemy surface-to-air. Last known location, northern half of grid 0705. One good chute observed, pilot status unknown."
        };
        duration = 12;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_037_warlord
    {
        name = "mission_037_warlord";
        sound[] = { "USER\sounds\037_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Alpha, mission is personnel recovery. Locate the wreckage, locate the pilot. Critical task: recover the aircraft's IFF transponder. That device cannot, I say again, cannot fall into enemy hands. If you cannot recover, you will destroy it in place with demolitions."
        };
        duration = 16;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_038_warlord
    {
        name = "mission_038_warlord";
        sound[] = { "USER\sounds\038_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Be advised, the SAM site that engaged Hawg 2-1 is still active. Grid location unknown at this time."
        };
        duration = 6;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_039_warlord
    {
        name = "mission_039_warlord";
        sound[] = { "USER\sounds\039_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Wolfpack, fly nap-of-the-earth. Stay masked behind the mountain ridges for your entire ingress. Do not, I say again, do not expose yourself on the ridgelines until the SAM threat is neutralized."
        };
        duration = 10;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_040_warlord
    {
        name = "mission_040_warlord";
        sound[] = { "USER\sounds\040_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Execute. Warlord out."
        };
        duration = 2;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_041_bulldog_6
    {
        name = "mission_041_bulldog_6";
        sound[] = { "USER\sounds\041_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Warlord, Bulldog-6. I have eyes-on the SAM site that engaged Hawg 2-1. SA-class TEL with associated radar vehicle and two security vehicles, stationary in the open, grid 040053. Requesting surface-to-surface fires from Neptune for target destruction, over."
        };
        duration = 21;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_042_warlord
    {
        name = "mission_042_warlord";
        sound[] = { "USER\sounds\042_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Bulldog-6, Warlord. Stand by."
        };
        duration = 2;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_043_warlord
    {
        name = "mission_043_warlord";
        sound[] = { "USER\sounds\043_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Bulldog-6, Warlord. Fires request approved. Neptune will execute with one TLAM, unitary warhead. You are cleared to coordinate direct with Neptune on this net for spotting and BDA. Neptune, Warlord — you're cleared to engage the target passed by Bulldog-6, on his command. Warlord out."
        };
        duration = 16;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_044_bulldog_6
    {
        name = "mission_044_bulldog_6";
        sound[] = { "USER\sounds\044_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Neptune, Bulldog-6. Fire mission, grid, over."
        };
        duration = 3;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_045_neptune
    {
        name = "mission_045_neptune";
        sound[] = { "USER\sounds\045_neptune.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Bulldog-6, Neptune. Send your mission, over."
        };
        duration = 2;
        avatar = "user\rscMessage\neptune.paa";
        object = "Neptune";
    };

    class mission_046_bulldog_6
    {
        name = "mission_046_bulldog_6";
        sound[] = { "USER\sounds\046_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Fire mission. Grid 040053. Direction 4800 mils. SA-class surface-to-air launcher with radar vehicle and two security vehicles, stationary in the open. One TLAM, unitary. At my command, over."
        };
        duration = 17;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_047_neptune
    {
        name = "mission_047_neptune";
        sound[] = { "USER\sounds\047_neptune.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Neptune reads back. Fire mission grid 040053, direction 4800 mils, SAM launcher with radar and security in the open, one TLAM unitary, at your command, over."
        };
        duration = 12;
        avatar = "user\rscMessage\neptune.paa";
        object = "Neptune";
    };

    class mission_048_bulldog_6
    {
        name = "mission_048_bulldog_6";
        sound[] = { "USER\sounds\048_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Read-back correct, out."
        };
        duration = 2;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_049_neptune
    {
        name = "mission_049_neptune";
        sound[] = { "USER\sounds\049_neptune.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Bulldog-6, Neptune. Ready, over."
        };
        duration = 2;
        avatar = "user\rscMessage\neptune.paa";
        object = "Neptune";
    };

    class mission_050_bulldog_6
    {
        name = "mission_050_bulldog_6";
        sound[] = { "USER\sounds\050_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Neptune, Bulldog-6. No friendlies within half a klick of target. Fire, over."
        };
        duration = 6;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_051_neptune
    {
        name = "mission_051_neptune";
        sound[] = { "USER\sounds\051_neptune.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Shot, over. Time of flight figures three-zero seconds."
        };
        duration = 4;
        avatar = "user\rscMessage\neptune.paa";
        object = "Neptune";
    };

    class mission_052_bulldog_6
    {
        name = "mission_052_bulldog_6";
        sound[] = { "USER\sounds\052_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Shot, out."
        };
        duration = 3;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_053_neptune
    {
        name = "mission_053_neptune";
        sound[] = { "USER\sounds\053_neptune.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Splash, over."
        };
        duration = 3;
        avatar = "user\rscMessage\neptune.paa";
        object = "Neptune";
    };

    class mission_054_bulldog_6
    {
        name = "mission_054_bulldog_6";
        sound[] = { "USER\sounds\054_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Splash, out. Stand by for BDA."
        };
        duration = 3;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_055_bulldog_6
    {
        name = "mission_055_bulldog_6";
        sound[] = { "USER\sounds\055_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Neptune, Bulldog-6. End of mission. Target destroyed — launcher and radar vehicle are scrap, two secondary explosions confirm ordnance cook-off. Good effect, over."
        };
        duration = 12;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_056_neptune
    {
        name = "mission_056_neptune";
        sound[] = { "USER\sounds\056_neptune.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Neptune copies end of mission, target destroyed. Good hunting, Bulldog. Neptune out."
        };
        duration = 6;
        avatar = "user\rscMessage\neptune.paa";
        object = "Neptune";
    };

    class mission_057_warlord
    {
        name = "mission_057_warlord";
        sound[] = { "USER\sounds\057_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Wolfpack, Warlord. Be advised, SAM threat has been neutralized by naval fires. You are cleared to resume standard flight profile. Climb and proceed as required. Warlord out."
        };
        duration = 10;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_058_hawg_2_1
    {
        name = "mission_058_hawg_2_1";
        sound[] = { "USER\sounds\058_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Any station, any station, this is Hawg 2-1, transmitting in the blind on Guard."
        };
        duration = 7;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_059_hawg_2_1
    {
        name = "mission_059_hawg_2_1";
        sound[] = { "USER\sounds\059_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Survival radio took shrapnel on ejection. Battery is cracked — I've got maybe twenty percent. Keeping transmissions short."
        };
        duration = 9;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_060_hawg_2_1
    {
        name = "mission_060_hawg_2_1";
        sound[] = { "USER\sounds\060_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, " I am on the ground, mobile, injured but ambulatory. Enemy patrols sweeping the crash site and working outward. I can hear vehicles."
        };
        duration = 10;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_061_hawg_2_1
    {
        name = "mission_061_hawg_2_1";
        sound[] = { "USER\sounds\061_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, " Moving to a mining complex at my location, signs read Shen Yak. I'll hole up inside. Requesting immediate evac. Found blasting charges en route — if they find the entrance, I'll drop the tunnel behind me and find another way out."
        };
        duration = 15;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_062_hawg_2_1
    {
        name = "mission_062_hawg_2_1";
        sound[] = { "USER\sounds\062_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Going dark to conserve battery. Will transmit when I can. Hawg 2-1, out."
        };
        duration = 7;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_063_hawg_2_1
    {
        name = "mission_063_hawg_2_1";
        sound[] = { "USER\sounds\063_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Any station, any station, this is Hawg 2-1, transmitting in the blind."
        };
        duration = 5;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_064_hawg_2_1
    {
        name = "mission_064_hawg_2_1";
        sound[] = { "USER\sounds\064_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "I'm out of the mine. Couldn't transmit underground, rock killed the signal."
        };
        duration = 4;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_065_hawg_2_1
    {
        name = "mission_065_hawg_2_1";
        sound[] = { "USER\sounds\065_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Found an abandoned civilian pickup in one of the service tunnels, hot-wired it, drove through the mine system. My GPS beacon pings grid 036085."
        };
        duration = 12;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_066_hawg_2_1
    {
        name = "mission_066_hawg_2_1";
        sound[] = { "USER\sounds\066_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, " I have a problem. I'm sitting in the vehicle approximately fifty meters short of the exit. I can see hostiles dug in at the mouth, fire-team plus, at least one crew-served. They figured out where the tunnel comes out. I cannot punch through alone."
        };
        duration = 18;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_067_hawg_2_1
    {
        name = "mission_067_hawg_2_1";
        sound[] = { "USER\sounds\067_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "If anyone is in range, I need a pickup at my beacon. Going dark again. Hawg 2-1, out."
        };
        duration = 7;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_068_hawg_2_1
    {
        name = "mission_068_hawg_2_1";
        sound[] = { "USER\sounds\068_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Hawg 2-1, in the blind, in the blind, I am compromised! I am compromised!"
        };
        duration = 5;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_069_hawg_2_1
    {
        name = "mission_069_hawg_2_1";
        sound[] = { "USER\sounds\069_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "They spotted me! I'm breaking out, I'm in the truck, two technicals on my six, they are on my bumper, I cannot shake them!"
        };
        duration = 7;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_070_hawg_2_1
    {
        name = "mission_070_hawg_2_1";
        sound[] = { "USER\sounds\070_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, " Alpha, Wolfpack, if you are hearing this, I need you here ASAP!"
        };
        duration = 6;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_071_hawg_2_1
    {
        name = "mission_071_hawg_2_1";
        sound[] = { "USER\sounds\071_hawg_2_1.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Do — do not engage the lead vehicle, lead vehicle is me, I say again, the LEAD vehicle is me! Everything behind me is hostile! Hawg 2-1, out!"
        };
        duration = 13;
        avatar = "user\rscMessage\hawg_down.paa";
        object = "Hawg";
    };

    class mission_072_warlord
    {
        name = "mission_072_warlord";
        sound[] = { "USER\sounds\072_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Alpha, Wolfpack, this is Warlord. Outstanding work. Hawg 2-1 is back in friendly hands. That's a pilot who goes home because of what you did today. Well done, all elements."
        };
        duration = 9;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_073_warlord
    {
        name = "mission_073_warlord";
        sound[] = { "USER\sounds\073_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "RTB to the carrier for refit, refuel, and further tasking. Hand off Hawg 2-1 to medical on arrival. Warlord out."
        };
        duration = 7;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_074_warlord
    {
        name = "mission_074_warlord";
        sound[] = { "USER\sounds\074_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Alpha, Wolfpack, this is Warlord. I've received the report that Hawg 2-1 did not make it."
        };
        duration = 5;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_075_warlord
    {
        name = "mission_075_warlord";
        sound[] = { "USER\sounds\075_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Understood that you reached him, and understood the circumstances. You did everything that could be done out there."
        };
        duration = 5;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_076_warlord
    {
        name = "mission_076_warlord";
        sound[] = { "USER\sounds\076_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "RTB to the carrier. Mortuary affairs will meet the bird on the deck. Refit, refuel, and stand by for further tasking. Warlord out."
        };
        duration = 7;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_077_bulldog_6
    {
        name = "mission_077_bulldog_6";
        sound[] = { "USER\sounds\077_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Alpha, Bulldog-6, transmitting in the blind."
        };
        duration = 3;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_078_bulldog_6
    {
        name = "mission_078_bulldog_6";
        sound[] = { "USER\sounds\078_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Bulldog is decisively engaged in the central district of Farabad. SIGINT just passed me a reinforced enemy platoon maneuvering on my southern flank. If they set up, they will roll us up. I do not have the combat power to refuse my flank and hold the fight in the north."
        };
        duration = 16;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_079_bulldog_6
    {
        name = "mission_079_bulldog_6";
        sound[] = { "USER\sounds\079_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Pre-assault intel identified a covered infiltration route. Old sewage outflow, access point grid 045043. It should terminate right next to the enemy element staging south of my position."
        };
        duration = 13;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_080_bulldog_6
    {
        name = "mission_080_bulldog_6";
        sound[] = { "USER\sounds\080_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "My ask: infiltrate via the sewer, push north through the district, hit them in the rear before they step off. Catch them from behind and we hold the city."
        };
        duration = 9;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_081_bulldog_6
    {
        name = "mission_081_bulldog_6";
        sound[] = { "USER\sounds\081_bulldog_6.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "I know you did not sign up to be my every-problem button today, but you are the only card I have left. Good hunting. Bulldog-6 out."
        };
        duration = 9;
        avatar = "user\rscMessage\bulldog.paa";
        object = "Bulldog";
    };

    class mission_081b_warlord
    {
        name = "mission_081b_warlord";
        sound[] = { "USER\sounds\081b_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, " Bulldog-6, Warlord. Copy all. Wolfpack — you have your tasking. Get into that sewer, push north, and hit them before they set. Bulldog holds — you make sure of it."
        };
        duration = 9;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

     class mission_082_warlord
    {
        name = "mission_082_warlord";
        sound[] = { "USER\sounds\082_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "All elements, Warlord. Mission complete. Hawg 2-1 is recovered, the IFF is secure, and the sector holds. Alpha, Wolfpack — that is a full-cycle operation: port security, aerial recce, personnel recovery. All tasks complete, all objectives met. RTB to the carrier. Both elements. Refit, refuel, debrief on arrival."
        };
        duration = 24;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

    class mission_091_warlord
{
    name = "mission_091_warlord";
    sound[] = { "USER\sounds\091_warlord.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Wolfpack, Warlord. We have a situation developing independent of your current tasking. Local informant, grid 038100. He has been providing HUMINT to our network for the past six months. He is being threatened — situation is deteriorating fast. Your task: extract him from grid 038100 and ferry him to our carrier. Keep him alive. If that man dies, we lose the network. Move now — he does not have time. Warlord out. "
    };
    duration = 30;
    avatar = "user\rscMessage\warlord.paa";
    object = "Warlord";
};

   class mission_091b_warlord
{
    name = "mission_091b_warlord";
    sound[] = { "USER\sounds\091b_warlord.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Wolfpack, Warlord. Good copy — informant is secure. That man is the reason we had eyes in this region. You kept the network alive today. Well done. Warlord out."
    };
    duration = 30;
    avatar = "user\rscMessage\warlord.paa";
    object = "Warlord";
};

  class mission_091c_warlord
{
    name = "mission_091c_warlord";
    sound[] = { "USER\sounds\091c_warlord.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Wolfpack, Warlord. That is on all of us. He trusted this network and we could not get to him in time. Pull back and return to the USS Freedom. We will deal with the intelligence gap later. Warlord out. "
    };
    duration = 30;
    avatar = "user\rscMessage\warlord.paa";
    object = "Warlord";
};


    class mission_092_warlord
{
    name = "mission_092_warlord";
    sound[] = { "USER\sounds\092_warlord.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Wolfpack, Warlord. Secondary tasking. Jazira Oil Refinery, grid 023061, west of Farabad. Enemy elements have occupied the facility. Could be a staging point, could be leverage — either way we cannot leave them there. Your task: enter the refinery, clear all enemy combatants, and secure the site. Do not damage the infrastructure — command wants that facility operational. Watch your angles in there. Refineries are tight, lots of cover. Expect contact at close range. Confirm when the site is clear. Warlord out."
    };
    duration = 36;
    avatar = "user\rscMessage\warlord.paa";
    object = "Warlord";
};

    class mission_092b_warlord
{
    name = "mission_092b_warlord";
    sound[] = { "USER\sounds\092b_warlord.ogg", 2, 1, 100 };
    titles[] = {0, ""};
    customsubtitle[] = {
        0, "Wolfpack, Warlord. Site secure — good work. Jazira is back in friendly hands. Command has a security element inbound to hold the facility. Your job there is done. Break off and return to the USS Freedom. Warlord out."
    };
    duration = 36;
    avatar = "user\rscMessage\warlord.paa";
    object = "Warlord";
};


     class mission_100_warlord
    {
        name = "mission_100_warlord";
        sound[] = { "USER\sounds\100_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Warlord, send it"
        };
        duration = 3;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

     class mission_101_warlord
    {
        name = "mission_101_warlord";
        sound[] = { "USER\sounds\101_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Warlord, send traffic" 
        };
        duration = 3;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

     class mission_102_warlord
    {
        name = "mission_102_warlord";
        sound[] = { "USER\sounds\102_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Warlord, make it quick" 
        };
        duration = 3;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };

     class mission_103_warlord
    {
        name = "mission_103_warlord";
        sound[] = { "USER\sounds\103_warlord.ogg", 2, 1, 100 };
        titles[] = {0, ""};
        customsubtitle[] = {
            0, "Warlord copies. Stand by." 
        };
        duration = 3;
        avatar = "user\rscMessage\warlord.paa";
        object = "Warlord";
    };



