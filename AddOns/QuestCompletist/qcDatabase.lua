--[[

	Quest Completist - qcDatabase.lua
	Written by: Alistair Maxwell

--]]

COLOUR_DEATHKNIGHT = "|cffc41f3b"
COLOUR_DRUID = "|cffff7d0a"
COLOUR_HUNTER = "|cffabd473"
COLOUR_MAGE = "|cff69ccf0"
COLOUR_PALADIN = "|cfff58cba"
COLOUR_PRIEST = "|cffffffff"
COLOUR_ROGUE = "|cfffff569"
COLOUR_SHAMAN = "|cff0070de"
COLOUR_WARLOCK = "|cff9482c9"
COLOUR_WARRIOR = "|cffc79c6e"

qcContinents = {

	{1, "Kalimdor"},
	{2, "Eastern Kingdoms"},
	{3, "Outland"},
	{4, "Northrend"},
	{5, "The Maelstrom"},

}
qcContinentZones = {

	{1, 1, "Ahn'Qiraj: The Fallen Kingdom", 772},
	{1, 3, "Ashenvale", 43},
	{1, 4, "Azshara", 181},
	{1, 5, "Azuremyst Isle", 464},
	{1, 6, "Bloodmyst Isle", 476},
	{1, 7, "Darkshore", 42},
	{1, 8, "Darnassus", 381},
	{1, 9, "Desolace", 101},
	{1, 10, "Durotar", 4},
	{1, 11, "Dustwallow Marsh", 141},
	{1, 12, "Felwood", 182},
	{1, 13, "Feralas", 121},
	{1, 14, "Moonglade", 241},
	{1, 15, "Mount Hyjal", 606},
	{1, 16, "Mulgore", 9},
	{1, 17, "Northern Barrens", 11},
	{1, 18, "Orgrimmar", 321},
	{1, 19, "Silithus", 261},
	{1, 20, "Southern Barrens", 607},
	{1, 21, "Stonetalon Mountains", 81},
	{1, 22, "Tanaris", 161},
	{1, 23, "Teldrassil", 41},
	{1, 24, "The Exodar", 471},
	{1, 25, "Thousand Needles", 61},
	{1, 26, "Thunder Bluff", 362},
	{1, 27, "Uldum", 720},
	{1, 28, "Un'Goro Crater", 201},
	{1, 29, "Winterspring", 281},
	{2, 30, "Abyssal Depths", 614},
	{2, 31, "Arathi Highlands", 16},
	{2, 32, "Badlands", 17},
	{2, 33, "Blasted Lands", 19},
	{2, 34, "Burning Steppes", 29},
	{2, 35, "Deadwind Pass", 32},
	{2, 36, "Dun Morogh", 27},
	{2, 37, "Duskwood", 34},
	{2, 38, "Eastern Plaguelands", 23},
	{2, 39, "Elwynn Forest", 30},
	{2, 40, "Eversong Woods", 462},
	{2, 41, "Ghostlands", 463},
	{2, 42, "Hillsbrad Foothills", 24},
	{2, 43, "Ironforge", 341},
	{2, 44, "Isle of Quel'Danas", 499},
	{2, 45, "Kelp'thar Forest", 610},
	{2, 46, "Loch Modan", 35},
	{2, 47, "Northern Stranglethorn", 37},
	{2, 48, "Redridge Mountains", 36},
	{2, 49, "Ruins of Gilneas", 684},
	{2, 50, "Ruins of Gilneas City", 685},
	{2, 51, "Searing Gorge", 28},
	{2, 52, "Shimmering Expanse", 615},
	{2, 53, "Silvermoon City", 480},
	{2, 54, "Silverpine Forest", 21},
	{2, 55, "Stormwind City", 301},
	{2, 56, "Stranglethorn Vale", 689},
	{2, 57, "Swamp of Sorrows", 38},
	{2, 58, "The Cape of Stranglethorn", 673},
	{2, 59, "The Hinterlands", 26},
	{2, 60, "Tirisfal Glades", 20},
	{2, 61, "Tol Barad", 708},
	{2, 62, "Tol Barad Peninsula", 709},
	{2, 63, "Twilight Highlands", 700},
	{2, 64, "Undercity", 382},
	{2, 65, "Vashj'ir", 613},
	{2, 66, "Western Plaguelands", 22},
	{2, 67, "Westfall", 39},
	{2, 68, "Wetlands", 40},
	{3, 69, "Blade's Edge Mountains", 475},
	{3, 70, "Hellfire Peninsula", 465},
	{3, 71, "Nagrand", 477},
	{3, 72, "Netherstorm", 479},
	{3, 73, "Shadowmoon Valley", 473},
	{3, 74, "Shattrath City", 481},
	{3, 75, "Terokkar Forest", 478},
	{3, 76, "Zangarmarsh", 467},
	{4, 77, "Borean Tundra", 486},
	{4, 78, "Crystalsong Forest", 510},
	{4, 79, "Dalaran", 504},
	{4, 80, "Dragonblight", 488},
	{4, 81, "Grizzly Hills", 490},
	{4, 82, "Howling Fjord", 491},
	{4, 83, "Hrothgar's Landing", 541},
	{4, 84, "Icecrown", 492},
	{4, 85, "Sholazar Basin", 493},
	{4, 86, "The Storm Peaks", 495},
	{4, 87, "Wintergrasp", 501},
	{4, 88, "Zul'Drak", 496},
	{5, 89, "Deepholm", 640},
	{5, 90, "Kezan", 605},
	{5, 91, "The Lost Isles", 544},
	{5, 92, "The Maelstrom", 751},

}
qcDungeonCategories = {

	{10, "Classic"},
	{11, "The Burning Crusade"},
	{12, "Wrath of the Lich King"},
	{13, "Cataclysm"},
	{14, "Raids"},

}
qcDungeons = {

	{10, 1001, "Blackfathom Deeps"},
	{10, 1002, "Blackrock Depths"},
	{10, 1003, "Blackrock Spire"},
	{10, 1004, "Dire Maul"},
	{10, 1005, "Gnomeregan"},
	{10, 1006, "Maraudon"},
	{10, 1007, "Ragefire Chasm"},
	{10, 1008, "Razorfen Downs"},
	{10, 1009, "Razorfen Kraul"},
	{10, 1010, "Scarlet Monastery"},
	{10, 1011, "Scholomance"},
	{10, 1012, "Shadowfang Keep"},
	{10, 1013, "Stratholme"},
	{10, 1014, "Sunken Temple"},
	{10, 1015, "The Deadmines"},
	{10, 1016, "The Stockade"},
	{10, 1017, "Uldaman"},
	{10, 1018, "Wailing Caverns"},
	{10, 1019, "Zul'Farrak"},
	{11, 1020, "Auchindoun: Auchenai Crypts"},
	{11, 1021, "Auchindoun: Mana-Tombs"},
	{11, 1022, "Auchindoun: Sethekk Halls"},
	{11, 1023, "Auchindoun: Shadow Labyrinth"},
	{11, 1024, "Caverns of Time"}, --[[ Needs sorted ]]--
	{11, 1025, "Caverns of Time: Old Hillsbrad Foothills"},
	{11, 1026, "Caverns of Time: The Black Morass"},
	{11, 1027, "Coilfang Reservoir"}, --[[ Needs sorted ]]--
	{11, 1028, "Coilfang Reservoir: The Slave Pens"},
	{11, 1029, "Coilfang Reservoir: The Steamvault"},
	{11, 1030, "Coilfang Reservoir: The Underbog"},
	{11, 1031, "Hellfire Citadel: Hellfire Ramparts"},
	{11, 1032, "Hellfire Citadel: The Blood Furnace"},
	{11, 1033, "Hellfire Citadel: The Shattered Halls"},
	{11, 1034, "Magisters' Terrace"},
	{11, 1035, "Tempest Keep"}, --[[ Needs sorted ]]--
	{11, 1036, "Tempest Keep: The Arcatraz"},
	{11, 1037, "Tempest Keep: The Botanica"},
	{11, 1038, "Tempest Keep: The Mechanar"},
	{12, 1039, "Azjol-Nerub: Ahn'kahet: The Old Kingdom"},
	{12, 1040, "Azjol-Nerub: Azjol-Nerub"},
	{12, 1041, "Caverns of Time"}, --[[ Needs sorted ]]--
	{12, 1042, "Caverns of Time: The Culling of Stratholme"},
	{12, 1043, "Crusaders' Coliseum: Trial of the Champion"},
	{12, 1044, "Drak'Tharon Keep"},
	{12, 1045, "Gundrak"},
	{12, 1046, "Icecrown Citadel: Halls of Reflection"},
	{12, 1047, "Icecrown Citadel: Pit of Saron"},
	{12, 1048, "Icecrown Citadel: The Forge of Souls"},
	{12, 1049, "The Nexus: The Nexus"},
	{12, 1050, "The Nexus: The Oculus"},
	{12, 1051, "The Violet Hold"},
	{12, 1052, "Ulduar: Halls of Lightning"},
	{12, 1053, "Ulduar: Halls of Stone"},
	{12, 1054, "Utgarde Keep: Utgarde Keep"},
	{12, 1055, "Utgarde Keep: Utgarde Pinnacle"},
	{13, 1056, "Abyssal Maw: Throne of the Tides"},
	{13, 1057, "Blackrock Mountain: Blackrock Caverns"},
	{13, 1058, "Grim Batol"},
	{13, 1059, "Halls of Origination"},
	{13, 1060, "Lost City of the Tol'vir"},
	{13, 1061, "The Stonecore"},
	{13, 1062, "The Vortex Pinnacle"},
	{14, 1063, "Baradin Hold"},
	{14, 1064, "Black Temple"},
	{14, 1065, "Blackrock Mountain: Blackwing Descent"},
	{14, 1066, "Blackwing Lair"},
	{14, 1067, "Caverns of Time: Hyjal Summit"},
	{14, 1068, "Coilfang Reservoir: Serpentshrine Cavern"},
	{14, 1069, "Crusaders' Coliseum: Trial of the Crusader"},
	{14, 1070, "Gruul's Lair"},
	{14, 1071, "Hellfire Citadel: Magtheridon's Lair"},
	{14, 1072, "Icecrown Citadel"},
	{14, 1073, "Karazhan"},
	{14, 1074, "Molten Core"},
	{14, 1075, "Naxxramas"},
	{14, 1076, "Onyxia's Lair"},
	{14, 1077, "Ruins of Ahn'Qiraj"},
	{14, 1078, "Sunwell Plateau"},
	{14, 1079, "Tempest Keep: The Eye"},
	{14, 1080, "Temple of Ahn'Qiraj"},
	{14, 1081, "The Bastion of Twilight"},
	{14, 1082, "The Nexus: The Eye of Eternity"},
	{14, 1083, "Throne of the Four Winds"},
	{14, 1084, "Ulduar"},
	{14, 1085, "Vault of Archavon"},
	{14, 1086, "Wyrmrest Temple: The Obsidian Sanctum"},
	{14, 1087, "Wyrmrest Temple: The Ruby Sanctum"},
	{14, 1088, "Zul'Aman"},
	{14, 1089, "Zul'Gurub"},

}
qcClasses = {

	{20, 2001, "Death Knight", COLOUR_DEATHKNIGHT},
	{20, 2002, "Druid", COLOUR_DRUID},
	{20, 2003, "Hunter", COLOUR_HUNTER},
	{20, 2004, "Mage", COLOUR_MAGE},
	{20, 2005, "Paladin", COLOUR_PALADIN},
	{20, 2006, "Priest", COLOUR_PRIEST},
	{20, 2007, "Rogue", COLOUR_ROGUE},
	{20, 2008, "Shaman", COLOUR_SHAMAN},
	{20, 2009, "Warlock", COLOUR_WARLOCK},
	{20, 2010, "Warrior", COLOUR_WARRIOR},

}
qcMiscellaneousCategories = {

	{30, "Professions"},
	{31, "World Events"},
	{32, "Battlegrounds"},
	{33, "Specials"},

}
qcProfessions = {

	{30, 3001, "Alchemy"},
	{30, 3002, "Archaeology"},
	{30, 3003, "Blacksmithing"},
	{30, 3004, "Cooking"},
	{30, 3005, "Engineering"},
	{30, 3006, "First Aid"},
	{30, 3007, "Fishing"},
	{30, 3008, "Herbalism"},
	{30, 3009, "Inscription"},
	{30, 3010, "Jewelcrafting"},
	{30, 3011, "Leatherworking"},
	{30, 3012, "Tailoring"},

}
qcWorldEvents = {

	{31, 4001, "Brewfest"},
	{31, 4002, "Children's Week"},
	{31, 4003, "Darkmoon Faire"},
	{31, 4004, "Day of the Dead"},
	{31, 4005, "Hallow's End"},
	{31, 4006, "Harvest Festival"},
	{31, 4007, "Love is in the Air"},
	{31, 4008, "Lunar Festival"},
	{31, 4009, "Midsummer Fire Festival"},
	{31, 4010, "New Year's Eve"},
	{31, 4011, "Noblegarden"},
	{31, 4012, "Pilgrim's Bounty"},
	{31, 4013, "Winter Veil"},
	{31, 4014, "Tournament"},

}
qcBattlegrounds = {

	{32, 5001, "Battlegrounds"},
	{32, 5002, "Alterac Valley"},
	{32, 5003, "Arathi Basin"},
	{32, 5004, "Eye of the Storm"},
	{32, 5005, "Isle of Conquest"},
	{32, 5006, "Strand of the Ancients"},
	{32, 5007, "The Battle for Gilneas"},
	{32, 5008, "Twin Peaks"},
	{32, 5009, "Warsong Gulch"},

}
qcSpecials = {

	--{33, -10001, "Blackmaw Hold"},
	--{33, -10002, "Epic"},
	--{33, -10003, "Dungeon Finder"},
	--{33, -10004, "Cataclysm"},
	--{33, -10005, "Legendary"},
	--{33, -10006, "Reputation"},
	{33, 99999, "FLAG Quests"},

}
qcQuestCategories = {

	{1, "Ahn'Qiraj: The Fallen Kingdom"},
	{3, "Ashenvale"},
	{4, "Azshara"},
	{5, "Azuremyst Isle"},
	{6, "Bloodmyst Isle"},
	{7, "Darkshore"},
	{8, "Darnassus"},
	{9, "Desolace"},
	{10, "Durotar"},
	{11, "Dustwallow Marsh"},
	{12, "Felwood"},
	{13, "Feralas"},
	{14, "Moonglade"},
	{15, "Mount Hyjal"},
	{16, "Mulgore"},
	{17, "Northern Barrens"},
	{18, "Orgrimmar"},
	{19, "Silithus"},
	{20, "Southern Barrens"},
	{21, "Stonetalon Mountains"},
	{22, "Tanaris"},
	{23, "Teldrassil"},
	{24, "The Exodar"},
	{25, "Thousand Needles"},
	{26, "Thunder Bluff"},
	{27, "Uldum"},
	{28, "Un'Goro Crater"},
	{29, "Winterspring"},
	{30, "Abyssal Depths"},
	{31, "Arathi Highlands"},
	{32, "Badlands"},
	{33, "Blasted Lands"},
	{34, "Burning Steppes"},
	{35, "Deadwind Pass"},
	{36, "Dun Morogh"},
	{37, "Duskwood"},
	{38, "Eastern Plaguelands"},
	{39, "Elwynn Forest"},
	{40, "Eversong Woods"},
	{41, "Ghostlands"},
	{42, "Hillsbrad Foothills"},
	{43, "Ironforge"},
	{44, "Isle of Quel'Danas"},
	{45, "Kelp'thar Forest"},
	{46, "Loch Modan"},
	{47, "Northern Stranglethorn"},
	{48, "Redridge Mountains"},
	{49, "Ruins of Gilneas"},
	{50, "Ruins of Gilneas City"},
	{51, "Searing Gorge"},
	{52, "Shimmering Expanse"},
	{53, "Silvermoon City"},
	{54, "Silverpine Forest"},
	{55, "Stormwind City"},
	{56, "Stranglethorn Vale"},
	{57, "Swamp of Sorrows"},
	{58, "The Cape of Stranglethorn"},
	{59, "The Hinterlands"},
	{60, "Tirisfal Glades"},
	{61, "Tol Barad"},
	{62, "Tol Barad Peninsula"},
	{63, "Twilight Highlands"},
	{64, "Undercity"},
	{65, "Vashj'ir"},
	{66, "Western Plaguelands"},
	{67, "Westfall"},
	{68, "Wetlands"},
	{69, "Blade's Edge Mountains"},
	{70, "Hellfire Peninsula"},
	{71, "Nagrand"},
	{72, "Netherstorm"},
	{73, "Shadowmoon Valley"},
	{74, "Shattrath City"},
	{75, "Terokkar Forest"},
	{76, "Zangarmarsh"},
	{77, "Borean Tundra"},
	{78, "Crystalsong Forest"},
	{79, "Dalaran"},
	{80, "Dragonblight"},
	{81, "Grizzly Hills"},
	{82, "Howling Fjord"},
	{83, "Hrothgar's Landing"},
	{84, "Icecrown"},
	{85, "Sholazar Basin"},
	{86, "The Storm Peaks"},
	{87, "Wintergrasp"},
	{88, "Zul'Drak"},
	{89, "Deepholm"},
	{90, "Kezan"},
	{91, "The Lost Isles"},
	{92, "The Maelstrom"},
	{1001, "Blackfathom Deeps"},
	{1002, "Blackrock Depths"},
	{1003, "Blackrock Spire"},
	{1004, "Dire Maul"},
	{1005, "Gnomeregan"},
	{1006, "Maraudon"},
	{1007, "Ragefire Chasm"},
	{1008, "Razorfen Downs"},
	{1009, "Razorfen Kraul"},
	{1010, "Scarlet Monastery"},
	{1011, "Scholomance"},
	{1012, "Shadowfang Keep"},
	{1013, "Stratholme"},
	{1014, "Sunken Temple"},
	{1015, "The Deadmines"},
	{1016, "The Stockade"},
	{1017, "Uldaman"},
	{1018, "Wailing Caverns"},
	{1019, "Zul'Farrak"},
	{1020, "Auchenai Crypts"},
	{1021, "Mana-Tombs"},
	{1022, "Sethekk Halls"},
	{1023, "Shadow Labyrinth"},
	{1024, "Caverns of Time"}, --[[ Needs sorted ]]--
	{1025, "Old Hillsbrad Foothills"},
	{1026, "The Black Morass"},
	{1027, "Coilfang Reservoir"}, --[[ Needs sorted ]]--
	{1028, "The Slave Pens"},
	{1029, "The Steamvault"},
	{1030, "The Underbog"},
	{1031, "Hellfire Ramparts"},
	{1032, "The Blood Furnace"},
	{1033, "The Shattered Halls"},
	{1034, "Magisters' Terrace"},
	{1035, "Tempest Keep"}, --[[ Needs sorted ]]--
	{1036, "The Arcatraz"},
	{1037, "The Botanica"},
	{1038, "The Mechanar"},
	{1039, "Ahn'kahet: The Old Kingdom"},
	{1040, "Azjol-Nerub"},
	{1041, "Caverns of Time"}, --[[ Needs sorted ]]--
	{1042, "The Culling of Stratholme"},
	{1043, "Trial of the Champion"},
	{1044, "Drak'Tharon Keep"},
	{1045, "Gundrak"},
	{1046, "Halls of Reflection"},
	{1047, "Pit of Saron"},
	{1048, "The Forge of Souls"},
	{1049, "The Nexus"},
	{1050, "The Oculus"},
	{1051, "The Violet Hold"},
	{1052, "Halls of Lightning"},
	{1053, "Halls of Stone"},
	{1054, "Utgarde Keep"},
	{1055, "Utgarde Pinnacle"},
	{1056, "Throne of the Tides"},
	{1057, "Blackrock Caverns"},
	{1058, "Grim Batol"},
	{1059, "Halls of Origination"},
	{1060, "Lost City of the Tol'vir"},
	{1061, "The Stonecore"},
	{1062, "The Vortex Pinnacle"},
	{1063, "Baradin Hold"},
	{1064, "Black Temple"},
	{1065, "Blackwing Descent"},
	{1066, "Blackwing Lair"},
	{1067, "Hyjal Summit"},
	{1068, "Serpentshrine Cavern"},
	{1069, "Trial of the Crusader"},
	{1070, "Gruul's Lair"},
	{1071, "Magtheridon's Lair"},
	{1072, "Icecrown Citadel"},
	{1073, "Karazhan"},
	{1074, "Molten Core"},
	{1075, "Naxxramas"},
	{1076, "Onyxia's Lair"},
	{1077, "Ruins of Ahn'Qiraj"},
	{1078, "Sunwell Plateau"},
	{1079, "The Eye"},
	{1080, "Temple of Ahn'Qiraj"},
	{1081, "The Bastion of Twilight"},
	{1082, "The Eye of Eternity"},
	{1083, "Throne of the Four Winds"},
	{1084, "Ulduar"},
	{1085, "Vault of Archavon"},
	{1086, "The Obsidian Sanctum"},
	{1087, "The Ruby Sanctum"},
	{1088, "Zul'Aman"},
	{1089, "Zul'Gurub"},
	{2001, "Death Knight"},
	{2002, "Druid"},
	{2003, "Hunter"},
	{2004, "Mage"},
	{2005, "Paladin"},
	{2006, "Priest"},
	{2007, "Rogue"},
	{2008, "Shaman"},
	{2009, "Warlock"},
	{2010, "Warrior"},
	{3001, "Alchemy"},
	{3002, "Archaeology"},
	{3003, "Blacksmithing"},
	{3004, "Cooking"},
	{3005, "Engineering"},
	{3006, "First Aid"},
	{3007, "Fishing"},
	{3008, "Herbalism"},
	{3009, "Inscription"},
	{3010, "Jewelcrafting"},
	{3011, "Leatherworking"},
	{3012, "Tailoring"},
	{4001, "Brewfest"},
	{4002, "Children's Week"},
	{4003, "Darkmoon Faire"},
	{4004, "Day of the Dead"},
	{4005, "Hallow's End"},
	{4006, "Harvest Festival"},
	{4007, "Love is in the Air"},
	{4008, "Lunar Festival"},
	{4009, "Midsummer Fire Festival"},
	{4010, "New Year's Eve"},
	{4011, "Noblegarden"},
	{4012, "Pilgrim's Bounty"},
	{4013, "Winter Veil"},
	{4014, "Tournament"},
	{5001, "Battlegrounds"},
	{5002, "Alterac Valley"},
	{5003, "Arathi Basin"},
	{5004, "Eye of the Storm"},
	{5005, "Isle of Conquest"},
	{5006, "Strand of the Ancients"},
	{5007, "The Battle for Gilneas"},
	{5008, "Twin Peaks"},
	{5009, "Warsong Gulch"},

	--[[ Special Groupings ]]--
	{5, "Ammen Vale"},				--[[ Grouped with Azuremyst Isle ]]--
	{10, "Valley of Trials"},		--[[ Grouped with Durotar ]]--
	{12, "Timbermaw Hold"},			--[[ Grouped with Felwood ]]--
	{23, "Shadowglen"},				--[[ Grouped with Teldrassil ]]--
	{36, "Coldridge Valley"},		--[[ Grouped with Dun Morogh ]]--
	{36, "Chill Breeze Valley"},	--[[ Grouped with Dun Morogh ]]--
	{55, "Stormwind Harbor"},		--[[ Grouped with Stormwind City ]]--
	{60, "Deathknell"},				--[[ Grouped with Tirisfal Glades ]]--
	{75, "Skettis"},				--[[ Grouped with Terokkar Forest ]]--
	{77, "Coldarra"},				--[[ Grouped with Borean Tundra ]]--
	{10, "Echo Isles"},				--[[ Grouped with Durotar ]]--
	{42, "Alterac Mountains"},		--[[ Grouped with Hillsbrad Foothills ]]--
	{40, "Sunstrider Isle"},		--[[ Grouped with Eversong Woods ]]--
	{48, "Redridge Canyons"},		--[[ Grouped with Redridge Mountains ]]--
	{27, "Ruins of Uldum"},			--[[ Grouped with Uldum ]]--
	{49, "Gilneas"},				--[[ Grouped with Ruins of Gilneas ]]--
	{50, "Gilneas City"},			--[[ Grouped with Ruins of Gilneas City ]]--

	--[[ Questionable ]]--
	{-10001, "Blackmaw Hold"},
	{-10002, "Epic"},
	{-10003, "Dungeon Finder"},
	{-10004, "Cataclysm"},
	{-10005, "Legendary"},
	{-10006, "Reputation"},

}
qcQuestDBv2 = {
	[2] = {
		{
			2,
			"Sharptalon's Claw",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3928,
			"Rotting Slime",
			"Ashenvale",
			72.8,
			73.3,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24677] = {
		{
			24677,
			"Flank the Forsaken",
			10,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			37876,
			"King Genn Greymane",
			"Gilneas",
			78.3,
			72.09999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8308] = {
		{
			8308,
			"Brann Bronzebeard's Lost Letter",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			nil,
			nil,
			"Silithus",
			0,
			0,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24933] = {
		{
			24933,
			"Chicken of the Desert",
			47,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38706,
			"Zeke Bootscuff",
			"Tanaris",
			55.7,
			60.8,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25061] = {
		{
			25061,
			"Land's End",
			47,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			11811,
			"Narain Soothfancy",
			"Tanaris",
			55.3,
			60.3,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25189] = {
		{
			25189,
			"Spirits Be Praised [Escort]",
			8,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			39325,
			"Grandmatron Tekla",
			"Durotar",
			40.6,
			35,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25317] = {
		{
			25317,
			"Protect the World Tree",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40289,
			"Ysera",
			"Mount Hyjal",
			62,
			24.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8692] = {
		{
			8692,
			"Cloak of Unending Life [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15500,
			"Keyl Swiftclaw",
			"Ahn'Qiraj: The Fallen Kingdom",
			59.5,
			13.9,
			772,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25701] = {
		{
			25701,
			"You Are Rakh'likh, Demon",
			57,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			7783,
			"Loramus Thalipedes",
			"Blasted Lands",
			39.3,
			35.9,
			19,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[8884] = {
		{
			8884,
			"Fish Heads, Fish Heads...",
			7,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15920,
			"Hathvelion Sungaze",
			"Eversong Woods",
			30.3,
			58.4,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26085] = {
		{
			26085,
			"Rallying the Defenders",
			10,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			nil,
			nil,
			"Dun Morogh",
			78.2,
			20.5,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26213] = {
		{
			26213,
			"Hot On the Trail: The Riverpaw Clan",
			10,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			42308,
			"Lieutenant Horatio Laine",
			"Westfall",
			60,
			19.2,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9076] = {
		{
			9076,
			"Wretched Ringleader",
			8,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15404,
			"Velendris Whitemorn",
			"Eversong Woods",
			36.3,
			66.8,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26469] = {
		{
			26469,
			"Satyr Slaying!",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3901,
			"Illiyana",
			"Ashenvale",
			86.59999999999999,
			42.9,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26597] = {
		{
			26597,
			"Stranglethorn Fever",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2486,
			"Fin Fizracket",
			"The Cape of Stranglethorn",
			41.9,
			72.90000000000001,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26725] = {
		{
			26725,
			"Guided by the Light",
			25,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			43731,
			"Sister Elsington",
			"Duskwood",
			20,
			57.8,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26981] = {
		{
			26981,
			"Whelgar's Retreat",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41415,
			"Shilah Slabchisel",
			"Wetlands",
			26.9,
			26.2,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27109] = {
		{
			27109,
			"The Warped Defender",
			43,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			44999,
			"Shen'dralar Watcher",
			"Dire Maul",
			87.3,
			52.4,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27237] = {
		{
			27237,
			"Recover the Cargo!",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23569,
			"Renn McGill",
			"Dustwallow Marsh",
			63.7,
			17.1,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27365] = {
		{
			27365,
			"A Fitting Weapon [Dungeon]",
			20,
			"Warrior",
			1,
		},
		{
			2010,
		},
		{
			3353,
			"Grezz Ragefist",
			"Orgrimmar",
			73.7,
			45.5,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27493] = {
		{
			27493,
			"Ogres & Ettins",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45658,
			"Warlord Zaela",
			"Twilight Highlands",
			45.2,
			75.3,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9716] = {
		{
			9716,
			"Disturbance at Umbrafen Lake",
			63,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17841,
			"Ysiel Windsinger",
			"Zangarmarsh",
			78.40000000000001,
			62.1,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9780] = {
		{
			9780,
			"Umbrafen Eel Filets",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18006,
			"Noraani",
			"Zangarmarsh",
			67.7,
			47.9,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27877] = {
		{
			27877,
			"The Morons' League",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46759,
			"Lidia Sunglow",
			"Badlands",
			52.2,
			51.5,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9972] = {
		{
			9972,
			"The Ring of Blood: Skra'gath [Group]",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18471,
			"Gurgthock",
			"Nagrand",
			42.8,
			20.7,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28261] = {
		{
			28261,
			"Deceivers In Our Midst",
			48,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47923,
			"Feronas Sindweller",
			"Felwood",
			45.5,
			20.1,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28389] = {
		{
			28389,
			"Report to the Denmother",
			49,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			48493,
			"Alton Redding",
			"Felwood",
			56.8,
			18.5,
			182,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10164] = {
		{
			10164,
			"Everything Will Be Alright [Dungeon]",
			67,
			"Auchenai Crypts",
			1,
		},
		{
			1020,
		},
		{
			19698,
			"Greatfather Aldrimus",
			"Terokkar Forest",
			35.1,
			65.2,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28645] = {
		{
			28645,
			"The Durnholde Challenge: Bloodvenom [Group]",
			25,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			nil,
			nil,
			"Hillsbrad Foothills",
			67.5,
			60.6,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28773] = {
		{
			28773,
			"Lions for Lambs",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10420] = {
		{
			10420,
			"A Cleansing Light",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			18538,
			"Ishanah",
			"Shattrath City",
			24.2,
			29.8,
			481,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10484] = {
		{
			10484,
			"Cursed Talismans",
			58,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			21133,
			"Corporal Ironridge",
			"Hellfire Peninsula",
			71,
			63.3,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10612] = {
		{
			10612,
			"The Fel and the Furious",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21790,
			"Plexi",
			"Shadowmoon Valley",
			0,
			0,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10676] = {
		{
			10676,
			"Bane of the Illidari",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21465,
			"David Wayne",
			"Terokkar Forest",
			77.5,
			38.7,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10804] = {
		{
			10804,
			"Kindness",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22113,
			"Mordenai",
			"Shadowmoon Valley",
			61,
			58.9,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10868] = {
		{
			10868,
			"Arakkoa War Path",
			62,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18712,
			"Advisor Faila",
			"Terokkar Forest",
			48.9,
			44.6,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10996] = {
		{
			10996,
			"Maggoc's Treasure Chest [Group]",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22941,
			"Mog'dorg the Wizened",
			"Blade's Edge Mountains",
			55.4,
			44.8,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11188] = {
		{
			11188,
			"Two Wrongs...",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23888,
			"Mage-Lieutenant Malister",
			"Howling Fjord",
			28.9,
			44.2,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11252] = {
		{
			11252,
			"Into Utgarde! [Dungeon]",
			71,
			"Utgarde Keep",
			1,
		},
		{
			1054,
		},
		{
			24111,
			"Defender Mordun",
			"Howling Fjord",
			59.5,
			48.9,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11316] = {
		{
			11316,
			"Spawn of the Twisted Glade",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24117,
			"Lurielle",
			"Howling Fjord",
			61.5,
			22.9,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11380] = {
		{
			11380,
			"Manalicious",
			70,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			24393,
			"The Rokk",
			"Shattrath City",
			61.7,
			15.8,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11508] = {
		{
			11508,
			"Grezzix Spindlesnap",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24755,
			"Elder Atuik",
			"Howling Fjord",
			25,
			57,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11572] = {
		{
			11572,
			"Return to Atuik",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23804,
			"Orfus of Kamagua",
			"Howling Fjord",
			40.3,
			60.2,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11636] = {
		{
			11636,
			"Magic Carpet Ride",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25289,
			"Wind Master To'bor",
			"Borean Tundra",
			42.5,
			55.4,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11700] = {
		{
			11700,
			"Let Bixie Know",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25714,
			"Tinky Wickwhistle",
			"Borean Tundra",
			69.90000000000001,
			14.7,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11892] = {
		{
			11892,
			"The Assassination of Harold Lane [Group]",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25809,
			"Arch Druid Lathorius",
			"Borean Tundra",
			57.1,
			44.3,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11956] = {
		{
			11956,
			"Finding the Phylactery",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26170,
			"Thassarian",
			"Borean Tundra",
			84.8,
			41.6,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12084] = {
		{
			12084,
			"Atop the Woodlands",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26471,
			"Image of Archmage Aethas Sunreaver",
			"Dragonblight",
			38,
			46.3,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12148] = {
		{
			12148,
			"One of a Kind [Group]",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26983,
			"Aurastrasza",
			"Dragonblight",
			60,
			55.2,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12212] = {
		{
			12212,
			"Replenishing the Storehouse",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27277,
			"Master Woodsman Anderhol",
			"Grizzly Hills",
			32.1,
			60,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24550] = {
		{
			24550,
			"Journey into Thunder Bluff",
			10,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			37024,
			"Una Wildmane",
			"Mulgore",
			49.3,
			17.3,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24678] = {
		{
			24678,
			"Knee-Deep",
			11,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			38539,
			"King Genn Greymane",
			"Gilneas City",
			31.8,
			57.1,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24934] = {
		{
			24934,
			"Repel Boarders!",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38619,
			"Admiral Aubrey",
			"Southern Barrens",
			69.2,
			49.1,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25062] = {
		{
			25062,
			"What We Came For",
			48,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39059,
			"Kelsey Steelspark",
			"Tanaris",
			50,
			83,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12596] = {
		{
			12596,
			"Pa'Troll",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28039,
			"Commander Kunz",
			"Zul'Drak",
			40.2,
			66.59999999999999,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12660] = {
		{
			12660,
			"Weapons of Destruction",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27801,
			"Avatar of Freya",
			"Sholazar Basin",
			64.7,
			48.7,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12724] = {
		{
			12724,
			"The Path Of The Righteous Crusader",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28914,
			"Orbaz Bloodbane",
			"Plaguelands: The Scarlet Enclave",
			56.3,
			79.90000000000001,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25574] = {
		{
			25574,
			"Flames from Above",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40278,
			"Tholo Whitehoof",
			"Mount Hyjal",
			64.09999999999999,
			22.5,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25702] = {
		{
			25702,
			"Home... Gone... Naga...",
			57,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			41265,
			"Salt-Flop",
			"Blasted Lands",
			73.2,
			47.5,
			19,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25830] = {
		{
			25830,
			"The Last Living Lorekeeper",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			47002,
			"Vision of Ysera",
			"Mount Hyjal",
			43.8,
			46,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12980] = {
		{
			12980,
			"The Armor's Secrets",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30152,
			"Bruor Ironbane",
			"The Storm Peaks",
			31.3,
			38.1,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26086] = {
		{
			26086,
			"Orako",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41663,
			"Captain \"Jewels\" Verne",
			"Abyssal Depths",
			51.4,
			61.5,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13108] = {
		{
			13108,
			"[80D] Whatever it Takes! [Dungeon]",
			80,
			"Halls of Lightning",
			1,
		},
		{
			1052,
		},
		{
			30105,
			"King Jokkum",
			"The Storm Peaks",
			65.40000000000001,
			60.1,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13172] = {
		{
			13172,
			"Seeds of Chaos",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30946,
			"Keritose Bloodblade",
			"Icecrown",
			44,
			24.6,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13236] = {
		{
			13236,
			"Army of the Damned",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			32404,
			"Matthias Lehner",
			"Icecrown",
			64.5,
			44.1,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13300] = {
		{
			13300,
			"Slaves to Saronite",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			31259,
			"Absalan the Pious",
			"Icecrown",
			55.6,
			42.8,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26726] = {
		{
			26726,
			"Triumphant Return",
			20,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			43733,
			"Colonel Troteman",
			"Redridge Mountains",
			60.7,
			36.6,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26854] = {
		{
			26854,
			"The Lost Pilot",
			11,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			1960,
			"Pilot Hammerfoot",
			"Loch Modan",
			14,
			56.6,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26982] = {
		{
			26982,
			"The Scarlet Monastery",
			30,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			2700,
			"Captain Nials",
			"Arathi Highlands",
			40,
			48.8,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27110] = {
		{
			27110,
			"The Madness Within [Dungeon]",
			44,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			14358,
			"Shen'dralar Ancient",
			"Dire Maul",
			48.4,
			53.6,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27238] = {
		{
			27238,
			"Jaina Must Know",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23569,
			"Renn McGill",
			"Dustwallow Marsh",
			63.8,
			17.1,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27366] = {
		{
			27366,
			"Landgrab",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45169,
			"Lieutenant Emry",
			"Twilight Highlands",
			76.7,
			70,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27494] = {
		{
			27494,
			"Move the Mountain",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45668,
			"Kurdran Wildhammer",
			"Twilight Highlands",
			43.4,
			57.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13812] = {
		{
			13812,
			"Threat From Above [Group]",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33762,
			"Crok Scourgebane",
			"Icecrown",
			53.8,
			89.3,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27750] = {
		{
			27750,
			"War Forage",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46319,
			"Griff",
			"Twilight Highlands",
			53.9,
			43.3,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27878] = {
		{
			27878,
			"Forcible Acquisition",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46758,
			"Aoren Sunglow",
			"Badlands",
			52.2,
			51.5,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14004] = {
		{
			14004,
			"Return to Samophlanger",
			15,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			9316,
			"Wenikee Boltbucket",
			"Northern Barrens",
			44.3,
			24.9,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14068] = {
		{
			14068,
			"Waptor Twapping",
			16,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34828,
			"Kala'ma",
			"Northern Barrens",
			62.3,
			63.8,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28262] = {
		{
			28262,
			"Meet with Lord Tony Romano",
			50,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			5165,
			"Hulfdan Blackbeard",
			"Ironforge",
			51.6,
			14.5,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28390] = {
		{
			28390,
			"Glop, Son of Glop",
			83,
			"Deepholm",
			3,
		},
		{
			89,
		},
		{
			44973,
			"Ruberick",
			"Deepholm",
			59.5,
			14.1,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14260] = {
		{
			14260,
			"Going Deep",
			32,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35773,
			"Cenarion Researcher Korrah",
			"Desolace",
			38.9,
			27.1,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28646] = {
		{
			28646,
			"The Durnholde Challenge: Infernus [Group]",
			25,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			nil,
			nil,
			"Hillsbrad Foothills",
			66.3,
			60.2,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28774] = {
		{
			28774,
			"Lions for Lambs",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14452] = {
		{
			14452,
			"Rite of Strength",
			2,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			2980,
			"Grull Hawkwind",
			"Mulgore",
			48.9,
			78.3,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24551] = {
		{
			24551,
			"Meet the New Boss",
			32,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			3433,
			"Tatternack Steelforge",
			"Southern Barrens",
			41.7,
			46.6,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24679] = {
		{
			24679,
			"Patriarch's Blessing",
			11,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			38144,
			"Krennan Aranas",
			"Gilneas",
			49.8,
			56.8,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24807] = {
		{
			24807,
			"Winnoa Pineforest",
			32,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37570,
			"Naralex",
			"Southern Barrens",
			48.2,
			38.6,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25063] = {
		{
			25063,
			"Terrapination",
			48,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39059,
			"Kelsey Steelspark",
			"Tanaris",
			49.9,
			82.90000000000001,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25191] = {
		{
			25191,
			"Survey the Destruction",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38383,
			"Nibb Spindlegear",
			"Southern Barrens",
			39,
			11.4,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25319] = {
		{
			25319,
			"War on the Twilight's Hammer",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39857,
			"Malfurion Stormrage",
			"Mount Hyjal",
			47.8,
			35.5,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25447] = {
		{
			25447,
			"Signs of Change",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			40032,
			"Telaron Windflight",
			"Feralas",
			50.7,
			17.2,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25575] = {
		{
			25575,
			"Forged of Shadow and Flame",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40834,
			"Jordan Olafson",
			"Mount Hyjal",
			26.3,
			41.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25703] = {
		{
			25703,
			"Atrocities",
			57,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			41354,
			"Neptool",
			"Blasted Lands",
			71,
			60,
			19,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8885] = {
		{
			8885,
			"The Ring of Mmmrrrggglll",
			9,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15920,
			"Hathvelion Sungaze",
			"Eversong Woods",
			29.9,
			58.5,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26087] = {
		{
			26087,
			"\"Glow-Juice\"",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41908,
			"Orako",
			"Abyssal Depths",
			42.8,
			51.1,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26215] = {
		{
			26215,
			"Meet Two-Shoed Lou",
			11,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			42308,
			"Lieutenant Horatio Laine",
			"Westfall",
			60,
			19.3,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26343] = {
		{
			26343,
			"Supply and Demand",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			2495,
			"Drizzlik",
			"Northern Stranglethorn",
			43.6,
			23.5,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26599] = {
		{
			26599,
			"The Captain's Chest",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2500,
			"Captain Hecklebury Smotts",
			"The Cape of Stranglethorn",
			40.4,
			67.90000000000001,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26727] = {
		{
			26727,
			"The Embalmer's Revenge",
			22,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			nil,
			nil,
			"Duskwood",
			71.90000000000001,
			46.4,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26855] = {
		{
			26855,
			"A Pilot's Revenge",
			11,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			nil,
			nil,
			"Dun Morogh",
			87.7,
			50.2,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26983] = {
		{
			26983,
			"[33] Just Close Enough",
			33,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			39084,
			"Mizzy Pistonhammer",
			"Southern Barrens",
			49.4,
			67.5,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27111] = {
		{
			27111,
			"The Treasure of the Shen'dralar [Dungeon]",
			44,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			14358,
			"Shen'dralar Ancient",
			"Dire Maul",
			48.3,
			53.3,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9525] = {
		{
			9525,
			"Imprisoned in the Citadel [Heroic]",
			70,
			"Hellfire Citadel",
			1,
		},
		{
			99999,
		},
		{
			17294,
			"Drisella",
			"The Shattered Halls",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9589] = {
		{
			9589,
			"The Blood is Life [Dungeon]",
			63,
			"The Blood Furnace",
			1,
		},
		{
			1032,
		},
		{
			17479,
			"Gunny",
			"Hellfire Peninsula",
			56.5,
			66.59999999999999,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27495] = {
		{
			27495,
			"Move the Mountain",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45658,
			"Warlord Zaela",
			"Twilight Highlands",
			45.3,
			75.3,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9717] = {
		{
			9717,
			"Oh, It's On! [Dungeon]",
			65,
			"The Underbog",
			1,
		},
		{
			1030,
		},
		{
			17857,
			"T'shu",
			"Zangarmarsh",
			19.3,
			49.8,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9781] = {
		{
			9781,
			"Too Many Mouths to Feed",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18005,
			"Haalrun",
			"Zangarmarsh",
			67.8,
			47.9,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27879] = {
		{
			27879,
			"Survival of the Fattest",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46660,
			"Aidan Summerwind",
			"Badlands",
			18.4,
			41.5,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9973] = {
		{
			9973,
			"The Ring of Blood: The Warmaul Champion [Group]",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18471,
			"Gurgthock",
			"Nagrand",
			42.8,
			20.7,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10037] = {
		{
			10037,
			"Rather Be Fishin'",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18653,
			"Seth",
			"Shattrath City",
			64.09999999999999,
			15.7,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10101] = {
		{
			10101,
			"When Spirits Speak",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18687,
			"Mother Kashur",
			"Nagrand",
			26.1,
			60.6,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10165] = {
		{
			10165,
			"Undercutting the Competition [Dungeon]",
			66,
			"Mana-Tombs",
			1,
		},
		{
			1021,
		},
		{
			nil,
			nil,
			"Mana-Tombs",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28647] = {
		{
			28647,
			"The Durnholde Challenge: D-1000 [Group]",
			25,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			nil,
			nil,
			"Hillsbrad Foothills",
			67.40000000000001,
			62.5,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10293] = {
		{
			10293,
			"Hitting the Motherlode [Group]",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20067,
			"Zuben Elgenubi",
			"Netherstorm",
			44,
			36,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10485] = {
		{
			10485,
			"Warlord of the Bleeding Hollow",
			60,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			21133,
			"Corporal Ironridge",
			"Hellfire Peninsula",
			70.90000000000001,
			63.4,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10613] = {
		{
			10613,
			"The Fel and the Furious",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21789,
			"Nakansi",
			"Shadowmoon Valley",
			27.5,
			21.2,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10677] = {
		{
			10677,
			"The Second Course...",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21777,
			"Gnomus",
			"Shadowmoon Valley",
			36.5,
			55.3,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10741] = {
		{
			10741,
			"Distinguished Service",
			70,
			"Karazhan",
			1,
		},
		{
			1073,
		},
		{
			18253,
			"Archmage Leryda",
			"Deadwind Pass",
			47.2,
			75.2,
			32,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10805] = {
		{
			10805,
			"Massacre at Gruul's Lair [Group]",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22103,
			"Baron Sablemane",
			"Blade's Edge Mountains",
			53.3,
			41.2,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10869] = {
		{
			10869,
			"[62] Thin the Flock",
			62,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18713,
			"Lieutenant Gravelhammer",
			"Terokkar Forest",
			57.6,
			55.8,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10997] = {
		{
			10997,
			"Even Gronn Have Standards [Group]",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22941,
			"Mog'dorg the Wizened",
			"Blade's Edge Mountains",
			55.4,
			44.8,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11061] = {
		{
			11061,
			"A Father's Duty",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			23316,
			"Torkus",
			"Blade's Edge Mountains",
			28.4,
			57.6,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11253] = {
		{
			11253,
			"Sniff Out the Enemy",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23938,
			"Pontius",
			"Howling Fjord",
			79.09999999999999,
			31.2,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11317] = {
		{
			11317,
			"The Cleansing",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24186,
			"Sage Mistwalker",
			"Howling Fjord",
			31.1,
			24.5,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11381] = {
		{
			11381,
			"Soup for the Soul",
			70,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			24393,
			"The Rokk",
			"Shattrath City",
			61.5,
			15.7,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11509] = {
		{
			11509,
			"Street \"Cred\"",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24643,
			"Grezzix Spindlesnap",
			"Howling Fjord",
			23.1,
			62.7,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11573] = {
		{
			11573,
			"Orfus of Kamagua",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			25233,
			"Lunk-tusk",
			"Howling Fjord",
			32.3,
			46.8,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[1455] = {
		{
			1455,
			"[30] The Karnitol Shipwreck",
			30,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Desolace",
			36.1,
			30.6,
			101,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11701] = {
		{
			11701,
			"Back to the Airstrip",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25705,
			"Bixie Wrenchshanker",
			"Borean Tundra",
			73.5,
			18.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11893] = {
		{
			11893,
			"The Power of the Elements",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25983,
			"Dorain Frosthoof",
			"Borean Tundra",
			77.59999999999999,
			37,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11957] = {
		{
			11957,
			"Saragosa's End",
			71,
			"Coldarra",
			1,
		},
		{
			77,
		},
		{
			26206,
			"Keristrasza",
			"Borean Tundra",
			33.3,
			34.3,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12085] = {
		{
			12085,
			"A Letter for Home",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			nil,
			nil,
			"Dragonblight",
			32.1,
			72.90000000000001,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12149] = {
		{
			12149,
			"Mighty Magnataur [Group]",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26983,
			"Aurastrasza",
			"Dragonblight",
			60,
			55.1,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12213] = {
		{
			12213,
			"The Darkness Beneath",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27262,
			"Windseer Grayhorn",
			"Grizzly Hills",
			22.5,
			63,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12277] = {
		{
			12277,
			"[72] [72] Leave Nothing to Chance",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27412,
			"Slinkin the Demo-gnome",
			"Dragonblight",
			81.5,
			42.2,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24680] = {
		{
			24680,
			"Keel Harbor",
			12,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			38144,
			"Krennan Aranas",
			"Gilneas",
			49.8,
			56.8,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12469] = {
		{
			12469,
			"Return to Sender",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26896,
			"Nozzlerust Supply Runner",
			"Dragonblight",
			48.5,
			24.1,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12533] = {
		{
			12533,
			"The Wasp Hunter's Apprentice",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28082,
			"High-Shaman Rakjak",
			"Sholazar Basin",
			55,
			69.09999999999999,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25192] = {
		{
			25192,
			"Raggaran's Fury",
			9,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			39326,
			"Raggaran",
			"Durotar",
			42.7,
			49.9,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25320] = {
		{
			25320,
			"The Captured Scout",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			38917,
			"Alysra",
			"Mount Hyjal",
			48.5,
			19.1,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[6363] = {
		{
			6363,
			"Tal the Wind Rider Master",
			7,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			8359,
			"Ahanu",
			"Thunder Bluff",
			45.5,
			55.7,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12789] = {
		{
			12789,
			"Into the Breach!",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28228,
			"Crusader Valus",
			"Dragonblight",
			84,
			26.1,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25704] = {
		{
			25704,
			"The Mad Magus",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			41060,
			"Ajamon Ghostcaller",
			"Thousand Needles",
			96.8,
			72.40000000000001,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12917] = {
		{
			12917,
			"Speaking with the Wind's Voice",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29937,
			"Moteha Windborn ",
			"The Storm Peaks",
			37.3,
			49.7,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12981] = {
		{
			12981,
			"Hot and Cold",
			80,
			"The Storm Peaks",
			3,
		},
		{
			86,
		},
		{
			nil,
			nil,
			"The Storm Peaks",
			63.1,
			63,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13045] = {
		{
			13045,
			"Into The Wild Green Yonder",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30227,
			"Penumbrius",
			"Icecrown",
			87.09999999999999,
			79,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13109] = {
		{
			13109,
			"Diametrically Opposed [Dungeon]",
			80,
			"Halls of Lightning",
			1,
		},
		{
			1052,
		},
		{
			nil,
			nil,
			"The Storm Peaks",
			65.5,
			60.1,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26344] = {
		{
			26344,
			"Some Assembly Required",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			2495,
			"Drizzlik",
			"Northern Stranglethorn",
			43.7,
			23.5,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26472] = {
		{
			26472,
			"Insane Druids",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33777,
			"Gaivan Shadewalker",
			"Ashenvale",
			75.59999999999999,
			75.5,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26600] = {
		{
			26600,
			"A Giant's Feast",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2500,
			"Captain Hecklebury Smotts",
			"The Cape of Stranglethorn",
			40.4,
			67.8,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26728] = {
		{
			26728,
			"Hero's Call: Duskwood!",
			20,
			"Duskwood",
			4,
		},
		{
			37,
		},
		{
			900,
			"Bailiff Conacher",
			"Redridge Mountains",
			28.7,
			40.9,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26856] = {
		{
			26856,
			"Repel the Invasion [Dungeon]",
			14,
			"Ragefire Chasm",
			1,
		},
		{
			1007,
		},
		{
			44217,
			"Stone Guard Kurjack",
			"Ragefire Chasm",
			68.59999999999999,
			11.4,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26984] = {
		{
			26984,
			"An Old, Crazed Friend",
			35,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			44019,
			"Livingston Marshal",
			"Northern Stranglethorn",
			53.2,
			66.90000000000001,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13557] = {
		{
			13557,
			"Bearer of Good Fortune",
			11,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			nil,
			nil,
			"Darkshore",
			57.7,
			32.8,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27240] = {
		{
			27240,
			"Proof of Treachery",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4968,
			"Lady Jaina Proudmoore",
			"Dustwallow Marsh",
			66.2,
			49,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27368] = {
		{
			27368,
			"Just Encased",
			40,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45428,
			"Gidwin Goldbraids",
			"Eastern Plaguelands",
			4.1,
			36.2,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27496] = {
		{
			27496,
			"Call in the Artillery",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45669,
			"Cassius the White",
			"Twilight Highlands",
			43.4,
			57.4,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27624] = {
		{
			27624,
			"After the Fall",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			45296,
			"Harrison Jones",
			"Uldum",
			64.5,
			27.9,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13877] = {
		{
			13877,
			"Go With The Flow",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34239,
			"Hephaestus Pilgrim",
			"Ashenvale",
			36.4,
			49.8,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27880] = {
		{
			27880,
			"Half-Ton Holdouts",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			1068,
			"Gorn",
			"Badlands",
			17.7,
			43.8,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14005] = {
		{
			14005,
			"The Vengeance of Elune",
			10,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			1992,
			"Tarindrella",
			"Teldrassil",
			42.5,
			58.2,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28136] = {
		{
			28136,
			"Behind You!",
			45,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47580,
			"Lakota Windsong",
			"Thousand Needles",
			30.4,
			49.4,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28264] = {
		{
			28264,
			"Navarax's Gambit",
			48,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			nil,
			nil,
			"Felwood",
			45.5,
			20.1,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28392] = {
		{
			28392,
			"The Timbermaw Tribe",
			49,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47931,
			"Denmother Ulrica",
			"Felwood",
			61.8,
			26.7,
			182,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28520] = {
		{
			28520,
			"The Fall of Neferset City",
			84,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48564,
			"King Phaoris",
			"Uldum",
			52.1,
			65.5,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14325] = {
		{
			14325,
			"Will Work For Food",
			33,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			36163,
			"Khan Kammah",
			"Desolace",
			71.7,
			45.5,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14389] = {
		{
			14389,
			"Wasn't It Obvious?",
			19,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36372,
			"Joanna",
			"Azshara",
			25.6,
			38,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[2039] = {
		{
			2039,
			"Find Bingles",
			15,
			"Ironforge",
			1,
		},
		{
			43,
		},
		{
			6569,
			"Gnoarn",
			"Ironforge",
			69.5,
			50.7,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24681] = {
		{
			24681,
			"They Have Allies, But So Do We",
			12,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			38149,
			"Lord Darius Crowley",
			"Gilneas",
			41.9,
			37.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8310] = {
		{
			8310,
			"Breaking the Code",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			15171,
			"Frankal Stonebridge",
			"Silithus",
			0,
			0,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24937] = {
		{
			24937,
			"Oomlot Dealt With",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38647,
			"Izzy",
			"The Lost Isles",
			56.5,
			71.90000000000001,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25065] = {
		{
			25065,
			"You Too, Brute?",
			48,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39059,
			"Kelsey Steelspark",
			"Tanaris",
			50,
			82.90000000000001,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25193] = {
		{
			25193,
			"Lost But Not Forgotten",
			8,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			3193,
			"Misha Tor'kren",
			"Durotar",
			43.4,
			30.7,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25321] = {
		{
			25321,
			"Twilight Captivity",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40096,
			"Scout Larandia",
			"Mount Hyjal",
			44.6,
			18.8,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25449] = {
		{
			25449,
			"The Mark of Quality",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			40226,
			"Pratt McGrubben",
			"Feralas",
			45.3,
			41.3,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25577] = {
		{
			25577,
			"Crushing the Cores",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40834,
			"Jordan Olafson",
			"Mount Hyjal",
			26.3,
			41.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25705] = {
		{
			25705,
			"False Idols",
			57,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			41354,
			"Neptool",
			"Blasted Lands",
			71,
			60,
			19,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25961] = {
		{
			25961,
			"Curious Distraction",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40920,
			"Elendri Goldenbrow",
			"Shimmering Expanse",
			39.7,
			53.8,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26089] = {
		{
			26089,
			"Die Fishman Die",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41908,
			"Orako",
			"Abyssal Depths",
			42.9,
			51,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26345] = {
		{
			26345,
			"Excelsior",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			2495,
			"Drizzlik",
			"Northern Stranglethorn",
			43.6,
			23.4,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26473] = {
		{
			26473,
			"Bathran's Hair",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33204,
			"Evenar Stillwhisper",
			"Ashenvale",
			26.8,
			22,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26601] = {
		{
			26601,
			"Mok'rash the Cleaver",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2500,
			"Captain Hecklebury Smotts",
			"The Cape of Stranglethorn",
			40.4,
			67.8,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26729] = {
		{
			26729,
			"Water Elementals",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			43885,
			"Emerine Junis",
			"Northern Stranglethorn",
			47.6,
			10.4,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26857] = {
		{
			26857,
			"Abyssion's Minions",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44010,
			"Stormcaller Mylra",
			"Deepholm",
			64.5,
			82.09999999999999,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9398] = {
		{
			9398,
			"Deadly Predators",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16797,
			"Scout Vanura",
			"Hellfire Peninsula",
			23.4,
			39.3,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27113] = {
		{
			27113,
			"The Shen'dralar Ancient",
			43,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			44991,
			"Estulan",
			"Dire Maul",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27241] = {
		{
			27241,
			"Return to Jaina",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			29611,
			"King Varian Wrynn",
			"Stormwind City",
			85.8,
			31.8,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9590] = {
		{
			9590,
			"The Blood is Life [Dungeon]",
			63,
			"The Blood Furnace",
			1,
		},
		{
			1032,
		},
		{
			17558,
			"Caza'rez",
			"Hellfire Peninsula",
			54.9,
			36.1,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27497] = {
		{
			27497,
			"Call in the Artillery",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45665,
			"Lady Cozwynn",
			"Twilight Highlands",
			45.2,
			75.3,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27625] = {
		{
			27625,
			"In Defense of Quel'Danil",
			35,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			46475,
			"Anchorite Traska",
			"The Hinterlands",
			32.2,
			42.6,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9782] = {
		{
			9782,
			"The Dead Mire",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18004,
			"Vindicator Idaar",
			"Zangarmarsh",
			68.3,
			50,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9846] = {
		{
			9846,
			"Spirits of the Feralfen",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18017,
			"Seer Janidi",
			"Zangarmarsh",
			32.4,
			51.9,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9910] = {
		{
			9910,
			"Standards and Practices",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18300,
			"Elkay'gan the Mystic",
			"Nagrand",
			55.7,
			37.5,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28137] = {
		{
			28137,
			"Teach A Man To Fish.... Or Steal",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			47240,
			"Commander Marcus Johnson",
			"Tol Barad Peninsula",
			73.40000000000001,
			59.5,
			709,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28265] = {
		{
			28265,
			"General Thorg'izog",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48109,
			"John J. Keeshan",
			"Burning Steppes",
			46.4,
			45.9,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10102] = {
		{
			10102,
			"A Secret Revealed",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			17545,
			"K'ure",
			"Nagrand",
			35.5,
			77.7,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10166] = {
		{
			10166,
			"Whitebark's Memory",
			10,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15398,
			"Larianna Riverwind",
			"Eversong Woods",
			34.1,
			80,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10230] = {
		{
			10230,
			"The Battle Horn",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19736,
			"Althen the Historian",
			"Hellfire Peninsula",
			61.7,
			81.7,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10294] = {
		{
			10294,
			"Void Ridge",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19683,
			"Ogath the Mad",
			"Hellfire Peninsula",
			61.8,
			81.5,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10422] = {
		{
			10422,
			"Captain Tyralius",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20450,
			"Flesh Handler Viridius",
			"Netherstorm",
			59,
			32.1,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10486] = {
		{
			10486,
			"The Encroaching Wilderness",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21117,
			"Gor'drek",
			"Blade's Edge Mountains",
			52.2,
			57.6,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10550] = {
		{
			10550,
			"The Bundle of Bloodthistle",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21411,
			"Tobias the Filth Gorger",
			"Shattrath City",
			64,
			69.8,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10614] = {
		{
			10614,
			"Whispers on the Wind",
			66,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			21984,
			"Rexxar",
			"Blade's Edge Mountains",
			51.8,
			58.4,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10678] = {
		{
			10678,
			"The Main Course!",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21777,
			"Gnomus",
			"Shadowmoon Valley",
			36.6,
			55.2,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10742] = {
		{
			10742,
			"Showdown [Group]",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21984,
			"Rexxar",
			"Blade's Edge Mountains",
			51.8,
			58.3,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10806] = {
		{
			10806,
			"Showdown [Group]",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22103,
			"Baron Sablemane",
			"Blade's Edge Mountains",
			53.2,
			41.2,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10870] = {
		{
			10870,
			"Ally of the Netherwing",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22112,
			"Karynaku",
			"Shadowmoon Valley",
			69.8,
			61.3,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10998] = {
		{
			10998,
			"Grim(oire) Business [Group]",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22941,
			"Mog'dorg the Wizened",
			"Blade's Edge Mountains",
			55.5,
			44.8,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11062] = {
		{
			11062,
			"The Skyguard Outpost",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			23233,
			"Chu'a'lor",
			"Blade's Edge Mountains",
			28.7,
			57.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11190] = {
		{
			11190,
			"One Size Does Not Fit All",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23770,
			"Cannoneer Ely",
			"Howling Fjord",
			34,
			43.7,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11] = {
		{
			11,
			"Riverpaw Gnoll Bounty",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			963,
			"Deputy Rainer",
			"Elwynn Forest",
			24.3,
			74.5,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11510] = {
		{
			11510,
			"\"Scoodles\"",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24539,
			"\"Silvermoon\" Harry",
			"Howling Fjord",
			35.1,
			80.90000000000001,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11574] = {
		{
			11574,
			"Too Close For Comfort",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25247,
			"Endorah",
			"Borean Tundra",
			41.8,
			54.7,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11638] = {
		{
			11638,
			"Return My Remains",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25425,
			"Farseer Grimwalker's Spirit",
			"Borean Tundra",
			56.2,
			9.1,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11702] = {
		{
			11702,
			"King Mrgl-Mrgl",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25736,
			"Supply Master Taz'ishi",
			"Borean Tundra",
			49,
			10.3,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11894] = {
		{
			11894,
			"Patching Up",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25849,
			"Fezzix Geartwist",
			"Borean Tundra",
			77.5,
			37,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11958] = {
		{
			11958,
			"Let Nothing Go To Waste",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26194,
			"Elder Ko'nani",
			"Dragonblight",
			48,
			74.8,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12086] = {
		{
			12086,
			"The Son of Karkut",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26169,
			"Ataika",
			"Borean Tundra",
			63.8,
			46.2,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12150] = {
		{
			12150,
			"Reclusive Runemaster [Group]",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26983,
			"Aurastrasza",
			"Dragonblight",
			60,
			55.1,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12214] = {
		{
			12214,
			"Fresh Remounts",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27028,
			"Hansel Bauer",
			"Dragonblight",
			76,
			62,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24682] = {
		{
			24682,
			"The Pit of Saron [Dungeon]",
			80,
			"Pit of Saron",
			1,
		},
		{
			1047,
		},
		{
			38161,
			"Lady Sylvanas Windrunner",
			"The Forge of Souls",
			44.8,
			14.1,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[3102] = {
		{
			3102,
			"Encrypted Letter",
			3,
			"Rogue",
			1,
		},
		{
			2007,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24938] = {
		{
			24938,
			"The Guns of Northwatch",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38619,
			"Admiral Aubrey",
			"Southern Barrens",
			69.2,
			49.1,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12534] = {
		{
			12534,
			"The Sapphire Queen",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28138,
			"Elder Harkek",
			"Sholazar Basin",
			55.5,
			69.59999999999999,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25194] = {
		{
			25194,
			"Unbidden Visitors",
			8,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			39324,
			"Zen'Taji",
			"Durotar",
			35.9,
			41.4,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12662] = {
		{
			12662,
			"Bringing Down Heb'Jin",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28480,
			"Element-Tamer Dagoda",
			"Zul'Drak",
			59.4,
			56.4,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12726] = {
		{
			12726,
			"Song of Wind and Water",
			80,
			"Sholazar Basin",
			3,
		},
		{
			85,
		},
		{
			29006,
			"Oracle Soo-nee",
			"Sholazar Basin",
			53.3,
			56.5,
			493,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12790] = {
		{
			12790,
			"Learning to Leave and Return: the Magical Way",
			74,
			"Dalaran",
			1,
		},
		{
			79,
		},
		{
			29156,
			"Archmage Celindra",
			"Dalaran",
			56.1,
			47.2,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12854] = {
		{
			12854,
			"On Brann's Trail",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29650,
			"Archaeologist Andorin",
			"The Storm Peaks",
			29.6,
			74,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25834] = {
		{
			25834,
			"Death by Proxy",
			29,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41229,
			"Force Commander Valen",
			"Stonetalon Mountains",
			71.09999999999999,
			79.7,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12982] = {
		{
			12982,
			"Ebon Blade Prisoners",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30218,
			"Vaelen the Flayed",
			"Icecrown",
			43.1,
			21.1,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26090] = {
		{
			26090,
			"I Brought You This Egg",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			nil,
			nil,
			"Abyssal Depths",
			44.2,
			62,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13110] = {
		{
			13110,
			"The Restless Dead",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30683,
			"Father Gustav",
			"Icecrown",
			82.90000000000001,
			72.8,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13174] = {
		{
			13174,
			"Amidst the Confusion",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30946,
			"Keritose Bloodblade",
			"Icecrown",
			44,
			24.6,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26474] = {
		{
			26474,
			"Orendil's Cure",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3847,
			"Orendil Broadleaf",
			"Ashenvale",
			26.8,
			36.7,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26602] = {
		{
			26602,
			"A Dish Best Served Huge",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2500,
			"Captain Hecklebury Smotts",
			"The Cape of Stranglethorn",
			40.3,
			67.90000000000001,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26730] = {
		{
			26730,
			"You Can Take the Murloc Out of the Ocean...",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			43885,
			"Emerine Junis",
			"Northern Stranglethorn",
			20.2,
			40,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26858] = {
		{
			26858,
			"Taragaman the Hungerer [Dungeon]",
			16,
			"Ragefire Chasm",
			1,
		},
		{
			1007,
		},
		{
			44217,
			"Stone Guard Kurjack",
			"Ragefire Chasm",
			68.59999999999999,
			11.4,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26986] = {
		{
			26986,
			"Into the Scarlet Monastery",
			30,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			12920,
			"Doctor Gregory Victor",
			"Arathi Highlands",
			68.40000000000001,
			37.7,
			16,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13558] = {
		{
			13558,
			"Call Down the Thunder",
			16,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			6887,
			"Yalda",
			"Darkshore",
			39.1,
			43.2,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27242] = {
		{
			27242,
			"Raptor Captor",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23723,
			"Sergeant Lukas",
			"Dustwallow Marsh",
			46.7,
			23.1,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27370] = {
		{
			27370,
			"Tarenar Sunstrike",
			40,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45417,
			"Fiona",
			"Eastern Plaguelands",
			9.1,
			66.40000000000001,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27498] = {
		{
			27498,
			"Signal the Attack",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			nil,
			nil,
			"Twilight Highlands",
			37.9,
			65.90000000000001,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27626] = {
		{
			27626,
			"The Highvale Documents",
			35,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			46475,
			"Anchorite Traska",
			"The Hinterlands",
			32.2,
			42.6,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13878] = {
		{
			13878,
			"Through Fire and Flames",
			11,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34284,
			"Dorak",
			"Northern Barrens",
			67.09999999999999,
			45.5,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13942] = {
		{
			13942,
			"Set Us Up the Bomb",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34395,
			"Tweedle",
			"Ashenvale",
			38,
			43.9,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14006] = {
		{
			14006,
			"Read the Manual",
			14,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3442,
			"Sputtervalve",
			"Northern Barrens",
			62.3,
			17.4,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28138] = {
		{
			28138,
			"Human Infestation",
			20,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			47551,
			"Spider-Handler Sarus",
			"Hillsbrad Foothills",
			33.3,
			73.59999999999999,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28266] = {
		{
			28266,
			"Trial by Magma",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48133,
			"General Thorg'izog",
			"Burning Steppes",
			30.8,
			33.6,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14198] = {
		{
			14198,
			"Rider on the Storm",
			31,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Desolace",
			74.8,
			13.2,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28522] = {
		{
			28522,
			"Winterfall Activity",
			50,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			11556,
			"Salfa",
			"Winterspring",
			21.1,
			46.2,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14326] = {
		{
			14326,
			"Meet Me Up Top",
			7,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			nil,
			nil,
			"The Lost Isles",
			11.8,
			62.7,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14390] = {
		{
			14390,
			"Easy is Boring",
			19,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36436,
			"Spirit of Azuregos",
			"Azshara",
			28,
			40.3,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[3630] = {
		{
			3630,
			"Gnome Engineering",
			36,
			"Engineering",
			1,
		},
		{
			3005,
		},
		{
			5518,
			"Lilliam Sparkspindle",
			"Stormwind City",
			62.7,
			32.1,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24683] = {
		{
			24683,
			"The Pit of Saron [Dungeon]",
			80,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			38160,
			"Lady Jaina Proudmoore",
			"The Forge of Souls",
			45.8,
			15.2,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24939] = {
		{
			24939,
			"Run Out the Guns",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			3454,
			"Cannoneer Smythe",
			"Southern Barrens",
			68.59999999999999,
			44.5,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25067] = {
		{
			25067,
			"Thunderdrome: The Ginormus! [Group]",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39034,
			"Dr. Dealwell",
			"Tanaris",
			51.8,
			28,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25195] = {
		{
			25195,
			"That's the End of That Raptor",
			9,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			39324,
			"Zen'Taji",
			"Durotar",
			35.8,
			41.4,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25323] = {
		{
			25323,
			"Flamebreaker",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39857,
			"Malfurion Stormrage",
			"Mount Hyjal",
			47.7,
			35.5,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8631] = {
		{
			8631,
			"Enigma Leggings [Raid]",
			60,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			15503,
			"Kandrostrasz",
			"Ahn'Qiraj",
			59.1,
			68.59999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8695] = {
		{
			8695,
			"Cape of Eternal Justice [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15500,
			"Keyl Swiftclaw",
			"Ahn'Qiraj: The Fallen Kingdom",
			59.4,
			14,
			772,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25707] = {
		{
			25707,
			"The Future of the Rockpool",
			57,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			41402,
			"Abandoned Bloodwash Crate",
			"Blasted Lands",
			61.5,
			63,
			19,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25835] = {
		{
			25835,
			"Free Freewind Post",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40027,
			"Fizzle Brassbolts",
			"Thousand Needles",
			76,
			74.59999999999999,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8887] = {
		{
			8887,
			"Captain Kelisendra's Lost Rutters",
			8,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			nil,
			nil,
			"Eversong Woods",
			27.2,
			57.6,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26091] = {
		{
			26091,
			"Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41908,
			"Orako",
			"Abyssal Depths",
			42.8,
			51,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26219] = {
		{
			26219,
			"Full Circle",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			42411,
			"Captain Taylor",
			"Vashj'ir",
			69.59999999999999,
			75.3,
			613,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26347] = {
		{
			26347,
			"Keeper of the Flame",
			14,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			392,
			"Captain Grayson",
			"Westfall",
			30.5,
			85.59999999999999,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26475] = {
		{
			26475,
			"Elune's Tear",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3894,
			"Pelturas Whitemoon",
			"Ashenvale",
			37.3,
			51.8,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26603] = {
		{
			26603,
			"Message in a Bottle",
			32,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			nil,
			nil,
			"The Cape of Stranglethorn",
			62.4,
			46.6,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26731] = {
		{
			26731,
			"The Altar of Naias",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			43885,
			"Emerine Junis",
			"Northern Stranglethorn",
			43.2,
			40.7,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26987] = {
		{
			26987,
			"The Right Way",
			33,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			14741,
			"Huntsman Markhor",
			"The Hinterlands",
			79.09999999999999,
			79.5,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27115] = {
		{
			27115,
			"Ando's Call",
			18,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1073,
			"Ashlan Stonesmirk",
			"Loch Modan",
			64.09999999999999,
			26.7,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27243] = {
		{
			27243,
			"Unleash the Raptors",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23723,
			"Sergeant Lukas",
			"Dustwallow Marsh",
			46.6,
			23,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27371] = {
		{
			27371,
			"What I Do Best",
			40,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45429,
			"Tarenar Sunstrike",
			"Eastern Plaguelands",
			18.3,
			74.8,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27499] = {
		{
			27499,
			"Signal the Attack",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			nil,
			nil,
			"Twilight Highlands",
			38.1,
			66.3,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9719] = {
		{
			9719,
			"Stalk the Stalker [Dungeon]",
			65,
			"The Underbog",
			1,
		},
		{
			1030,
		},
		{
			17866,
			"Khn'nix",
			"Zangarmarsh",
			19.6,
			49.7,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9783] = {
		{
			9783,
			"An Unnatural Drought",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18004,
			"Vindicator Idaar",
			"Zangarmarsh",
			68.40000000000001,
			50.1,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9847] = {
		{
			9847,
			"A Spirit Ally?",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18017,
			"Seer Janidi",
			"Zangarmarsh",
			32.4,
			51.9,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9911] = {
		{
			9911,
			"The Count of the Marshes",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			nil,
			nil,
			"Zangarmarsh",
			33.2,
			59.4,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28139] = {
		{
			28139,
			"Codemaster's Code",
			45,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47580,
			"Lakota Windsong",
			"Thousand Needles",
			30.4,
			49.4,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10039] = {
		{
			10039,
			"Speak with Scout Neftis",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18712,
			"Advisor Faila",
			"Terokkar Forest",
			48.9,
			44.6,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10103] = {
		{
			10103,
			"Report to Zurai",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16789,
			"Ranger Captain Venn'ren",
			"Hellfire Peninsula",
			28.6,
			60.3,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10167] = {
		{
			10167,
			"Auchindoun... [Dungeon]",
			68,
			"Auchenai Crypts",
			1,
		},
		{
			1020,
		},
		{
			18481,
			"A'dal",
			"Shattrath City",
			53.7,
			44.8,
			481,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28651] = {
		{
			28651,
			"Novice Elreth",
			3,
			"Deathknell",
			1,
		},
		{
			60,
		},
		{
			2126,
			"Maximillion",
			"Tirisfal Glades",
			31,
			66.3,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28779] = {
		{
			28779,
			"",
			0,
			"The Vortex Pinnacle",
			1,
		},
		{
			1062,
		},
		{
			49943,
			"Itesh",
			"The Vortex Pinnacle",
			54.5,
			16,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10423] = {
		{
			10423,
			"To the Stormspire",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20810,
			"Mehrdad",
			"Netherstorm",
			46.5,
			56.4,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10487] = {
		{
			10487,
			"Dust from the Drakes",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21117,
			"Gor'drek",
			"Blade's Edge Mountains",
			52.3,
			58,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10615] = {
		{
			10615,
			"Ruuan Weald",
			64,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21496,
			"Dertrok",
			"Blade's Edge Mountains",
			75.09999999999999,
			62.1,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10679] = {
		{
			10679,
			"Quenching the Blade",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21465,
			"David Wayne",
			"Terokkar Forest",
			77.5,
			38.7,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10807] = {
		{
			10807,
			"The Ashtongue Broken",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21953,
			"Varen the Reclaimer",
			"Shadowmoon Valley",
			54.7,
			58.2,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10871] = {
		{
			10871,
			"Ally of the Netherwing",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22112,
			"Karynaku",
			"Shadowmoon Valley",
			69.8,
			61.3,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10935] = {
		{
			10935,
			"The Exorcism of Colonel Jules",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			22430,
			"Assistant Klatu",
			"Hellfire Peninsula",
			54.4,
			63.6,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11255] = {
		{
			11255,
			"Prisoners of Wyrmskull",
			70,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23546,
			"Vice Admiral Keller",
			"Howling Fjord",
			60.4,
			61.1,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11319] = {
		{
			11319,
			"Seeds of the Blacksouled Keepers",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24117,
			"Lurielle",
			"Howling Fjord",
			61.5,
			22.9,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11511] = {
		{
			11511,
			"The Staff of Storm's Fury",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24539,
			"\"Silvermoon\" Harry",
			"Howling Fjord",
			35.1,
			80.90000000000001,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11575] = {
		{
			11575,
			"Nick of Time",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25249,
			"Midge",
			"Borean Tundra",
			58.4,
			67.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11639] = {
		{
			11639,
			"Revenge Upon Magmoth",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25374,
			"Ortrosh",
			"Borean Tundra",
			50.1,
			10.1,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11703] = {
		{
			11703,
			"Get to Getry",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25437,
			"Shadowstalker Ickoris",
			"Borean Tundra",
			38.1,
			52.6,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[23] = {
		{
			23,
			"Ursangous's Paw",
			24,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			nil,
			nil,
			"Ashenvale",
			42,
			68.40000000000001,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11895] = {
		{
			11895,
			"Master the Storm",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25982,
			"Sage Earth and Sky",
			"Borean Tundra",
			77.2,
			38.4,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11959] = {
		{
			11959,
			"Slay Loguhn",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26194,
			"Elder Ko'nani",
			"Dragonblight",
			48,
			74.8,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12151] = {
		{
			12151,
			"Wanton Warlord [Group]",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26983,
			"Aurastrasza",
			"Dragonblight",
			60,
			55.2,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12215] = {
		{
			12215,
			"Them or Us!",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27277,
			"Master Woodsman Anderhol",
			"Grizzly Hills",
			32.1,
			60,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12279] = {
		{
			12279,
			"A Bear of an Appetite",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26484,
			"Hugh Glass",
			"Grizzly Hills",
			69.09999999999999,
			40,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24684] = {
		{
			24684,
			"A Weezil in the Henhouse",
			35,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			3341,
			"Gann Stonespire",
			"Southern Barrens",
			49.2,
			82.40000000000001,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24812] = {
		{
			24812,
			"No More Mercy",
			4,
			"Echo Isles",
			1,
		},
		{
			10,
		},
		{
			38442,
			"Morakki",
			"Durotar",
			68,
			74.2,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12471] = {
		{
			12471,
			"Cruelty of the Kvaldir",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25636,
			"Captured Tuskarr Prisoner",
			"Borean Tundra",
			44.1,
			77.90000000000001,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25068] = {
		{
			25068,
			"The Crumbling Past",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38922,
			"Examiner Andoren Dawnrise",
			"Tanaris",
			33.3,
			77,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12599] = {
		{
			12599,
			"Creature Comforts",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28043,
			"Captain Grondel",
			"Zul'Drak",
			48.1,
			63.9,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25324] = {
		{
			25324,
			"A Prisoner of Interest",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			38917,
			"Alysra",
			"Mount Hyjal",
			48.4,
			19,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12727] = {
		{
			12727,
			"Bloody Breakout",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28912,
			"Koltira Deathweaver",
			"Plaguelands: The Scarlet Enclave",
			63,
			68,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12791] = {
		{
			12791,
			"The Magical Kingdom of Dalaran",
			74,
			"Dalaran",
			1,
		},
		{
			79,
		},
		{
			26471,
			"Image of Archmage Aethas Sunreaver",
			"Dragonblight",
			38,
			46.2,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25708] = {
		{
			25708,
			"Our Fallen Friends",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			9540,
			"Enohar Thunderbrew",
			"Blasted Lands",
			61.5,
			18.6,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25836] = {
		{
			25836,
			"Free Freewind Post",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40028,
			"Pozzik",
			"Thousand Needles",
			76,
			74.7,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25964] = {
		{
			25964,
			"Fallen But Not Forgotten",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40917,
			"Legionnaire Nazgrim",
			"Shimmering Expanse",
			39.1,
			78.59999999999999,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26092] = {
		{
			26092,
			"Orako's Report",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41908,
			"Orako",
			"Abyssal Depths",
			42.9,
			50.9,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26220] = {
		{
			26220,
			"Everything Is Better with Bacon",
			80,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			42506,
			"Marogg",
			"Orgrimmar",
			56.6,
			62.6,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26348] = {
		{
			26348,
			"The Coast Isn't Clear",
			15,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			392,
			"Captain Grayson",
			"Westfall",
			30.5,
			85.59999999999999,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13239] = {
		{
			13239,
			"Volatility",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30825,
			"Chief Engineer Copperclaw",
			"Icecrown",
			69.40000000000001,
			32.2,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26604] = {
		{
			26604,
			"Protecting Her Royal Highness Poobah",
			32,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2634,
			"Princess Poobah",
			"The Cape of Stranglethorn",
			59.4,
			79.09999999999999,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13367] = {
		{
			13367,
			"No Rest For The Wicked [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			63.1,
			42.4,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26860] = {
		{
			26860,
			"Thelsamar Blood Sausages",
			12,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1963,
			"Vidra Hearthstove",
			"Loch Modan",
			34.8,
			49.1,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26988] = {
		{
			26988,
			"Moving Things Along",
			35,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			14739,
			"Mystic Yayo'jin",
			"The Hinterlands",
			78.8,
			78.40000000000001,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27116] = {
		{
			27116,
			"The Winds of Loch Modan",
			18,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			44870,
			"Ando Blastenheimer",
			"Loch Modan",
			58.5,
			29,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27244] = {
		{
			27244,
			"The Lost Report",
			36,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23843,
			"Mordant Grimsby",
			"Dustwallow Marsh",
			55.4,
			26,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27372] = {
		{
			27372,
			"A Gift For Fiona",
			40,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			nil,
			nil,
			"Eastern Plaguelands",
			18.5,
			79.8,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27500] = {
		{
			27500,
			"Four Heads are Better than None",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			nil,
			nil,
			"Twilight Highlands",
			40.5,
			62.3,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27628] = {
		{
			27628,
			"Send Word to Phaoris",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			45799,
			"Prince Nadun",
			"Uldum",
			45.2,
			37.9,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27756] = {
		{
			27756,
			"The Foreman",
			16,
			"The Deadmines",
			1,
		},
		{
			1015,
		},
		{
			46612,
			"Lieutenant Horatio Laine",
			"The Deadmines",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27884] = {
		{
			27884,
			"The Sentinel's Pawn",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46757,
			"High Examiner Tae'thelan Bloodwatcher",
			"Badlands",
			52.2,
			51.2,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14007] = {
		{
			14007,
			"Steady Shot",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			34673,
			"Bamm Megabomb",
			"Kezan",
			60.3,
			77.2,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28140] = {
		{
			28140,
			"The Elder Crone",
			45,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47580,
			"Lakota Windsong",
			"Thousand Needles",
			30.5,
			49.3,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14135] = {
		{
			14135,
			"Up a Tree",
			11,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35111,
			"Runaway Shredder",
			"Azshara",
			29.6,
			75,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14263] = {
		{
			14263,
			"Waste of Thyme",
			18,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35754,
			"Quarla Whistlebreak",
			"Azshara",
			47,
			20.9,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14327] = {
		{
			14327,
			"My Word is My Bond",
			33,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			36163,
			"Khan Kammah",
			"Desolace",
			71.7,
			45.6,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14391] = {
		{
			14391,
			"Turning the Tables",
			19,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36436,
			"Spirit of Azuregos",
			"Azshara",
			27.9,
			40.3,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14455] = {
		{
			14455,
			"Stop the Thorncallers",
			3,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			36694,
			"Adana Thunderhorn",
			"Mulgore",
			46.3,
			82.59999999999999,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24685] = {
		{
			24685,
			"Dwarf Fortress",
			35,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38140,
			"Weezil Slipshadow",
			"Southern Barrens",
			50.7,
			86.8,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24813] = {
		{
			24813,
			"Territorial Fetish",
			4,
			"Echo Isles",
			1,
		},
		{
			10,
		},
		{
			38442,
			"Morakki",
			"Durotar",
			68,
			74.2,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24941] = {
		{
			24941,
			"Langridge Shot",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38620,
			"Thomas Paxton",
			"Southern Barrens",
			67,
			46.6,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25069] = {
		{
			25069,
			"The Secrets of Uldum",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38922,
			"Examiner Andoren Dawnrise",
			"Tanaris",
			33.3,
			77,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25197] = {
		{
			25197,
			"The Admiral Won't Back Down",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39322,
			"Horton Gimbleheart",
			"Southern Barrens",
			68.59999999999999,
			49.2,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25325] = {
		{
			25325,
			"Through the Dream",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40139,
			"Captain Saynna Stormrunner",
			"Mount Hyjal",
			56.7,
			18.8,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25453] = {
		{
			25453,
			"Improved Quality",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			7854,
			"Jangdor Swiftstrider",
			"Feralas",
			52.8,
			47.1,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25581] = {
		{
			25581,
			"An Occupation of Time",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40644,
			"Levia Dreamwaker",
			"Shimmering Expanse",
			49.7,
			57.2,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25709] = {
		{
			25709,
			"Curtail the Darktail",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			9540,
			"Enohar Thunderbrew",
			"Blasted Lands",
			61.5,
			18.6,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25837] = {
		{
			25837,
			"A Proper Peace Offerin'",
			28,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41278,
			"\"Cookie\" McWeaksauce",
			"Stonetalon Mountains",
			70.90000000000001,
			79.7,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8888] = {
		{
			8888,
			"The Magister's Apprentice",
			10,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15951,
			"Magister Duskwither",
			"Eversong Woods",
			60.3,
			61.5,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26093] = {
		{
			26093,
			"Northfold Manor",
			26,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2700,
			"Captain Nials",
			"Arathi Highlands",
			40,
			48.8,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26221] = {
		{
			26221,
			"Full Circle",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			42410,
			"Legionnaire Nazgrim",
			"Vashj'ir",
			64.5,
			68.7,
			613,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26349] = {
		{
			26349,
			"The Coastal Menace",
			15,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			392,
			"Captain Grayson",
			"Westfall",
			30.5,
			85.59999999999999,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9144] = {
		{
			9144,
			"Missing in the Ghostlands",
			10,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16210,
			"Magistrix Landra Dawnstrider",
			"Eversong Woods",
			44.1,
			70.7,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26605] = {
		{
			26605,
			"Grubby Little Paws",
			32,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2634,
			"Princess Poobah",
			"The Cape of Stranglethorn",
			59.4,
			79.09999999999999,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26733] = {
		{
			26733,
			"Control Sample",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			739,
			"Brother Nimetz",
			"Northern Stranglethorn",
			47.3,
			11.2,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26861] = {
		{
			26861,
			"Block the Gates",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44222,
			"Seer Galekk",
			"Deepholm",
			64.5,
			82.09999999999999,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9400] = {
		{
			9400,
			"The Assassin",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			3230,
			"Nazgrel",
			"Hellfire Peninsula",
			55,
			36,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27117] = {
		{
			27117,
			"Brute Strength",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44452,
			"Koltira Deathweaver",
			"Western Plaguelands",
			47.7,
			65.2,
			22,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9528] = {
		{
			9528,
			"A Cry For Help [Group]",
			10,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17312,
			"Magwin",
			"Azuremyst Isle",
			13.6,
			73.3,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27373] = {
		{
			27373,
			"Onward, to Light's Hope Chapel",
			40,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45417,
			"Fiona",
			"Eastern Plaguelands",
			9,
			66.5,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27501] = {
		{
			27501,
			"Four Heads are Better than None",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			nil,
			nil,
			"Twilight Highlands",
			40.6,
			62.4,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9720] = {
		{
			9720,
			"Balance Must Be Preserved",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17841,
			"Ysiel Windsinger",
			"Zangarmarsh",
			78.40000000000001,
			62.1,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27757] = {
		{
			27757,
			"The Darkest Depths",
			53,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			46172,
			"Baba Bogbrew",
			"Swamp of Sorrows",
			69.09999999999999,
			76.5,
			38,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27885] = {
		{
			27885,
			"The Warden's Game",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46769,
			"The Sentinel",
			"Badlands",
			50.4,
			54.5,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9912] = {
		{
			9912,
			"The Cenarion Expedition",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			16885,
			"Amythiel Mistwalker",
			"Hellfire Peninsula",
			16,
			52.2,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28141] = {
		{
			28141,
			"Relics of the Sun King",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47715,
			"Sun Priest Asaris",
			"Uldum",
			53,
			27.7,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28269] = {
		{
			28269,
			"Meet Me In Vir'sar",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48162,
			"Harrison Jones",
			"Uldum",
			23.5,
			60.3,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28397] = {
		{
			28397,
			"They Will Never Expect This...",
			23,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			48470,
			"Kingslayer Orkus",
			"Hillsbrad Foothills",
			29.2,
			83.90000000000001,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10168] = {
		{
			10168,
			"What the Soul Sees [Group]",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			19412,
			"D'ore",
			"Auchenai Crypts",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28653] = {
		{
			28653,
			"Shadow Priest Sarvis",
			2,
			"Deathknell",
			1,
		},
		{
			60,
		},
		{
			1740,
			"Deathguard Saltain",
			"Tirisfal Glades",
			31.7,
			65.59999999999999,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28781] = {
		{
			28781,
			"Targets of Opportunity [Dungeon]",
			85,
			"Lost City of the Tol'vir",
			1,
		},
		{
			1060,
		},
		{
			50038,
			"Captain Hadan",
			"Lost City of the Tol'vir",
			31.8,
			16.8,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28909] = {
		{
			28909,
			"Sauranok Will Point the Way",
			84,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			39605,
			"Garrosh Hellscream",
			"Orgrimmar",
			48.2,
			70.90000000000001,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10424] = {
		{
			10424,
			"Diagnosis: Critical",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20811,
			"Ghabar",
			"Netherstorm",
			43.6,
			35.1,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10488] = {
		{
			10488,
			"Protecting Our Own",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21117,
			"Gor'drek",
			"Blade's Edge Mountains",
			52.3,
			57.8,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10680] = {
		{
			10680,
			"The Hand of Gul'dan",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21937,
			"Earthmender Sophurus",
			"Shadowmoon Valley",
			36.3,
			56.9,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10744] = {
		{
			10744,
			"News of Victory",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21790,
			"Plexi",
			"Shadowmoon Valley",
			40.8,
			22.2,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10808] = {
		{
			10808,
			"Thwart the Dark Conclave",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22024,
			"Parshah",
			"Shadowmoon Valley",
			35.2,
			40.1,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10872] = {
		{
			10872,
			"Zuluhed the Whacked [Group]",
			70,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			22112,
			"Karynaku",
			"Shadowmoon Valley",
			69.8,
			61.3,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10936] = {
		{
			10936,
			"Trollbane is Looking for You",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			22430,
			"Assistant Klatu",
			"Hellfire Peninsula",
			54.3,
			63.7,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11000] = {
		{
			11000,
			"Into the Soulgrinder [Group]",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22941,
			"Mog'dorg the Wizened",
			"Blade's Edge Mountains",
			55.4,
			44.8,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11064] = {
		{
			11064,
			"Dragonmaw Race: The Ballad of Oldie McOld",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23340,
			"Murg \"Oldie\" Muckjaw",
			"Shadowmoon Valley",
			65.2,
			85.7,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11256] = {
		{
			11256,
			"Skorn Must Fall!",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24129,
			"Chieftain Ashtotem",
			"Howling Fjord",
			48.1,
			10.8,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11448] = {
		{
			11448,
			"The Explorers' League Outpost",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23548,
			"Beltrand McSorf",
			"Howling Fjord",
			60.2,
			61,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11512] = {
		{
			11512,
			"The Frozen Heart of Isuldof",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24539,
			"\"Silvermoon\" Harry",
			"Howling Fjord",
			35.1,
			80.90000000000001,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11576] = {
		{
			11576,
			"Monitoring the Rift: Cleftcliff Anomaly",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25291,
			"Librarian Garren",
			"Borean Tundra",
			45,
			33.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11640] = {
		{
			11640,
			"Words of Power",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			24703,
			"Chieftain Wintergale",
			"Borean Tundra",
			75.90000000000001,
			37.2,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11704] = {
		{
			11704,
			"King Mrgl-Mrgl",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25702,
			"Mordle Cogspinner",
			"Borean Tundra",
			57.5,
			18.6,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[46] = {
		{
			46,
			"Bounty on Murlocs",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			261,
			"Guard Thomas",
			"Elwynn Forest",
			74,
			72.2,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11896] = {
		{
			11896,
			"Weakness to Lightning",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25982,
			"Sage Earth and Sky",
			"Borean Tundra",
			77.2,
			38.5,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11960] = {
		{
			11960,
			"Planning for the Future",
			72,
			"Dragonblight",
			3,
		},
		{
			80,
		},
		{
			26228,
			"Trapper Mau'i",
			"Dragonblight",
			48.3,
			74.3,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[47] = {
		{
			47,
			"Gold Dust Exchange",
			7,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			241,
			"Remy \"Two Times\"",
			"Elwynn Forest",
			42.2,
			67.2,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12088] = {
		{
			12088,
			"Thassarian, the Death Knight",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26187,
			"Corporal Venn",
			"Borean Tundra",
			82,
			46.4,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12152] = {
		{
			12152,
			"Jin'arrak's End",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26886,
			"Kraz",
			"Grizzly Hills",
			73.90000000000001,
			34.2,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24430] = {
		{
			24430,
			"Blacken the Skies",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36903,
			"Jr. Bombardier Hackel",
			"Azshara",
			14.5,
			65.7,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24686] = {
		{
			24686,
			"Carried on the Waves",
			51,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38274,
			"Garl Stormclaw",
			"Un'Goro Crater",
			70.90000000000001,
			75.59999999999999,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24814] = {
		{
			24814,
			"An Ancient Enemy",
			5,
			"Echo Isles",
			1,
		},
		{
			10,
		},
		{
			38442,
			"Morakki",
			"Durotar",
			68,
			74,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12472] = {
		{
			12472,
			"Finality",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27136,
			"High Commander Halford Wyrmbane",
			"Dragonblight",
			78.5,
			48.2,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12536] = {
		{
			12536,
			"A Rough Ride",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28082,
			"High-Shaman Rakjak",
			"Sholazar Basin",
			55.1,
			69.2,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12664] = {
		{
			12664,
			"Dark Horizon",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28503,
			"Overlord Drakuru",
			"Zul'Drak",
			27.1,
			46.1,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25454] = {
		{
			25454,
			"Perfect Yeti Hide",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			nil,
			nil,
			"Feralas",
			55.6,
			56.5,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12792] = {
		{
			12792,
			"First Things First",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28039,
			"Commander Kunz",
			"Zul'Drak",
			40.2,
			66.59999999999999,
			496,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12856] = {
		{
			12856,
			"[80] Cold Hearted",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29592,
			"Brijana",
			"The Storm Peaks",
			53.1,
			65.8,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12920] = {
		{
			12920,
			"Catching up with Brann",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29651,
			"Boktar Bloodfury",
			"The Storm Peaks",
			37.3,
			49.7,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12984] = {
		{
			12984,
			"Valduran the Stormborn",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29801,
			"Bouldercrag the Rockshaper",
			"The Storm Peaks",
			31.4,
			38,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26094] = {
		{
			26094,
			"Striking Back",
			10,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41853,
			"Commander Stonebreaker",
			"Dun Morogh",
			78.2,
			20.5,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26222] = {
		{
			26222,
			"Scrounging for Parts",
			2,
			"Chill Breeze Valley",
			1,
		},
		{
			36,
		},
		{
			42553,
			"Engineer Grindspark",
			"Dun Morogh",
			34.3,
			34.7,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26350] = {
		{
			26350,
			"Priestess Hu'rala",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			2497,
			"Nimboya",
			"Northern Stranglethorn",
			0,
			0,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26478] = {
		{
			26478,
			"Playing Possum",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3916,
			"Shael'dryn",
			"Ashenvale",
			59.2,
			59.7,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13304] = {
		{
			13304,
			"Field Repairs",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			69.5,
			31.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13368] = {
		{
			13368,
			"No Rest For The Wicked [Group]",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			61.7,
			39.4,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26862] = {
		{
			26862,
			"Elemental Tampering [Dungeon]",
			15,
			"Ragefire Chasm",
			1,
		},
		{
			1007,
		},
		{
			44216,
			"Bovaal Whitehorn",
			"Ragefire Chasm",
			70.09999999999999,
			11.6,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13560] = {
		{
			13560,
			"An Ocean Not So Deep",
			13,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32979,
			"Gorbold Steelhand",
			"Darkshore",
			51,
			19.2,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13624] = {
		{
			13624,
			"A Squad of Your Own",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			11806,
			"Sentinel Onaeya",
			"Ashenvale",
			26.7,
			36.9,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27374] = {
		{
			27374,
			"The Maw of Madness",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			49374,
			"Lachlan MacGraff",
			"Twilight Highlands",
			55.2,
			17.4,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27502] = {
		{
			27502,
			"Up to the Citadel",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45669,
			"Cassius the White",
			"Twilight Highlands",
			43.4,
			57.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27630] = {
		{
			27630,
			"The High Priest's Vote",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47959,
			"Prince Nadun",
			"Uldum",
			55,
			34,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13880] = {
		{
			13880,
			"Hot Lava",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34290,
			"Core",
			"Ashenvale",
			52.2,
			56.6,
			43,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13944] = {
		{
			13944,
			"Small Hands, Short Fuse",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34395,
			"Tweedle",
			"Ashenvale",
			38,
			43.8,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14008] = {
		{
			14008,
			"Arcane Missiles",
			3,
			"Mage",
			1,
		},
		{
			2004,
		},
		{
			34689,
			"Fizz Lighter",
			"Kezan",
			59.4,
			73.90000000000001,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28142] = {
		{
			28142,
			"To the Withering",
			45,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			nil,
			nil,
			"Thousand Needles",
			36,
			60.6,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14136] = {
		{
			14136,
			"",
			0,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34771,
			"Girana the Blooded",
			"Icecrown",
			76.09999999999999,
			24.1,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28398] = {
		{
			28398,
			"The Pyromancer's Grimoire [Dungeon]",
			50,
			"Blackrock Depths",
			1,
		},
		{
			1002,
		},
		{
			331,
			"Maginor Dumas",
			"Stormwind City",
			49.3,
			87.59999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14264] = {
		{
			14264,
			"Wetter Than Wet",
			32,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35827,
			"Valishj",
			"Desolace",
			31.1,
			30.8,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14328] = {
		{
			14328,
			"Three Princes",
			34,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			36056,
			"Khan Leh'Prah",
			"Desolace",
			58.3,
			50.2,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14392] = {
		{
			14392,
			"Farewell, Minnow",
			19,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36676,
			"Azuregos",
			"Azshara",
			66.90000000000001,
			20.3,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14456] = {
		{
			14456,
			"Rite of Courage",
			3,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			36694,
			"Adana Thunderhorn",
			"Mulgore",
			46.3,
			82.59999999999999,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[59] = {
		{
			59,
			"Cloth and Leather Armor",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			261,
			"Guard Thomas",
			"Elwynn Forest",
			74,
			72.2,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[60] = {
		{
			60,
			"Kobold Candles",
			7,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			253,
			"William Pestle",
			"Elwynn Forest",
			43.3,
			65.8,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[62] = {
		{
			62,
			"The Fargodeep Mine",
			7,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			240,
			"Marshal Dughan",
			"Elwynn Forest",
			42.2,
			65.90000000000001,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24431] = {
		{
			24431,
			"Waterlogged Recipe",
			80,
			"Fishing",
			1,
		},
		{
			3007,
		},
		{
			34252,
			"Dubin Clay",
			"Dalaran",
			46.1,
			27.2,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24687] = {
		{
			24687,
			"Bouquets of Death",
			51,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38263,
			"Ithis Moonwarden",
			"Un'Goro Crater",
			76.40000000000001,
			48.4,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8313] = {
		{
			8313,
			"Sharing the Knowledge",
			56,
			"Cooking",
			1,
		},
		{
			3004,
		},
		{
			11881,
			"Twilight Geolord",
			"Silithus",
			43.7,
			42,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24943] = {
		{
			24943,
			"Re-Take the Courtyard",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38620,
			"Thomas Paxton",
			"Southern Barrens",
			67,
			46.6,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8633] = {
		{
			8633,
			"Enigma Robes [Raid]",
			60,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			15504,
			"Vethsera",
			"Ahn'Qiraj",
			59.6,
			68.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25583] = {
		{
			25583,
			"Upon the Scene of Battle",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			nil,
			nil,
			"Shimmering Expanse",
			40.5,
			75.5,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25711] = {
		{
			25711,
			"Eliminate the Okril'lon",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			5393,
			"Quartermaster Lungertz",
			"Blasted Lands",
			60.1,
			13.6,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25839] = {
		{
			25839,
			"The Ultrasafe Personnel Launcher",
			8,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41363,
			"Delber Cranktoggle",
			"Dun Morogh",
			56.8,
			47,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25967] = {
		{
			25967,
			"Losing Ground",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40919,
			"Wavespeaker Tulra",
			"Shimmering Expanse",
			29.5,
			78.90000000000001,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26095] = {
		{
			26095,
			"Stromgarde Badges",
			28,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2700,
			"Captain Nials",
			"Arathi Highlands",
			39.9,
			48.7,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26223] = {
		{
			26223,
			"Stalking the Stalkers",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			14741,
			"Huntsman Markhor",
			"The Hinterlands",
			79.09999999999999,
			79.5,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26351] = {
		{
			26351,
			"Mind Vision",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42812,
			"Priestess Hu'rala",
			"Northern Stranglethorn",
			0,
			0,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26479] = {
		{
			26479,
			"Return to Raene",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3916,
			"Shael'dryn",
			"Ashenvale",
			59.1,
			59.7,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26607] = {
		{
			26607,
			"They Drew First Blood",
			18,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			43221,
			"Colonel Troteman",
			"Redridge Mountains",
			28.6,
			40.8,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26735] = {
		{
			26735,
			"The Fate of Kurzen",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			469,
			"Lieutenant Doren",
			"Northern Stranglethorn",
			47.6,
			10.3,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26863] = {
		{
			26863,
			"Filthy Paws",
			13,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1343,
			"Mountaineer Stormpike",
			"Loch Modan",
			25.5,
			17.9,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9401] = {
		{
			9401,
			"A Strange Weapon",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			17062,
			"Fel Orc Corpse",
			"Hellfire Peninsula",
			33.6,
			43.5,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27119] = {
		{
			27119,
			"The Gordok Ogre Suit [Dungeon]",
			46,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			14338,
			"Knot Thimblejack",
			"Dire Maul",
			28.6,
			55.3,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27247] = {
		{
			27247,
			"Captain Vimes",
			36,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23951,
			"Lieutenant Aden",
			"Dustwallow Marsh",
			65.09999999999999,
			47.2,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27375] = {
		{
			27375,
			"The Weeping Wound",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46324,
			"Mallia",
			"Twilight Highlands",
			53.2,
			42.8,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27503] = {
		{
			27503,
			"Up to the Citadel",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45665,
			"Lady Cozwynn",
			"Twilight Highlands",
			45.2,
			75.3,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27631] = {
		{
			27631,
			"The High Commander's Vote",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47959,
			"Prince Nadun",
			"Uldum",
			55,
			34,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9785] = {
		{
			9785,
			"Blessings of the Ancients",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18070,
			"Windcaller Blackhoof",
			"Zangarmarsh",
			80.3,
			64.8,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9849] = {
		{
			9849,
			"Shattering the Veil",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18099,
			"Gordawg",
			"Nagrand",
			60.8,
			24.9,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9913] = {
		{
			9913,
			"The Consortium Needs You!",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18335,
			"Consortium Recruiter",
			"Nagrand",
			51.9,
			34.8,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9977] = {
		{
			9977,
			"The Ring of Blood: The Final Challenge [Group]",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18471,
			"Gurgthock",
			"Nagrand",
			42.9,
			20.7,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28271] = {
		{
			28271,
			"Reduced Productivity",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48186,
			"Harrison Jones",
			"Uldum",
			27,
			7.6,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28399] = {
		{
			28399,
			"Stones of Binding [Dungeon]",
			50,
			"Blackrock Depths",
			1,
		},
		{
			1002,
		},
		{
			461,
			"Demisette Cloyce",
			"Stormwind City",
			39.3,
			85.2,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28527] = {
		{
			28527,
			"Warchief's Command: Silithus!",
			55,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			nil,
			nil,
			"Thunder Bluff",
			42.4,
			58.1,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10233] = {
		{
			10233,
			"Torching Sunfury Hold",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19489,
			"Lieutenant-Sorcerer Morran",
			"Netherstorm",
			57.5,
			86.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28783] = {
		{
			28783,
			"The Source of Their Power [Dungeon]",
			85,
			"Lost City of the Tol'vir",
			1,
		},
		{
			1060,
		},
		{
			50038,
			"Captain Hadan",
			"Lost City of the Tol'vir",
			31.8,
			16.8,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10425] = {
		{
			10425,
			"Escape from the Staging Grounds",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20763,
			"Captured Protectorate Vanguard",
			"Netherstorm",
			57,
			37.7,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10489] = {
		{
			10489,
			"Felling an Ancient Tree",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			18248,
			"Nekthar",
			"Blade's Edge Mountains",
			51.9,
			58,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10553] = {
		{
			10553,
			"Voren'thal the Seer",
			65,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			18166,
			"Khadgar",
			"Shattrath City",
			54.6,
			44.2,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10617] = {
		{
			10617,
			"Silkwing Cocoons",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21895,
			"Taerek",
			"Blade's Edge Mountains",
			75.8,
			61.5,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10681] = {
		{
			10681,
			"The Hand of Gul'dan",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21938,
			"Earthmender Splinthoof",
			"Shadowmoon Valley",
			28.5,
			26.6,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10745] = {
		{
			10745,
			"News of Victory",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21789,
			"Nakansi",
			"Shadowmoon Valley",
			27.5,
			21.2,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10809] = {
		{
			10809,
			"Wanted: Worg Master Kruush",
			60,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			nil,
			nil,
			"Hellfire Peninsula",
			61.2,
			80.59999999999999,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10873] = {
		{
			10873,
			"Taken in the Night",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22364,
			"Scout Navrin",
			"Terokkar Forest",
			31.4,
			75.59999999999999,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10937] = {
		{
			10937,
			"Drill the Drillmaster [Group]",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16819,
			"Force Commander Danath Trollbane",
			"Hellfire Peninsula",
			56.6,
			66.7,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[86] = {
		{
			86,
			"Pie for Billy",
			6,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			247,
			"Billy Maclure",
			"Elwynn Forest",
			43.1,
			85.7,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11065] = {
		{
			11065,
			"Wrangle Some Aether Rays!",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			23335,
			"Skyguard Khatie",
			"Blade's Edge Mountains",
			27.9,
			51.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11129] = {
		{
			11129,
			"Kyle's Gone Missing!",
			7,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			23618,
			"Ahab Wheathoof",
			"Mulgore",
			48.5,
			53.5,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11257] = {
		{
			11257,
			"Gruesome, But Necessary",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24130,
			"Winterhoof Brave",
			"Howling Fjord",
			44.3,
			26.2,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11385] = {
		{
			11385,
			"Wanted: Sunseeker Channelers [Dungeon]",
			70,
			"Tempest Keep",
			3,
		},
		{
			1035,
		},
		{
			24370,
			"Nether-Stalker Mah'duun",
			"Shattrath City",
			75.40000000000001,
			37.2,
			481,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11641] = {
		{
			11641,
			"A Courageous Strike",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			24706,
			"Durm Icehide",
			"Borean Tundra",
			75.90000000000001,
			37.2,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11705] = {
		{
			11705,
			"Foolish Endeavors",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25729,
			"Shadowstalker Getry",
			"Borean Tundra",
			34.6,
			46.4,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11897] = {
		{
			11897,
			"Plug the Sinkholes",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25816,
			"Sergeant Hammerhill",
			"Borean Tundra",
			56.4,
			69.5,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[5981] = {
		{
			5981,
			"Rampaging Giants [Group]",
			60,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			10618,
			"Rivern Frostwind",
			"Winterspring",
			46.6,
			17.7,
			281,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12089] = {
		{
			12089,
			"Wanted: Magister Keldonus [Group]",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26504,
			"Soar Hawkfury",
			"Dragonblight",
			37.6,
			46.5,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12153] = {
		{
			12153,
			"The Iron Thane and His Anvil",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26883,
			"Raegar Breakbrow",
			"Grizzly Hills",
			77.09999999999999,
			48.7,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24432] = {
		{
			24432,
			"Sea Legs",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			36915,
			"Erunak Stonespeaker",
			"Kelp'thar Forest",
			45.2,
			23.4,
			610,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12281] = {
		{
			12281,
			"Understanding the Scourge War Machine",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27159,
			"Siege Engineer Quarterflash",
			"Dragonblight",
			77.8,
			50.3,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24816] = {
		{
			24816,
			"Who's Top of the Food Chain Now?",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38120,
			"Hobart Grapplehammer",
			"The Lost Isles",
			45.4,
			65.2,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12473] = {
		{
			12473,
			"An End And A Beginning",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27857,
			"Legion Commander Yorik",
			"Dragonblight",
			81.2,
			50.6,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25072] = {
		{
			25072,
			"A Few Good Goblins",
			47,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38706,
			"Zeke Bootscuff",
			"Tanaris",
			55.7,
			60.8,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25200] = {
		{
			25200,
			"Shredder Shutdown",
			10,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38124,
			"Assistant Greely",
			"The Lost Isles",
			54.4,
			17,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25328] = {
		{
			25328,
			"Gar'gol's Gotta Go",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39640,
			"Kristoff Manheim",
			"Mount Hyjal",
			27.2,
			40.8,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[6365] = {
		{
			6365,
			"Meats to Orgrimmar",
			7,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			3881,
			"Grimtak",
			"Durotar",
			50.8,
			42.8,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25584] = {
		{
			25584,
			"The Return of the Ancients",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40289,
			"Ysera",
			"Mount Hyjal",
			62,
			24.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25712] = {
		{
			25712,
			"Nethergarde Reigns",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			42262,
			"Leyan Steelson",
			"Blasted Lands",
			60.2,
			13.4,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12921] = {
		{
			12921,
			"A Change of Scenery",
			79,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29481,
			"Lok'lira the Crone",
			"The Storm Peaks",
			42.8,
			68.90000000000001,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12985] = {
		{
			12985,
			"Forging a Head",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30127,
			"Njormeld",
			"The Storm Peaks",
			63.3,
			63.2,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13049] = {
		{
			13049,
			"The Hero's Arms",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30381,
			"Xarantaur",
			"The Storm Peaks",
			65.7,
			51.4,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26224] = {
		{
			26224,
			"Hunt the Savages",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			14741,
			"Huntsman Markhor",
			"The Hinterlands",
			79.09999999999999,
			79.5,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26352] = {
		{
			26352,
			"Cozzle's Plan",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42813,
			"Kil'karil",
			"Northern Stranglethorn",
			63.3,
			39.9,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[6621] = {
		{
			6621,
			"King of the Foulweald",
			25,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			12696,
			"Senani Thunderheart",
			"Ashenvale",
			49.8,
			65.2,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26608] = {
		{
			26608,
			"Negotiations Terminated",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			43190,
			"Zaela",
			"Twilight Highlands",
			73.7,
			53.9,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26736] = {
		{
			26736,
			"Spared from Madness",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			469,
			"Lieutenant Doren",
			"Northern Stranglethorn",
			47.6,
			10.3,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26864] = {
		{
			26864,
			"The Bearer of Gnoll-edge",
			13,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1343,
			"Mountaineer Stormpike",
			"Loch Modan",
			25.5,
			17.9,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26992] = {
		{
			26992,
			"Agony Abounds",
			11,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			44778,
			"Apothecary Witherbloom",
			"Silverpine Forest",
			56.7,
			9.1,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13561] = {
		{
			13561,
			"Solace for the Highborne",
			11,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33177,
			"Arya Autumnlight",
			"Darkshore",
			46.8,
			33.3,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27248] = {
		{
			27248,
			"Mission to Mudsprocket",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23951,
			"Lieutenant Aden",
			"Dustwallow Marsh",
			65,
			47.1,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13689] = {
		{
			13689,
			"A Valiant Of Darnassus",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33625,
			"Arcanist Taelis",
			"Icecrown",
			76.40000000000001,
			19.4,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27504] = {
		{
			27504,
			"Even Dragons Bleed",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45528,
			"Calen",
			"Twilight Highlands",
			29.3,
			26.1,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27632] = {
		{
			27632,
			"Tanotep's Son",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46136,
			"Vizier Tanotep",
			"Uldum",
			56.5,
			53.4,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13881] = {
		{
			13881,
			"Consumed",
			18,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			34301,
			"Kathrena Winterwisp",
			"Darkshore",
			45.2,
			74.59999999999999,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27888] = {
		{
			27888,
			"Return to Blam",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46769,
			"The Sentinel",
			"Badlands",
			50.3,
			53.2,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14009] = {
		{
			14009,
			"Flash Heal",
			3,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			34692,
			"Sister Goldskimmer",
			"Kezan",
			57.8,
			77,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28144] = {
		{
			28144,
			"Thieving Little Monsters!",
			20,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			47554,
			"Captain Keyton",
			"Hillsbrad Foothills",
			33.3,
			73.59999999999999,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28272] = {
		{
			28272,
			"Missing Pieces",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48186,
			"Harrison Jones",
			"Uldum",
			27,
			7.6,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28400] = {
		{
			28400,
			"Heroes of the Horde!",
			23,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			48503,
			"Kingslayer Orkus",
			"Hillsbrad Foothills",
			25.8,
			84.8,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28528] = {
		{
			28528,
			"Hero's Call: Silithus!",
			55,
			"Silithus",
			4,
		},
		{
			19,
		},
		{
			nil,
			nil,
			"Darnassus",
			45.1,
			50.4,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14329] = {
		{
			14329,
			"Not So Fast!",
			34,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			36185,
			"Khan Shodo",
			"Desolace",
			40.5,
			95.5,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28784] = {
		{
			28784,
			"Join the Battle!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			198,
			"Khelden Bremen",
			"Elwynn Forest",
			49.6,
			39.4,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[114] = {
		{
			114,
			"The Escape",
			7,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			253,
			"William Pestle",
			"Elwynn Forest",
			43.3,
			65.8,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[123] = {
		{
			123,
			"The Collector",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			nil,
			nil,
			"Elwynn Forest",
			79.5,
			68.09999999999999,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24433] = {
		{
			24433,
			"Let Them Feast on Fear",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36730,
			"Chawg",
			"Azshara",
			14,
			64.8,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28655] = {
		{
			28655,
			"Wild, Wild, Wildhammer Wedding",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48368,
			"Grundy MacGraff",
			"Twilight Highlands",
			54.3,
			16.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24689] = {
		{
			24689,
			"Flowing to the North",
			51,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38274,
			"Garl Stormclaw",
			"Un'Goro Crater",
			70.59999999999999,
			76.09999999999999,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8314] = {
		{
			8314,
			"Unraveling the Mystery",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			15170,
			"Rutgar Glyphshaper",
			"Silithus",
			46.4,
			79.09999999999999,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24945] = {
		{
			24945,
			"Three Little Pygmies",
			9,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			36471,
			"Foreman Dampwick",
			"The Lost Isles",
			51.8,
			47.2,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25073] = {
		{
			25073,
			"Sen'jin Village",
			5,
			"Echo Isles",
			1,
		},
		{
			10,
		},
		{
			38966,
			"Vol'jin",
			"Durotar",
			68.8,
			88.8,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25201] = {
		{
			25201,
			"The Ultimate Footbomb Uniform",
			10,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38738,
			"Coach Crosscheck",
			"The Lost Isles",
			54.4,
			17,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25329] = {
		{
			25329,
			"Might of the Stonemaul",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39656,
			"Orhan Ogreblade",
			"Feralas",
			51.9,
			48.1,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[2159] = {
		{
			2159,
			"Dolanaar Delivery",
			5,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			6780,
			"Porthannius",
			"Teldrassil",
			60.2,
			41.6,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25585] = {
		{
			25585,
			"Quiet the Cannons",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40475,
			"Jinky Twizzlefixxit",
			"Thousand Needles",
			76.5,
			73.7,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25713] = {
		{
			25713,
			"Remove Their Arms",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			42264,
			"Buttonwillow McKittrick",
			"Blasted Lands",
			60.4,
			13.8,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25841] = {
		{
			25841,
			"Strike From Above",
			8,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41298,
			"Slamp Wobblecog",
			"Dun Morogh",
			62.5,
			53.6,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25969] = {
		{
			25969,
			"Hostile Waters",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40921,
			"Bloodguard Toldrek",
			"Shimmering Expanse",
			50.3,
			79,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26097] = {
		{
			26097,
			"Proof of Lies",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			42039,
			"High Chieftain Cliffwalker",
			"Stonetalon Mountains",
			45.1,
			32.8,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26225] = {
		{
			26225,
			"Pupellyverbos Port",
			31,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42464,
			"Grognard",
			"The Hinterlands",
			77.3,
			80,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26353] = {
		{
			26353,
			"Captain Sanders' Hidden Treasure",
			13,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			nil,
			nil,
			"Westfall",
			56.3,
			10.5,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26481] = {
		{
			26481,
			"A New Adornment",
			26,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3897,
			"Krolg",
			"Ashenvale",
			50.9,
			75.09999999999999,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26609] = {
		{
			26609,
			"The Bloodsail Buccaneers",
			32,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2490,
			"First Mate Crazz",
			"The Cape of Stranglethorn",
			42.6,
			72,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26737] = {
		{
			26737,
			"Stopping Kurzen's Legacy",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			469,
			"Lieutenant Doren",
			"Northern Stranglethorn",
			47.5,
			10.4,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26865] = {
		{
			26865,
			"Enemies Below",
			13,
			"Ragefire Chasm",
			1,
		},
		{
			1007,
		},
		{
			39605,
			"Garrosh Hellscream",
			"Orgrimmar",
			48.2,
			70.59999999999999,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26993] = {
		{
			26993,
			"Compendium of the Fallen [Dungeon]",
			33,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			44800,
			"Dominic",
			"Scarlet Monastery",
			45.4,
			66.90000000000001,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9466] = {
		{
			9466,
			"Wanted: Blacktalon the Savage [Group]",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16790,
			"Falconer Drenna Riverwind",
			"Hellfire Peninsula",
			27.9,
			60.3,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9530] = {
		{
			9530,
			"I've Got a Plant",
			9,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17240,
			"Admiral Odesyus",
			"Azuremyst Isle",
			47,
			70.3,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9594] = {
		{
			9594,
			"Signs of the Legion",
			14,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			nil,
			nil,
			"Bloodmyst Isle",
			36.7,
			72.3,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27505] = {
		{
			27505,
			"Draconic Mending",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45522,
			"Velastrasza",
			"Twilight Highlands",
			29.8,
			31.1,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27633] = {
		{
			27633,
			"The Blood God Hakkar",
			54,
			"Sunken Temple",
			1,
		},
		{
			1014,
		},
		{
			46077,
			"Lord Itharius",
			"The Temple of Atal'Hakkar",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9786] = {
		{
			9786,
			"The Boha'mu Ruins",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18003,
			"Anchorite Ahuurn",
			"Zangarmarsh",
			68.2,
			49.5,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27889] = {
		{
			27889,
			"New Kargath",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46664,
			"Dr. Hieronymus Blam",
			"Badlands",
			46.7,
			56.3,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9914] = {
		{
			9914,
			"A Head Full of Ivory",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18333,
			"Shadrek",
			"Nagrand",
			31.7,
			56.8,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9978] = {
		{
			9978,
			"By Any Means Necessary",
			63,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18446,
			"Earthbinder Tavgren",
			"Terokkar Forest",
			44.4,
			26.2,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28273] = {
		{
			28273,
			"Friend of a Friend",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48186,
			"Harrison Jones",
			"Uldum",
			27,
			7.6,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28401] = {
		{
			28401,
			"Slaves of the Firelord [Dungeon]",
			50,
			"Blackrock Depths",
			1,
		},
		{
			1002,
		},
		{
			20407,
			"Farseer Umbrua",
			"Stormwind City",
			65.8,
			31.2,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10170] = {
		{
			10170,
			"Return to the Greatmother",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18687,
			"Mother Kashur",
			"Nagrand",
			26,
			60.6,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10234] = {
		{
			10234,
			"One Demon's Trash...",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19728,
			"Mama Wheeler",
			"Netherstorm",
			46.6,
			56.5,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10298] = {
		{
			10298,
			"[70] Hero of the Brood",
			70,
			"Caverns of Time",
			1,
		},
		{
			1024,
		},
		{
			20201,
			"Sa'at",
			"The Black Morass",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13365] = {
		{
			13365,
			"Not a Bug",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			61.7,
			39.3,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10426] = {
		{
			10426,
			"Flora of the Eco-Domes",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20871,
			"Aurine Moonblaze",
			"Netherstorm",
			42.3,
			32.6,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28782] = {
		{
			28782,
			"A Bird of Legend",
			53,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			nil,
			nil,
			"Winterspring",
			52.8,
			40.6,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10554] = {
		{
			10554,
			"Ishanah",
			65,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			18166,
			"Khadgar",
			"Shattrath City",
			54.9,
			43.9,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10618] = {
		{
			10618,
			"The Softest Wings",
			65,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21896,
			"Silmara",
			"Blade's Edge Mountains",
			75.8,
			61.5,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10682] = {
		{
			10682,
			"A Time for Negotiation...",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22007,
			"Tree Warden Chawn",
			"Blade's Edge Mountains",
			62,
			39.6,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25960] = {
		{
			25960,
			"Not Entirely Unprepared",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40917,
			"Legionnaire Nazgrim",
			"Shimmering Expanse",
			39.6,
			54,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10810] = {
		{
			10810,
			"Damaged Mask",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			nil,
			nil,
			"Blade's Edge Mountains",
			68.8,
			34.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10874] = {
		{
			10874,
			"Veil Shalas: Signal Fires",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22272,
			"Kirrik the Awakened",
			"Terokkar Forest",
			37.3,
			51.4,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10938] = {
		{
			10938,
			"Darkmoon Blessings Deck",
			70,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			nil,
			nil,
			"Elwynn Forest",
			41.5,
			69.8,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[2751] = {
		{
			2751,
			"Barbaric Battlements",
			32,
			"Blacksmithing",
			1,
		},
		{
			3003,
		},
		{
			7790,
			"Orokk Omosh",
			"Orgrimmar",
			76.59999999999999,
			37.6,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11066] = {
		{
			11066,
			"Wrangle More Aether Rays!",
			70,
			"Blade's Edge Mountains",
			3,
		},
		{
			69,
		},
		{
			23335,
			"Skyguard Khatie",
			"Blade's Edge Mountains",
			28.1,
			51.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11130] = {
		{
			11130,
			"Oooh, Shinies! [Raid]",
			70,
			"Zul'Aman",
			1,
		},
		{
			1088,
		},
		{
			19227,
			"Griftah",
			"Shattrath City",
			65.7,
			68.8,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10295] = {
		{
			10295,
			"From the Abyss",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19683,
			"Ogath the Mad",
			"Hellfire Peninsula",
			61.8,
			81.5,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[176] = {
		{
			176,
			"Wanted:  \"Hogger\" [Group]",
			11,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			nil,
			nil,
			"Elwynn Forest",
			24.5,
			74.8,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11322] = {
		{
			11322,
			"The Cleansing",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24273,
			"Watcher Moonleaf",
			"Howling Fjord",
			30.1,
			28.6,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[3118] = {
		{
			3118,
			"Encrypted Sigil",
			3,
			"Rogue",
			1,
		},
		{
			2007,
		},
		{
			2077,
			"Melithar Staghelm",
			"Teldrassil",
			58,
			38.8,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24946] = {
		{
			24946,
			"Rockin' Powder",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38124,
			"Assistant Greely",
			"The Lost Isles",
			51.7,
			47.3,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11514] = {
		{
			11514,
			"Maintaining the Sunwell Portal",
			70,
			"Blade's Edge Mountains",
			3,
		},
		{
			69,
		},
		{
			24932,
			"Exarch Nasuun",
			"Shattrath City",
			49.3,
			42.3,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14202] = {
		{
			14202,
			"Survey the Lakeshore",
			12,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35088,
			"Custer Clubnik",
			"Azshara",
			29.6,
			66.90000000000001,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[182] = {
		{
			182,
			"The Troll Menace",
			4,
			"Coldridge Valley",
			1,
		},
		{
			36,
		},
		{
			786,
			"Grelin Whitebeard",
			"Dun Morogh",
			32.1,
			74.2,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11706] = {
		{
			11706,
			"The Collapse",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			24730,
			"Wind Tamer Barah",
			"Borean Tundra",
			75.5,
			35.8,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[184] = {
		{
			184,
			"Furlbrow's Deed",
			10,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			nil,
			nil,
			"Elwynn Forest",
			24.8,
			95.2,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[185] = {
		{
			185,
			"Tiger Hunting",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			717,
			"Ajeck Rouack",
			"Northern Stranglethorn",
			44.5,
			22.7,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11898] = {
		{
			11898,
			"Breaking Through [Group]",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			24703,
			"Chieftain Wintergale",
			"Borean Tundra",
			75.90000000000001,
			37.3,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11962] = {
		{
			11962,
			"One Last Delivery",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26083,
			"Gerald Green",
			"Borean Tundra",
			58.2,
			62.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12026] = {
		{
			12026,
			"The Damaged Journal",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26260,
			"Kurun",
			"Grizzly Hills",
			64.2,
			19.7,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12090] = {
		{
			12090,
			"Wanted: Gigantaur [Group]",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26504,
			"Soar Hawkfury",
			"Dragonblight",
			37.6,
			46.5,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12154] = {
		{
			12154,
			"Blackout",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26883,
			"Raegar Breakbrow",
			"Grizzly Hills",
			77.09999999999999,
			48.7,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24434] = {
		{
			24434,
			"Commando Drop",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36919,
			"Andorel Sunsworn",
			"Azshara",
			13.9,
			64.5,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12282] = {
		{
			12282,
			"Imprints on the Past",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27314,
			"Zelig the Visionary",
			"Dragonblight",
			79.09999999999999,
			47.2,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[3087] = {
		{
			3087,
			"[3] [3] Etched Parchment",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			3143,
			"Gornek",
			"Durotar",
			43.2,
			68.2,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[3103] = {
		{
			3103,
			"Hallowed Letter",
			3,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[3119] = {
		{
			3119,
			"Hallowed Sigil",
			3,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			2079,
			"Ilthalaine",
			"Teldrassil",
			58.1,
			38.9,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25074] = {
		{
			25074,
			"Meet Me at Triumph",
			33,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38323,
			"General Hawthorne",
			"Southern Barrens",
			49.9,
			49.6,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25202] = {
		{
			25202,
			"The Fastest Way to His Heart",
			11,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38647,
			"Izzy",
			"The Lost Isles",
			54,
			17,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25330] = {
		{
			25330,
			"Waste of Flesh",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39451,
			"Instructor Cargall",
			"Mount Hyjal",
			77,
			62.2,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25458] = {
		{
			25458,
			"General Skessesh",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39723,
			"Tambre",
			"Feralas",
			32.6,
			45.7,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12794] = {
		{
			12794,
			"The Magical Kingdom of Dalaran",
			74,
			"Dalaran",
			1,
		},
		{
			79,
		},
		{
			29161,
			"Magistrix Haelenai",
			"Grizzly Hills",
			32,
			59.8,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25714] = {
		{
			25714,
			"Watcher Mahar Ba",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			9540,
			"Enohar Thunderbrew",
			"Blasted Lands",
			61.5,
			18.6,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25842] = {
		{
			25842,
			"Firefight",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			41381,
			"Nordu",
			"Mount Hyjal",
			27.3,
			55.3,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12986] = {
		{
			12986,
			"Fate of the Titans",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30052,
			"Creteus",
			"The Storm Peaks",
			40.4,
			60.1,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26098] = {
		{
			26098,
			"Betrayal at the Grove",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			42091,
			"Orthus Cliffwalker",
			"Stonetalon Mountains",
			39.7,
			46.4,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13114] = {
		{
			13114,
			"Sewer Stew",
			80,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			29631,
			"Awilo Lon'gomba",
			"Dalaran",
			70,
			38.6,
			504,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26354] = {
		{
			26354,
			"Captain Sanders' Hidden Treasure",
			13,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			nil,
			nil,
			"Westfall",
			25.9,
			47.8,
			39,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26482] = {
		{
			26482,
			"True Power of the Rod",
			25,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3897,
			"Krolg",
			"Ashenvale",
			50.9,
			75.09999999999999,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13306] = {
		{
			13306,
			"Raise the Barricades",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			63.3,
			43,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26738] = {
		{
			26738,
			"Just Hatched",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			nil,
			nil,
			"Northern Stranglethorn",
			57.6,
			23.4,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26866] = {
		{
			26866,
			"Enemies Below",
			13,
			"Ragefire Chasm",
			1,
		},
		{
			1007,
		},
		{
			36648,
			"Baine Bloodhoof",
			"Thunder Bluff",
			59.7,
			51.7,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26994] = {
		{
			26994,
			"Without Rhyme or Reason",
			36,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			44804,
			"Dominic",
			"Scarlet Monastery",
			67.90000000000001,
			32.1,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13562] = {
		{
			13562,
			"The Final Flame of Bashal'Aran",
			11,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32971,
			"Ranger Glynda Nal'Shea",
			"Darkshore",
			50.9,
			20.1,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13626] = {
		{
			13626,
			"Respect for the Fallen",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			11806,
			"Sentinel Onaeya",
			"Ashenvale",
			26.7,
			36.9,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27378] = {
		{
			27378,
			"The Worldbreaker",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48005,
			"Deathwing",
			"The Maelstrom",
			33.3,
			50.7,
			751,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27506] = {
		{
			27506,
			"Life from Death",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45562,
			"Baleflame",
			"Twilight Highlands",
			29.8,
			31.3,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[216] = {
		{
			216,
			"Between a Rock and a Thistlefur",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			12757,
			"Karang Amakkar",
			"Ashenvale",
			37.8,
			43.5,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13882] = {
		{
			13882,
			"The Seeds of Life",
			18,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			34301,
			"Kathrena Winterwisp",
			"Darkshore",
			45.2,
			74.7,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27890] = {
		{
			27890,
			"The Bad Dogs",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46654,
			"Rhea",
			"Badlands",
			18.1,
			42.5,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14010] = {
		{
			14010,
			"Eviscerate",
			3,
			"Rogue",
			1,
		},
		{
			2007,
		},
		{
			34693,
			"Slinky Sharpshiv",
			"Kezan",
			59.4,
			77.40000000000001,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14074] = {
		{
			14074,
			"A Leg Up",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34880,
			"Narasi Snowdawn",
			"Icecrown",
			76.3,
			19.6,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28274] = {
		{
			28274,
			"Two Tents",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48203,
			"Sullah",
			"Uldum",
			26.7,
			8,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28402] = {
		{
			28402,
			"Schnottz So Fast",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48186,
			"Harrison Jones",
			"Uldum",
			27,
			7.6,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28530] = {
		{
			28530,
			"Scalding Signs",
			50,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			9298,
			"Donova Snowden",
			"Winterspring",
			25.2,
			58.4,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14330] = {
		{
			14330,
			"Behind Closed Doors",
			35,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Desolace",
			30.9,
			65.2,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14394] = {
		{
			14394,
			"Death to Agogridon",
			35,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			36398,
			"Khan Leh'Prah",
			"Desolace",
			72.2,
			67.5,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14458] = {
		{
			14458,
			"Go to Adana",
			2,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			2980,
			"Grull Hawkwind",
			"Mulgore",
			49,
			78.3,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25456] = {
		{
			25456,
			"Back in One Piece",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39882,
			"The Great Sambino",
			"Shimmering Expanse",
			41.3,
			34.3,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27882] = {
		{
			27882,
			"It's Not About History, It's About Power",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46757,
			"High Examiner Tae'thelan Bloodwatcher",
			"Badlands",
			52.1,
			51.2,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27369] = {
		{
			27369,
			"Greasing the Wheel",
			40,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45431,
			"Gidwin Goldbraids",
			"Eastern Plaguelands",
			4.2,
			36.1,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10041] = {
		{
			10041,
			"Who Are They?",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18714,
			"Scout Neftis",
			"Terokkar Forest",
			39,
			43.7,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28529] = {
		{
			28529,
			"Writings of the Void",
			12,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			nil,
			nil,
			"Darkshore",
			52.3,
			31,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27758] = {
		{
			27758,
			"The Carpenter",
			16,
			"The Deadmines",
			1,
		},
		{
			1015,
		},
		{
			nil,
			nil,
			"The Deadmines",
			43.7,
			82.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[196] = {
		{
			196,
			"Raptor Prowess",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			715,
			"Hemet Nesingwary Jr.",
			"Northern Stranglethorn",
			44,
			23.4,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14387] = {
		{
			14387,
			"[30] Lay of the Land",
			30,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			5396,
			"Captain Pentigast",
			"Desolace",
			66.7,
			11,
			101,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14323] = {
		{
			14323,
			"Absorbent",
			17,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35142,
			"Ergll",
			"Azshara",
			70.40000000000001,
			36.2,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[236] = {
		{
			236,
			"Fueling the Demolishers [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31108,
			"Siege Master Stouthandle",
			"Wintergrasp",
			47.2,
			21,
			501,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25196] = {
		{
			25196,
			"The Dranosh'ar Blockade",
			10,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			3142,
			"Orgnil Soulscar",
			"Durotar",
			52.2,
			43.1,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14195] = {
		{
			14195,
			"All Becoming Clearer",
			31,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Desolace",
			77,
			18.1,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[239] = {
		{
			239,
			"Westbrook Garrison Needs Help!",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			240,
			"Marshal Dughan",
			"Elwynn Forest",
			42.1,
			65.8,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14131] = {
		{
			14131,
			"A Little Pick-me-up",
			17,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35142,
			"Ergll",
			"Azshara",
			70.3,
			36.2,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14067] = {
		{
			14067,
			"The Stolen Silver",
			15,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			nil,
			nil,
			"Northern Barrens",
			62.3,
			61.3,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9605] = {
		{
			9605,
			"Hippogryph Master Stephanos",
			7,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			16768,
			"Nurguni",
			"The Exodar",
			56.8,
			49.9,
			471,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13763] = {
		{
			13763,
			"A Worthy Weapon",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33405,
			"Akinos",
			"Icecrown",
			76.40000000000001,
			24.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13875] = {
		{
			13875,
			"Gurtar's Request",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34242,
			"Guardian Gurtar",
			"Ashenvale",
			89.5,
			48.7,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13811] = {
		{
			13811,
			"Among the Champions",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33771,
			"Luuri",
			"Icecrown",
			69.90000000000001,
			23.3,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27492] = {
		{
			27492,
			"Ogres & Ettins",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45668,
			"Kurdran Wildhammer",
			"Twilight Highlands",
			43.4,
			57.4,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13683] = {
		{
			13683,
			"Stopping the Rituals",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33727,
			"Anchorite Buurq",
			"Ashenvale",
			86.5,
			43.7,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13619] = {
		{
			13619,
			"Final Report",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33294,
			"Gorat",
			"Ashenvale",
			64.09999999999999,
			84.5,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14146] = {
		{
			14146,
			"Defend the Gates!",
			11,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			nil,
			nil,
			"Azshara",
			30.5,
			77.2,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12867] = {
		{
			12867,
			"Baby Stealers",
			78,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29732,
			"Fjorlin Frostbrow",
			"The Storm Peaks",
			29.8,
			75.7,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25840] = {
		{
			25840,
			"Eliminate the Resistance",
			8,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41298,
			"Slamp Wobblecog",
			"Dun Morogh",
			62.5,
			53.6,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13363] = {
		{
			13363,
			"Argent Aid",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			68.2,
			26.3,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10180] = {
		{
			10180,
			"[69] Can't Stay Away",
			69,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			19045,
			"Oloraak",
			"Shattrath City",
			58.2,
			15.3,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26468] = {
		{
			26468,
			"The Branch of Cenarius",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3920,
			"Anilia",
			"Ashenvale",
			78.3,
			44.9,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24435] = {
		{
			24435,
			"Mop Up",
			16,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36920,
			"Lieutenant Drex",
			"Azshara",
			41.4,
			53.6,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13171] = {
		{
			13171,
			"From Whence They Came",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30946,
			"Keritose Bloodblade",
			"Icecrown",
			44.1,
			24.6,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24691] = {
		{
			24691,
			"Peculiar Delicacies",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			10977,
			"Quixxil",
			"Un'Goro Crater",
			54.8,
			63.8,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8315] = {
		{
			8315,
			"The Calling [Group]",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			15183,
			"Geologist Larksbane",
			"Silithus",
			0,
			0,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24947] = {
		{
			24947,
			"Momentum",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38534,
			"Megs Dreadshredder",
			"Tanaris",
			51.2,
			29.9,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25075] = {
		{
			25075,
			"Pick-a-Part",
			33,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39084,
			"Mizzy Pistonhammer",
			"Southern Barrens",
			49.4,
			67.5,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25203] = {
		{
			25203,
			"What Kind of Name is Chip, Anyway?",
			11,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38441,
			"Ace",
			"The Lost Isles",
			54.2,
			17.1,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13107] = {
		{
			13107,
			"Mustard Dogs!",
			80,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			28705,
			"Katherine Lee",
			"Dalaran",
			40.2,
			65.90000000000001,
			504,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25459] = {
		{
			25459,
			"Ophidophobia",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			39883,
			"Adarrah",
			"Kelp'thar Forest",
			57.2,
			28.8,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8699] = {
		{
			8699,
			"Band of Vaulted Secrets [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15498,
			"Windcaller Yessendra",
			"Ahn'Qiraj: The Fallen Kingdom",
			0,
			0,
			772,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8763] = {
		{
			8763,
			"The Hero of the Day",
			85,
			"Winter Veil",
			1,
		},
		{
			4013,
		},
		{
			13433,
			"Wulmort Jinglepocket",
			"Ironforge",
			33.3,
			67.2,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8827] = {
		{
			8827,
			"Winter's Presents",
			85,
			"Winter Veil",
			1,
		},
		{
			4013,
		},
		{
			15732,
			"Wonderform Operator",
			"Stormwind City",
			67.7,
			71.5,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8891] = {
		{
			8891,
			"Abandoned Investigations",
			10,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			nil,
			nil,
			"Eversong Woods",
			69.2,
			52.1,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26099] = {
		{
			26099,
			"Is This Justice?",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			42039,
			"High Chieftain Cliffwalker",
			"Stonetalon Mountains",
			45.1,
			32.8,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26227] = {
		{
			26227,
			"Careful, This Fruit Bites Back",
			80,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			42506,
			"Marogg",
			"Orgrimmar",
			56.5,
			62.7,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26355] = {
		{
			26355,
			"Captain Sanders' Hidden Treasure",
			13,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			nil,
			nil,
			"Westfall",
			40.5,
			47.8,
			39,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26483] = {
		{
			26483,
			"Gan'dranda",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43108,
			"Kerr Ironsight",
			"The Hinterlands",
			66.3,
			44.3,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26611] = {
		{
			26611,
			"The Baron Must Be Told",
			32,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2490,
			"First Mate Crazz",
			"The Cape of Stranglethorn",
			42.5,
			72,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9275] = {
		{
			9275,
			"A Little Dash of Seasoning",
			19,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16464,
			"Apothecary Venustus",
			"Ghostlands",
			72.7,
			31.6,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26867] = {
		{
			26867,
			"Enemies Below",
			13,
			"Ragefire Chasm",
			1,
		},
		{
			1007,
		},
		{
			10181,
			"Lady Sylvanas Windrunner",
			"Undercity",
			57.8,
			92.2,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26995] = {
		{
			26995,
			"Guts and Gore",
			11,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			44784,
			"High Apothecary Shana T'veen",
			"Silverpine Forest",
			56.3,
			8.6,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27123] = {
		{
			27123,
			"Deepholm, Realm of Earth",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			45042,
			"Thrall",
			"The Maelstrom",
			33.3,
			50.1,
			751,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9531] = {
		{
			9531,
			"Tree's Company",
			9,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17240,
			"Admiral Odesyus",
			"Azuremyst Isle",
			47,
			70.09999999999999,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27379] = {
		{
			27379,
			"The Terrors of Iso'rath",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48059,
			"Earthcaller Yevaa",
			"Twilight Highlands",
			48.7,
			16.6,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27507] = {
		{
			27507,
			"Encroaching Twilight",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45528,
			"Calen",
			"Twilight Highlands",
			29.4,
			26,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27635] = {
		{
			27635,
			"Decontamination",
			2,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			46274,
			"Gaffer Coilspring",
			"Dun Morogh",
			28,
			37.8,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9787] = {
		{
			9787,
			"Idols of the Feralfen",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18003,
			"Anchorite Ahuurn",
			"Zangarmarsh",
			68.2,
			49.3,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9851] = {
		{
			9851,
			"Clefthoof Mastery [Group]",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18180,
			"Hemet Nesingwary",
			"Nagrand",
			71.5,
			40.7,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26084] = {
		{
			26084,
			"Hammerfall",
			27,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			41949,
			"Dark Ranger Alina",
			"Arathi Highlands",
			13.4,
			35.6,
			16,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9979] = {
		{
			9979,
			"Wind Trader Lathrai",
			63,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			18482,
			"Empoor",
			"Terokkar Forest",
			41.1,
			25.7,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28275] = {
		{
			28275,
			"Bomb's Away!",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48254,
			"Sergeant Gray",
			"Tol Barad Peninsula",
			73.09999999999999,
			60.8,
			709,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28403] = {
		{
			28403,
			"Bad Datas",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48528,
			"Harrison Jones",
			"Uldum",
			36.2,
			20.3,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28531] = {
		{
			28531,
			"Hero's Call: Desolace!",
			30,
			"Desolace",
			4,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Darnassus",
			45,
			49.8,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28659] = {
		{
			28659,
			"The Leftovers",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48069,
			"Commander Zanoth",
			"Tol Barad",
			0,
			0,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28787] = {
		{
			28787,
			"Join the Battle!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			915,
			"Jorik Kerridan",
			"Elwynn Forest",
			50.5,
			40,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12979] = {
		{
			12979,
			"Armor of Darkness",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			nil,
			nil,
			"The Storm Peaks",
			30.2,
			46.4,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10427] = {
		{
			10427,
			"Creatures of the Eco-Domes",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20871,
			"Aurine Moonblaze",
			"Netherstorm",
			42.3,
			32.5,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13698] = {
		{
			13698,
			"Explosives Shredding",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			17287,
			"Sentinel Luciel Starwhisper",
			"Ashenvale",
			83.90000000000001,
			62.6,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10555] = {
		{
			10555,
			"Malaise",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21469,
			"Daranelle",
			"Blade's Edge Mountains",
			37.1,
			65.59999999999999,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10619] = {
		{
			10619,
			"The Ashtongue Tribe",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21822,
			"Vindicator Aluumen",
			"Shadowmoon Valley",
			61.2,
			29.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10683] = {
		{
			10683,
			"Tablets of Baa'ri",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21955,
			"Arcanist Thelis",
			"Shadowmoon Valley",
			56.2,
			59.5,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10747] = {
		{
			10747,
			"Whelps of the Wyrmcult",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22007,
			"Tree Warden Chawn",
			"Blade's Edge Mountains",
			61.9,
			39.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10811] = {
		{
			10811,
			"Seek Out Neltharaku",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22113,
			"Mordenai",
			"Shadowmoon Valley",
			60.7,
			58.8,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10875] = {
		{
			10875,
			"Report to Nazgrel",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16588,
			"Apothecary Antonivich",
			"Hellfire Peninsula",
			52.3,
			36.5,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10939] = {
		{
			10939,
			"Darkmoon Storms Deck",
			70,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			14847,
			"Professor Thaddeus Paleo",
			"Elwynn Forest",
			41.4,
			69.90000000000001,
			30,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11003] = {
		{
			11003,
			"The Fall of Magtheridon",
			70,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			nil,
			nil,
			"Throne of the Tides",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11067] = {
		{
			11067,
			"Dragonmaw Race: Trope the Filth-Belcher",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23342,
			"Trope the Filth-Belcher",
			"Shadowmoon Valley",
			65.2,
			85.5,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25700] = {
		{
			25700,
			"Loramus Thalipedes Awaits",
			56,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			7506,
			"Bloodmage Lynnore",
			"Blasted Lands",
			39.2,
			36.2,
			19,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9212] = {
		{
			9212,
			"Escape from the Catacombs",
			17,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16295,
			"Ranger Lilatha",
			"Ghostlands",
			63,
			32.6,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11259] = {
		{
			11259,
			"Towers of Certain Doom",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24130,
			"Winterhoof Brave",
			"Howling Fjord",
			44.3,
			26.2,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11323] = {
		{
			11323,
			"In Worg's Clothing",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24186,
			"Sage Mistwalker",
			"Howling Fjord",
			31.1,
			24.5,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12723] = {
		{
			12723,
			"Behind Scarlet Lines",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28911,
			"Prince Keleseth",
			"Plaguelands: The Scarlet Enclave",
			54.3,
			57.4,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11451] = {
		{
			11451,
			"Alicia's Poem",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			24729,
			"Alicia",
			"Stormwind City",
			82,
			28.8,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11515] = {
		{
			11515,
			"Blood for Blood",
			70,
			"Hellfire Peninsula",
			3,
		},
		{
			70,
		},
		{
			24937,
			"Magistrix Seyla",
			"Hellfire Peninsula",
			58.2,
			17.7,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25316] = {
		{
			25316,
			"As Hyjal Burns",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39865,
			"Emissary Windsong",
			"Moonglade",
			45.5,
			44.8,
			241,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11643] = {
		{
			11643,
			"Mobu's Pneumatic Tank Transjigamarig",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25475,
			"Mobu",
			"Borean Tundra",
			32.1,
			54.3,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11707] = {
		{
			11707,
			"Distress Call",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25737,
			"Airman Skyhopper",
			"Borean Tundra",
			58.8,
			68.7,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12595] = {
		{
			12595,
			"In Search of Bigger Game",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27986,
			"Hemet Nesingwary",
			"Sholazar Basin",
			27.1,
			58.7,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25060] = {
		{
			25060,
			"Define \"Crazy\"",
			48,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39059,
			"Kelsey Steelspark",
			"Tanaris",
			50,
			83,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11899] = {
		{
			11899,
			"Souls of the Decursed",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25602,
			"Greatmother Taiga",
			"Borean Tundra",
			77.3,
			37.1,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11963] = {
		{
			11963,
			"Weapons for Farshire",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25235,
			"Hilda Stoneforge",
			"Borean Tundra",
			57.3,
			66.59999999999999,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12027] = {
		{
			12027,
			"Mr. Floppy's Perilous Adventure",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26588,
			"Emily",
			"Grizzly Hills",
			49.2,
			34.1,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12091] = {
		{
			12091,
			"Wanted: Dreadtalon [Group]",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26504,
			"Soar Hawkfury",
			"Dragonblight",
			37.6,
			46.5,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24932] = {
		{
			24932,
			"Cutting Losses",
			47,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38706,
			"Zeke Bootscuff",
			"Tanaris",
			55.7,
			60.8,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12219] = {
		{
			12219,
			"The Failed World Tree",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27295,
			"Hierophant Thayreen",
			"Grizzly Hills",
			31.2,
			59.5,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12283] = {
		{
			12283,
			"The Truth Will Out",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27350,
			"Agent Skully",
			"Dragonblight",
			73.59999999999999,
			73.59999999999999,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24692] = {
		{
			24692,
			"The Fledgling Colossus [Group]",
			53,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9271,
			"Hol'anyee Marshal",
			"Un'Goro Crater",
			55.1,
			62.2,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12411] = {
		{
			12411,
			"A Sister's Pledge",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26935,
			"Sasha",
			"Grizzly Hills",
			57.5,
			41.3,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24948] = {
		{
			24948,
			"Lifting the Siege",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38620,
			"Thomas Paxton",
			"Southern Barrens",
			67,
			46.6,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12539] = {
		{
			12539,
			"Hoofing It",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28216,
			"Zepik the Gorloc Hunter",
			"Sholazar Basin",
			44.5,
			33.1,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12603] = {
		{
			12603,
			"Sharpening Your Talons",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28376,
			"Dorian Drakestalker",
			"Sholazar Basin",
			42.3,
			28.7,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25332] = {
		{
			25332,
			"Get Me Outta Here!",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39640,
			"Kristoff Manheim",
			"Mount Hyjal",
			27.2,
			40.8,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25460] = {
		{
			25460,
			"The Earth Rises",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39925,
			"Anren Shadowseeker",
			"Mount Hyjal",
			64,
			22.7,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12795] = {
		{
			12795,
			"Taking a Stand",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28532,
			"Bloodrose Datura",
			"Zul'Drak",
			14.2,
			74,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25716] = {
		{
			25716,
			"Cultists at our Doorstep",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			5385,
			"Watcher Mahar Ba",
			"Blasted Lands",
			63.2,
			16.8,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25844] = {
		{
			25844,
			"Sating the Savage Beast",
			29,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41278,
			"\"Cookie\" McWeaksauce",
			"Stonetalon Mountains",
			70.90000000000001,
			79.8,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12987] = {
		{
			12987,
			"[80] Mounting Hodir's Helm",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30127,
			"Njormeld",
			"The Storm Peaks",
			63.3,
			63.2,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13051] = {
		{
			13051,
			"[80] Territorial Trespass",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29445,
			"Thorim",
			"The Storm Peaks",
			33.4,
			57.9,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13115] = {
		{
			13115,
			"Cheese for Glowergold",
			80,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			29631,
			"Awilo Lon'gomba",
			"Dalaran",
			70.3,
			38.8,
			504,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13179] = {
		{
			13179,
			"No Mercy for the Merciless [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31036,
			"Commander Zanneth",
			"Wintergrasp",
			72.09999999999999,
			32.1,
			501,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26484] = {
		{
			26484,
			"To Stonehearth's Aid",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42573,
			"Earthcaller Yevaa",
			"Deepholm",
			49.5,
			53.3,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26612] = {
		{
			26612,
			"Details of the Attack",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2496,
			"Baron Revilgaz",
			"The Cape of Stranglethorn",
			41.2,
			73.09999999999999,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26740] = {
		{
			26740,
			"Krazek's Cookery",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			770,
			"Corporal Kaleb",
			"Northern Stranglethorn",
			47.2,
			10.7,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26868] = {
		{
			26868,
			"Axis of Awful",
			15,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			44345,
			"Cannary Caskshot",
			"Loch Modan",
			34.8,
			49,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26996] = {
		{
			26996,
			"Right Under Their Noses",
			39,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			4302,
			"Scarlet Champion",
			"Scarlet Monastery",
			49.3,
			43.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27124] = {
		{
			27124,
			"Unfinished Gordok Business [Dungeon]",
			47,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			14325,
			"Captain Kromcrush",
			"Dire Maul",
			31.9,
			49.6,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27252] = {
		{
			27252,
			"The Black Shield",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23567,
			"Inspector Tarem",
			"Dustwallow Marsh",
			29.6,
			48.5,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27380] = {
		{
			27380,
			"Nightmare",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48059,
			"Earthcaller Yevaa",
			"Twilight Highlands",
			48.6,
			16.6,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27508] = {
		{
			27508,
			"Far from the Nest",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45518,
			"Lirastrasza",
			"Twilight Highlands",
			29.4,
			26.1,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27636] = {
		{
			27636,
			"Just You and Mathias",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46137,
			"Cho'gall",
			"Twilight Highlands",
			37.6,
			65.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27764] = {
		{
			27764,
			"A Strange Request",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46652,
			"Dolph Blastus",
			"Badlands",
			65,
			38.3,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13947] = {
		{
			13947,
			"Blastranaar!",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34359,
			"Captain Goggath",
			"Ashenvale",
			38.2,
			43.1,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14011] = {
		{
			14011,
			"Primal Strike",
			3,
			"Shaman",
			1,
		},
		{
			2008,
		},
		{
			34695,
			"Maxx Avalanche",
			"Kezan",
			59.6,
			76,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28148] = {
		{
			28148,
			"Culling the Corrupted",
			45,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			10921,
			"Taronn Redfeather",
			"Felwood",
			51,
			80.2,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28276] = {
		{
			28276,
			"Salhet's Secret",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48022,
			"Salhet",
			"Uldum",
			53.7,
			55.3,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[7102] = {
		{
			7102,
			"Towers and Bunkers [PvP]",
			81,
			"Alterac Valley",
			1,
		},
		{
			5002,
		},
		{
			13777,
			"Sergeant Durgen Stormpike",
			"Hillsbrad Foothills",
			43.1,
			44,
			24,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14267] = {
		{
			14267,
			"Investigating the Sea Shrine",
			13,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35657,
			"Torg Twocrush",
			"Azshara",
			50.7,
			75.2,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28660] = {
		{
			28660,
			"Clearing the Depths",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48071,
			"Private Garnoth",
			"Tol Barad",
			51.4,
			49.7,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28788] = {
		{
			28788,
			"Join the Battle!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			459,
			"Drusilla La Salle",
			"Elwynn Forest",
			49.8,
			42.7,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14459] = {
		{
			14459,
			"The Battleboars",
			4,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			36694,
			"Adana Thunderhorn",
			"Mulgore",
			46.3,
			82.59999999999999,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10172] = {
		{
			10172,
			"There Is No Hope",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18063,
			"Garrosh",
			"Nagrand",
			55.4,
			37.7,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28671] = {
		{
			28671,
			"Warchief's Command: Blasted Lands!",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			nil,
			nil,
			"Undercity",
			65.59999999999999,
			49.7,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10296] = {
		{
			10296,
			"The Black Morass [Dungeon]",
			70,
			"Caverns of Time",
			1,
		},
		{
			1024,
		},
		{
			20130,
			"Andormu",
			"Tanaris",
			58.1,
			54.2,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[460] = {
		{
			460,
			"Resting in Pieces",
			17,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			16867,
			"Shattered Hand Grunt",
			"Hellfire Peninsula",
			55.1,
			50.1,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9860] = {
		{
			9860,
			"The New Directive",
			70,
			"Dalaran Crater",
			1,
		},
		{
			99999,
		},
		{
			17613,
			"Archmage Alturus",
			"Deadwind Pass",
			47,
			75.5,
			32,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28670] = {
		{
			28670,
			"Food From Below",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48062,
			"Staff Sergeant Lazgar",
			"Tol Barad",
			51.4,
			49.4,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13761] = {
		{
			13761,
			"The Grand Melee",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33654,
			"Airae Starseeker",
			"Icecrown",
			76.40000000000001,
			19,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[1201] = {
		{
			1201,
			"Theramore Spies",
			35,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4791,
			"Nazeer Bloodpike",
			"Dustwallow Marsh",
			35.3,
			30.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9207] = {
		{
			9207,
			"Underlight Ore Samples",
			14,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16293,
			"Apprentice Shatharia",
			"Ghostlands",
			31.5,
			48.3,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[1264] = {
		{
			1264,
			"The Missing Diplomat",
			33,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			4963,
			"Mikhail",
			"Wetlands",
			10.6,
			60.7,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13815] = {
		{
			13815,
			"Making Stumps",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33889,
			"Krokk",
			"Ashenvale",
			82.5,
			53.7,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[476] = {
		{
			476,
			"Gnarlpine Corruption",
			6,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			2107,
			"Gaerolas Talvethren",
			"Teldrassil",
			64.59999999999999,
			51.2,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13238] = {
		{
			13238,
			"Good For Something?",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30824,
			"Sky-Reaver Korm Blackscar",
			"Icecrown",
			69.5,
			35.9,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25726] = {
		{
			25726,
			"A Dumpy Job",
			20,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41129,
			"Surveyor Thurdan",
			"Wetlands",
			57.5,
			71.5,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9922] = {
		{
			9922,
			"The Twin Clefts of Nagrand",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18223,
			"Mo'mor the Breaker",
			"Nagrand",
			54.6,
			72.2,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12737] = {
		{
			12737,
			"Song of Fecundity",
			80,
			"Sholazar Basin",
			3,
		},
		{
			85,
		},
		{
			29006,
			"Oracle Soo-nee",
			"Sholazar Basin",
			53.4,
			56.6,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[486] = {
		{
			486,
			"Ursal the Mauler",
			9,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			2078,
			"Athridas Bearmantle",
			"Teldrassil",
			55.7,
			51.9,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[488] = {
		{
			488,
			"Zenn's Bidding",
			5,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			2150,
			"Zenn Foulhoof",
			"Teldrassil",
			59.5,
			49.1,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12673] = {
		{
			12673,
			"It Rolls Downhill",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28503,
			"Overlord Drakuru",
			"Zul'Drak",
			27.1,
			46.1,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[3089] = {
		{
			3089,
			"Rune-Inscribed Parchment",
			3,
			"Shaman",
			1,
		},
		{
			2008,
		},
		{
			3143,
			"Gornek",
			"Durotar",
			43.3,
			68.2,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[872] = {
		{
			872,
			"The Far Watch Offensive",
			12,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3337,
			"Kargal Battlescar",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[3105] = {
		{
			3105,
			"Tainted Letter",
			3,
			"Warlock",
			1,
		},
		{
			2009,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.2,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9794] = {
		{
			9794,
			"No Time for Curiosity",
			65,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			18019,
			"Timothy Daniels",
			"Zangarmarsh",
			41.2,
			28.6,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12225] = {
		{
			12225,
			"Mmm... Amberseeds!",
			73,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27277,
			"Master Woodsman Anderhol",
			"Grizzly Hills",
			31.8,
			59.7,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12983] = {
		{
			12983,
			"[80] The Last of Her Kind",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29839,
			"Astrid Bjornrittar",
			"The Storm Peaks",
			49.8,
			71.8,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25218] = {
		{
			25218,
			"Undersea Inflation",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39882,
			"The Great Sambino",
			"Shimmering Expanse",
			41.3,
			34.3,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12994] = {
		{
			12994,
			"Spy Hunter",
			80,
			"The Storm Peaks",
			3,
		},
		{
			86,
		},
		{
			30294,
			"Frostworg Denmother",
			"The Storm Peaks",
			63.5,
			59.8,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27622] = {
		{
			27622,
			"Mo' Better Shredder",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46090,
			"Juice Gnugat",
			"Twilight Highlands",
			78.40000000000001,
			62.6,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24437] = {
		{
			24437,
			"First Come, First Served",
			16,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36795,
			"Ruckus",
			"Azshara",
			39.1,
			51.7,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24565] = {
		{
			24565,
			"Biological Intervention",
			31,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37570,
			"Naralex",
			"Southern Barrens",
			50.4,
			40.7,
			607,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24693] = {
		{
			24693,
			"Mossy Pile",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			10977,
			"Quixxil",
			"Un'Goro Crater",
			54.9,
			63.6,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26493] = {
		{
			26493,
			"There's Somebody Out There Who Wants It",
			30,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43095,
			"Sassy Hardwrench",
			"The Cape of Stranglethorn",
			34.8,
			29.6,
			673,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24949] = {
		{
			24949,
			"Booty Duty",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38703,
			"Megs Dreadshredder",
			"Tanaris",
			71.8,
			45.4,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13696] = {
		{
			13696,
			"A Valiant Of Silvermoon",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33542,
			"Magister Edien Sunhollow",
			"Icecrown",
			76.3,
			24.3,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25205] = {
		{
			25205,
			"The Wolf and The Kodo",
			10,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			39380,
			"Shin Stonepillar",
			"Durotar",
			44.9,
			14.8,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25333] = {
		{
			25333,
			"Might of the Sentinels",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39653,
			"Silvia",
			"Feralas",
			56.9,
			55,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10299] = {
		{
			10299,
			"Shutting Down Manaforge B'naar",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19467,
			"Anchorite Karja",
			"Netherstorm",
			32,
			64.2,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8700] = {
		{
			8700,
			"Band of Unending Life [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15498,
			"Windcaller Yessendra",
			"Ahn'Qiraj: The Fallen Kingdom",
			59.4,
			13.9,
			772,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25717] = {
		{
			25717,
			"The Demons and the Druid",
			58,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			42344,
			"Rohan Sunveil",
			"Blasted Lands",
			49.7,
			71.5,
			19,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[8828] = {
		{
			8828,
			"Winter's Presents",
			67,
			"Winter Veil",
			1,
		},
		{
			4013,
		},
		{
			15732,
			"Wonderform Operator",
			"Orgrimmar",
			50,
			61.6,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[8892] = {
		{
			8892,
			"Situation at Sunsail Anchorage",
			7,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15939,
			"Ranger Degolien",
			"Eversong Woods",
			43.4,
			70.8,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26101] = {
		{
			26101,
			"Might Makes Right",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41023,
			"Overlord Krom'gar",
			"Stonetalon Mountains",
			66.2,
			63.7,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26229] = {
		{
			26229,
			"\"I TAKE Candle!\"",
			11,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			42498,
			"Jimb \"Candles\" McHannigan",
			"Westfall",
			49.6,
			19.6,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26357] = {
		{
			26357,
			"Faces of Evil",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42624,
			"Kotonga",
			"The Hinterlands",
			67.8,
			66.5,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26485] = {
		{
			26485,
			"Snapjaws, Lad!",
			31,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43109,
			"Dron Blastbrew",
			"The Hinterlands",
			66.3,
			44.3,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26613] = {
		{
			26613,
			"Up to Snuff",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2488,
			"Deeg",
			"The Cape of Stranglethorn",
			40.8,
			73.7,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9276] = {
		{
			9276,
			"Attack on Zeb'Tela",
			18,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16463,
			"Farstrider Solanna",
			"Ghostlands",
			72.2,
			31.4,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26869] = {
		{
			26869,
			"Depth of the Depths",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44259,
			"Gorged Gyreworm",
			"Deepholm",
			57.9,
			25.9,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26997] = {
		{
			26997,
			"The Usual Suspects",
			84,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			2439,
			"Major Samuelson",
			"Stormwind City",
			85.2,
			31.3,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27125] = {
		{
			27125,
			"King of the Gordok",
			47,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			45040,
			"Druid of the Talon",
			"Dire Maul",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27253] = {
		{
			27253,
			"Inspecting the Ruins",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4926,
			"Krog",
			"Dustwallow Marsh",
			36.4,
			31.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27381] = {
		{
			27381,
			"Traveling Companions",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45429,
			"Tarenar Sunstrike",
			"Eastern Plaguelands",
			35.2,
			68.8,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27509] = {
		{
			27509,
			"Breach in the Defenses",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45528,
			"Calen",
			"Twilight Highlands",
			29.4,
			26.1,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9724] = {
		{
			9724,
			"Warning the Cenarion Circle",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17841,
			"Ysiel Windsinger",
			"Zangarmarsh",
			78.40000000000001,
			62.1,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9788] = {
		{
			9788,
			"A Damp, Dark Place",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17956,
			"Ikeyen",
			"Zangarmarsh",
			80.40000000000001,
			64.2,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9852] = {
		{
			9852,
			"The Ultimate Bloodsport [Group]",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18180,
			"Hemet Nesingwary",
			"Nagrand",
			71.59999999999999,
			40.7,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9916] = {
		{
			9916,
			"Bleeding Hollow Supply Crates",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18300,
			"Elkay'gan the Mystic",
			"Nagrand",
			55.6,
			37.6,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28149] = {
		{
			28149,
			"Whispers in the Wind",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47751,
			"Buunu",
			"Twilight Highlands",
			36.4,
			38.1,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28277] = {
		{
			28277,
			"Salhet the Tactician",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48237,
			"Salhet",
			"Uldum",
			56.9,
			62.4,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28405] = {
		{
			28405,
			"[50D] Weapons of Darkness [Dungeon]",
			50,
			"Blackrock Depths",
			1,
		},
		{
			1002,
		},
		{
			928,
			"Lord Grayson Shadowbreaker",
			"Stormwind City",
			52.8,
			45.1,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28533] = {
		{
			28533,
			"The High Council's Decision",
			84,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46136,
			"Vizier Tanotep",
			"Uldum",
			56.4,
			53.4,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10236] = {
		{
			10236,
			"Outland Sucks!",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16915,
			"Foreman Razelcraz",
			"Hellfire Peninsula",
			51.3,
			30.6,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10300] = {
		{
			10300,
			"Rebuilding the Staff",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19217,
			"Ravandwyr",
			"Netherstorm",
			31.4,
			66.2,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[648] = {
		{
			648,
			"Rescue OOX-17/TN!",
			48,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			7784,
			"Homing Robot OOX-17/TN",
			"Tanaris",
			59.8,
			64,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10428] = {
		{
			10428,
			"The Missing Fisherman",
			10,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17488,
			"Dulvi",
			"Azuremyst Isle",
			48.9,
			50.9,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8705] = {
		{
			8705,
			"Gavel of Infinite Wisdom [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15499,
			"Warden Haro",
			"Ahn'Qiraj: The Fallen Kingdom",
			59.4,
			14.1,
			772,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10556] = {
		{
			10556,
			"Scratches",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			nil,
			nil,
			"Blade's Edge Mountains",
			34.4,
			77.8,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10620] = {
		{
			10620,
			"Ridgespine Menace",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21824,
			"Dizzy Dina",
			"Blade's Edge Mountains",
			60.4,
			68.8,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10684] = {
		{
			10684,
			"Oronu the Elder",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21955,
			"Arcanist Thelis",
			"Shadowmoon Valley",
			56.3,
			59.5,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10748] = {
		{
			10748,
			"Maxnar Must Die!",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22007,
			"Tree Warden Chawn",
			"Blade's Edge Mountains",
			61.9,
			39.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10812] = {
		{
			10812,
			"Mystery Mask",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22020,
			"O'Mally Zapnabber",
			"Blade's Edge Mountains",
			62.7,
			40.3,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10876] = {
		{
			10876,
			"The Foot of the Citadel [Group]",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			3230,
			"Nazgrel",
			"Hellfire Peninsula",
			55.1,
			36,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10940] = {
		{
			10940,
			"Darkmoon Furies Deck",
			70,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			14847,
			"Professor Thaddeus Paleo",
			"Elwynn Forest",
			41.4,
			69.90000000000001,
			30,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11004] = {
		{
			11004,
			"World of Shadows",
			70,
			"Skettis",
			1,
		},
		{
			75,
		},
		{
			23042,
			"Severin",
			"Terokkar Forest",
			64.09999999999999,
			66.8,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11068] = {
		{
			11068,
			"Dragonmaw Race: Corlok the Vet",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23344,
			"Corlok the Vet",
			"Shadowmoon Valley",
			65.2,
			85.3,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11132] = {
		{
			11132,
			"Promises, Promises... [Raid]",
			70,
			"Zul'Aman",
			1,
		},
		{
			1088,
		},
		{
			23790,
			"Tanzar",
			"Zul'Aman",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28665] = {
		{
			28665,
			"Cursed Shackles",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48070,
			"Drillmaster Razgoth",
			"Tol Barad",
			51.5,
			49.8,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11260] = {
		{
			11260,
			"Stop the Ascension!",
			72,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23666,
			"Winterskorn Berserker",
			"Howling Fjord",
			45.7,
			28.5,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11324] = {
		{
			11324,
			"Alpha Worg",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24261,
			"Ulfang",
			"Howling Fjord",
			29.6,
			5.7,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10177] = {
		{
			10177,
			"Trouble at Auchindoun [Dungeon]",
			70,
			"Shadow Labyrinth",
			1,
		},
		{
			1023,
		},
		{
			18893,
			"Spymistress Mehlisah Highcrown",
			"Shattrath City",
			50.3,
			45.1,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11452] = {
		{
			11452,
			"The Slumbering King",
			72,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			nil,
			nil,
			"Howling Fjord",
			38.7,
			12.6,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11516] = {
		{
			11516,
			"Blast the Gateway",
			70,
			"Hellfire Peninsula",
			3,
		},
		{
			70,
		},
		{
			24937,
			"Magistrix Seyla",
			"Hellfire Peninsula",
			58.2,
			17.7,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14335] = {
		{
			14335,
			"Chipping In",
			35,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			11624,
			"Taiga Wisemane",
			"Desolace",
			25.8,
			68.09999999999999,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11644] = {
		{
			11644,
			"Super Strong Metal Plates!",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25475,
			"Mobu",
			"Borean Tundra",
			32.1,
			54.3,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11708] = {
		{
			11708,
			"The Mechagnomes",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25590,
			"Fizzcrank Fullthrottle",
			"Borean Tundra",
			57,
			18.7,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25965] = {
		{
			25965,
			"Gauging Success",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40916,
			"Captain Vilethorn",
			"Shimmering Expanse",
			39.1,
			78.7,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9793] = {
		{
			9793,
			"The Fate of Tuurem",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18004,
			"Vindicator Idaar",
			"Zangarmarsh",
			68.3,
			50,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11900] = {
		{
			11900,
			"Reading the Meters",
			71,
			"Coldarra",
			1,
		},
		{
			77,
		},
		{
			25314,
			"Archmage Berinand",
			"Borean Tundra",
			32.9,
			34.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28771] = {
		{
			28771,
			"Lions for Lambs",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12028] = {
		{
			12028,
			"Spiritual Insight",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26595,
			"Toalu'u the Mystic",
			"Dragonblight",
			49.1,
			75.7,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12092] = {
		{
			12092,
			"Strengthen the Ancients",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26837,
			"Sarendryana",
			"Dragonblight",
			28.7,
			57.1,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28643] = {
		{
			28643,
			"The Durnholde Challenge: Zephyrus [Group]",
			25,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			49243,
			"Captain Jekyll",
			"Hillsbrad Foothills",
			59.9,
			63.3,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24438] = {
		{
			24438,
			"Exodus",
			8,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36743,
			"King Genn Greymane",
			"Gilneas",
			26.4,
			47,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[768] = {
		{
			768,
			"Gathering Leather",
			8,
			"Thunder Bluff",
			1,
		},
		{
			26,
		},
		{
			3050,
			"Veren Tallstrider",
			"Thunder Bluff",
			44.1,
			44.5,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24694] = {
		{
			24694,
			"The Shaper's Terrace",
			55,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38504,
			"Un'Goro Examinant",
			"Un'Goro Crater",
			53.9,
			62.6,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12412] = {
		{
			12412,
			"My Enemy's Friend",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26860,
			"Conqueror Krenna",
			"Grizzly Hills",
			20.8,
			64.2,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24950] = {
		{
			24950,
			"Captain Dreadbeard",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38703,
			"Megs Dreadshredder",
			"Tanaris",
			71.90000000000001,
			45.4,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12540] = {
		{
			12540,
			"Just Following Orders",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28082,
			"High-Shaman Rakjak",
			"Sholazar Basin",
			55.1,
			69.09999999999999,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25206] = {
		{
			25206,
			"Ignoring the Warnings",
			10,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			39379,
			"Gor the Enforcer",
			"Durotar",
			45,
			14.7,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25334] = {
		{
			25334,
			"The Looming Threat",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39226,
			"Farseer Gadra",
			"Shimmering Expanse",
			56,
			13.8,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12732] = {
		{
			12732,
			"The Heartblood's Strength",
			80,
			"Sholazar Basin",
			3,
		},
		{
			85,
		},
		{
			29043,
			"Rejek",
			"Sholazar Basin",
			55.7,
			69.59999999999999,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25590] = {
		{
			25590,
			"Where's Wizzle?",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40554,
			"Rizzle Brassbolts",
			"Thousand Needles",
			78,
			73.40000000000001,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25718] = {
		{
			25718,
			"How Best to Proceed",
			58,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			42344,
			"Rohan Sunveil",
			"Blasted Lands",
			49.8,
			71.5,
			19,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12924] = {
		{
			12924,
			"[80] Forging an Alliance",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29445,
			"Thorim",
			"The Storm Peaks",
			33.4,
			58.1,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25974] = {
		{
			25974,
			"Sira'kess Slaying",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41670,
			"Sergeant Gertrude",
			"Abyssal Depths",
			51.5,
			60.9,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26102] = {
		{
			26102,
			"Grimaxe's Demise",
			10,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41853,
			"Commander Stonebreaker",
			"Dun Morogh",
			78.2,
			20.5,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13116] = {
		{
			13116,
			"Mustard Dogs!",
			78,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			29631,
			"Awilo Lon'gomba",
			"Dalaran",
			70,
			39.2,
			504,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[824] = {
		{
			824,
			"Je'neu of the Earthen Ring",
			27,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			12737,
			"Mastok Wrilehiss",
			"Ashenvale",
			74.09999999999999,
			60.7,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26486] = {
		{
			26486,
			"99 Bottles of Booze on the Beach",
			31,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43109,
			"Dron Blastbrew",
			"The Hinterlands",
			66.3,
			44.3,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26614] = {
		{
			26614,
			"Keep An Eye Out",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2493,
			"Dizzy One-Eye",
			"The Cape of Stranglethorn",
			43.4,
			71.3,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13372] = {
		{
			13372,
			"The Key to the Focusing Iris",
			80,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			nil,
			nil,
			"Dragonblight",
			81.09999999999999,
			53.6,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26870] = {
		{
			26870,
			"Cleansing the Caverns [Dungeon]",
			21,
			"Wailing Caverns",
			1,
		},
		{
			1018,
		},
		{
			5768,
			"Ebru",
			"Wailing Caverns",
			46.3,
			58.6,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26998] = {
		{
			26998,
			"Iterating Upon Success",
			11,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			44784,
			"High Apothecary Shana T'veen",
			"Silverpine Forest",
			56.2,
			8.5,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[848] = {
		{
			848,
			"Fungal Spores",
			15,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3390,
			"Apothecary Helbrim",
			"Northern Barrens",
			48.6,
			58.3,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[852] = {
		{
			852,
			"Hezrul Bloodmark",
			19,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3389,
			"Regthar Deathgate",
			"Northern Barrens",
			37.8,
			55.3,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27382] = {
		{
			27382,
			"Rough Roads",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45451,
			"Argus Highbeacon",
			"Eastern Plaguelands",
			35.8,
			68.7,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27510] = {
		{
			27510,
			"A Wolf in Bear's Clothing",
			18,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			45631,
			"High Warlord Cromush",
			"Silverpine Forest",
			52,
			67,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27638] = {
		{
			27638,
			"Just You and Garona",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46163,
			"Cho'gall",
			"Twilight Highlands",
			37.7,
			65.5,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27766] = {
		{
			27766,
			"Second Sample: Whelps",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46654,
			"Rhea",
			"Badlands",
			66.40000000000001,
			55.4,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27894] = {
		{
			27894,
			"The Wrath of a Dragonflight",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			47021,
			"Amakkar",
			"Badlands",
			21.1,
			42.8,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[876] = {
		{
			876,
			"Serena Bloodfeather",
			20,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3449,
			"Darsok Swiftdagger",
			"Northern Barrens",
			30.6,
			45.8,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[880] = {
		{
			880,
			"Altered Beings",
			14,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34626,
			"Jerrik Highmountain",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28278] = {
		{
			28278,
			"I Am the Law and I Am the Lash",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48133,
			"General Thorg'izog",
			"Burning Steppes",
			30.8,
			33.6,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28406] = {
		{
			28406,
			"The Dark Iron Army [Dungeon]",
			50,
			"Blackrock Depths",
			1,
		},
		{
			1002,
		},
		{
			13283,
			"Lord Tony Romano",
			"Stormwind City",
			79.5,
			61.3,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14268] = {
		{
			14268,
			"Deep Impact",
			32,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35827,
			"Valishj",
			"Desolace",
			31.1,
			30.8,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28662] = {
		{
			28662,
			"Learning From The Past",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48071,
			"Private Garnoth",
			"Tol Barad",
			51.4,
			49.7,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[900] = {
		{
			900,
			"Samophlange",
			14,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			nil,
			nil,
			"Northern Barrens",
			50.3,
			25.7,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14460] = {
		{
			14460,
			"Rite of Honor",
			5,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			36694,
			"Adana Thunderhorn",
			"Mulgore",
			46.2,
			82.7,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10163] = {
		{
			10163,
			"Mission: The Abyssal Shelf",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			20232,
			"Wing Commander Gryphongar",
			"Hellfire Peninsula",
			79.3,
			33.9,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10099] = {
		{
			10099,
			"The Mastermind",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16837,
			"Foreman Biggums",
			"Hellfire Peninsula",
			52.1,
			62.4,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26364] = {
		{
			26364,
			"Down with Crushcog!",
			5,
			"Chill Breeze Valley",
			1,
		},
		{
			36,
		},
		{
			42353,
			"Jarvi Shadowstep",
			"Dun Morogh",
			37.4,
			44,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9971] = {
		{
			9971,
			"Clues in the Thicket",
			63,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18446,
			"Earthbinder Tavgren",
			"Terokkar Forest",
			44.3,
			26.3,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12928] = {
		{
			12928,
			"Norgannon's Shell",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			nil,
			nil,
			"The Storm Peaks",
			37.5,
			46.8,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[8886] = {
		{
			8886,
			"Grimscale Pirates!",
			8,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15921,
			"Captain Kelisendra",
			"Eversong Woods",
			36.3,
			66.59999999999999,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[932] = {
		{
			932,
			"Twisted Hatred",
			7,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			3567,
			"Tallonkai Swiftroot",
			"Teldrassil",
			55.6,
			50,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27747] = {
		{
			27747,
			"Total War",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46318,
			"Harkkan",
			"Twilight Highlands",
			55.1,
			43.6,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27619] = {
		{
			27619,
			"The Commander",
			42,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			16112,
			"Crusade Commander Korfax",
			"Eastern Plaguelands",
			75.5,
			76.2,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25457] = {
		{
			25457,
			"Ron Targetting Test",
			1,
			"Missing header! (quest designers)",
			1,
		},
		{
			99999,
		},
		{
			42801,
			"Mor'norokk the Hateful",
			"Deepholm",
			61.1,
			39.7,
			640,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27363] = {
		{
			27363,
			"A Budding Young Surgeon [Dungeon]",
			20,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			45306,
			"Chief Surgeon Gashweld",
			"Stormwind City",
			63,
			34,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27235] = {
		{
			27235,
			"Renn McGill",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			5086,
			"Captain Wymor",
			"Dustwallow Marsh",
			59.7,
			41.1,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9539] = {
		{
			9539,
			"Totem of Coo",
			10,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17360,
			"Totem of Akida",
			"Azuremyst Isle",
			49.4,
			51.1,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9395] = {
		{
			9395,
			"Saltheril's Haven",
			9,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			16210,
			"Magistrix Landra Dawnstrider",
			"Eversong Woods",
			44,
			70.8,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13050] = {
		{
			13050,
			"[80] Veranus",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29445,
			"Thorim",
			"The Storm Peaks",
			33.4,
			57.9,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[968] = {
		{
			968,
			"The Powers Below",
			20,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			nil,
			nil,
			"Dun Morogh",
			76.09999999999999,
			17.5,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9987] = {
		{
			9987,
			"Stymying the Arakkoa",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18386,
			"Rokag",
			"Terokkar Forest",
			48.9,
			44.7,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[4602] = {
		{
			4602,
			"The Sparklematic 5200! [Dungeon]",
			30,
			"Gnomeregan",
			1,
		},
		{
			1005,
		},
		{
			nil,
			nil,
			"Gnomeregan",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26467] = {
		{
			26467,
			"Vile Satyr! Dryads in Danger!",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3901,
			"Illiyana",
			"Ashenvale",
			87,
			43.5,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10051] = {
		{
			10051,
			"Escape from Firewing Point! [Group]",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18760,
			"Isla Starmane",
			"Terokkar Forest",
			73.90000000000001,
			35.2,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26491] = {
		{
			26491,
			"Skulk Rock Clean-Up",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43108,
			"Kerr Ironsight",
			"The Hinterlands",
			66.3,
			44.3,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[3120] = {
		{
			3120,
			"[3] [3] Verdant Sigil",
			3,
			"Druid",
			1,
		},
		{
			2002,
		},
		{
			2079,
			"Ilthalaine",
			"Teldrassil",
			58.1,
			38.9,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9540] = {
		{
			9540,
			"Totem of Tikti",
			10,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17361,
			"Totem of Coo",
			"Azuremyst Isle",
			55.2,
			41.7,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26742] = {
		{
			26742,
			"Bloodscalp Insight",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			43886,
			"Berrin Burnquill",
			"Northern Stranglethorn",
			47.9,
			12,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27008] = {
		{
			27008,
			"Fly Over",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44818,
			"Reliquary Jes'ca Darksun",
			"Deepholm",
			51.3,
			50,
			640,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28154] = {
		{
			28154,
			"Muckgill's Flipper or Something...",
			20,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			nil,
			nil,
			"Hillsbrad Foothills",
			32.4,
			75.90000000000001,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12862] = {
		{
			12862,
			"When All Else Fails",
			78,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29428,
			"Ricket",
			"The Storm Peaks",
			41,
			85.40000000000001,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8563] = {
		{
			8563,
			"Warlock Training",
			3,
			"Warlock",
			1,
		},
		{
			2009,
		},
		{
			15278,
			"Magistrix Erona",
			"Eversong Woods",
			38,
			20.9,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24439] = {
		{
			24439,
			"The Conquest of Azshara",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36730,
			"Chawg",
			"Azshara",
			14.1,
			64.90000000000001,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24567] = {
		{
			24567,
			"Report for Tryouts",
			3,
			"Kezan",
			1,
		},
		{
			90,
		},
		{
			34874,
			"Megs Dreadshredder",
			"Kezan",
			58.6,
			76.7,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24695] = {
		{
			24695,
			"Ever Watching From Above",
			55,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38502,
			"Nablya",
			"Un'Goro Crater",
			83.5,
			45.9,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8317] = {
		{
			8317,
			"Kitchen Assistance",
			56,
			"Cooking",
			1,
		},
		{
			3004,
		},
		{
			15174,
			"Calandrath",
			"Silithus",
			0,
			0,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24951] = {
		{
			24951,
			"A Great Idea",
			47,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38706,
			"Zeke Bootscuff",
			"Tanaris",
			55.7,
			60.8,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25079] = {
		{
			25079,
			"[33] Powder Play",
			33,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39084,
			"Mizzy Pistonhammer",
			"Southern Barrens",
			49.4,
			67.5,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25207] = {
		{
			25207,
			"Good-bye, Sweet Oil",
			10,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			nil,
			nil,
			"The Lost Isles",
			51.4,
			13.1,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10052] = {
		{
			10052,
			"Escape from Firewing Point! [Group]",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18760,
			"Isla Starmane",
			"Terokkar Forest",
			73.90000000000001,
			35.3,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25463] = {
		{
			25463,
			"Report to Silvia",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			3936,
			"Shandris Feathermoon",
			"Feralas",
			46,
			49.1,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25591] = {
		{
			25591,
			"Thunderdrome: Grudge Match! [Group]",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39034,
			"Dr. Dealwell",
			"Tanaris",
			51.8,
			28,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25719] = {
		{
			25719,
			"Demoniac Vessel",
			58,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			42348,
			"Elijah Dawnflight",
			"Blasted Lands",
			47.2,
			69,
			19,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25847] = {
		{
			25847,
			"Grimtotem Supremacy",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			11858,
			"Grundig Darkcloud",
			"Stonetalon Mountains",
			72.3,
			83.90000000000001,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25975] = {
		{
			25975,
			"Treasure Reclamation",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41665,
			"Jorlan Trueblade",
			"Abyssal Depths",
			55.6,
			72.90000000000001,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26103] = {
		{
			26103,
			"Bio-Fuel",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41666,
			"Engineer Hexascrub",
			"Abyssal Depths",
			55.5,
			72.90000000000001,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13311] = {
		{
			13311,
			"Demons Deck",
			45,
			"Inscription",
			1,
		},
		{
			3009,
		},
		{
			30481,
			"Darkmoon Fortune Teller",
			"Howling Fjord",
			58.6,
			63.3,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26359] = {
		{
			26359,
			"See Raptor",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42812,
			"Priestess Hu'rala",
			"Northern Stranglethorn",
			63.3,
			39,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26487] = {
		{
			26487,
			"Akiris by the Bundle",
			30,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43095,
			"Sassy Hardwrench",
			"The Cape of Stranglethorn",
			34.7,
			29.5,
			673,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25846] = {
		{
			25846,
			"Grundig Darkcloud, Chieftain of the Grimtotem",
			29,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41229,
			"Force Commander Valen",
			"Stonetalon Mountains",
			71.09999999999999,
			79.7,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26743] = {
		{
			26743,
			"Sacred to the Bloodscalp",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			43886,
			"Berrin Burnquill",
			"Northern Stranglethorn",
			47.9,
			12,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[1168] = {
		{
			1168,
			"Army of the Black Dragon",
			41,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4502,
			"Tharg",
			"Dustwallow Marsh",
			37.4,
			31.5,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26999] = {
		{
			26999,
			"A New Era for the Plaguelands",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44454,
			"Field Agent Kaartish",
			"Western Plaguelands",
			49.3,
			54.9,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26234] = {
		{
			26234,
			"Stealing From Our Own",
			28,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			42506,
			"Marogg",
			"Orgrimmar",
			56.6,
			62.8,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27255] = {
		{
			27255,
			"The Black Shield",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4926,
			"Krog",
			"Dustwallow Marsh",
			36.4,
			31.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27383] = {
		{
			27383,
			"Little Pamela",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			11063,
			"Carlin Redpath",
			"Eastern Plaguelands",
			35.6,
			68.90000000000001,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27511] = {
		{
			27511,
			"The Thrill of Discovery",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			45296,
			"Harrison Jones",
			"Uldum",
			64.5,
			28,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12991] = {
		{
			12991,
			"Hit Them Where it Hurts",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30152,
			"Bruor Ironbane",
			"The Storm Peaks",
			31.3,
			38.1,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9789] = {
		{
			9789,
			"Clefthoof Mastery",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18180,
			"Hemet Nesingwary",
			"Nagrand",
			71.5,
			40.8,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27895] = {
		{
			27895,
			"Their Hunt Continues",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			nil,
			nil,
			"Badlands",
			30.4,
			43,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9917] = {
		{
			9917,
			"Do My Eyes Deceive Me",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18353,
			"Huntress Bintook",
			"Nagrand",
			54.9,
			70.59999999999999,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28151] = {
		{
			28151,
			"Dressed to Kill",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47723,
			"Rotgrum",
			"Twilight Highlands",
			36.7,
			38.1,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28279] = {
		{
			28279,
			"Abuse of Power",
			0,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48133,
			"General Thorg'izog",
			"Burning Steppes",
			30.7,
			33.9,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10109] = {
		{
			10109,
			"I Must Have Them!",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			19035,
			"Wazat",
			"Nagrand",
			61.7,
			67.09999999999999,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28535] = {
		{
			28535,
			"Descendants of the High Elves",
			51,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			48659,
			"Quel'dorei Spirit",
			"Winterspring",
			50.8,
			54.9,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28663] = {
		{
			28663,
			"D-Block",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48070,
			"Drillmaster Razgoth",
			"Tol Barad",
			51.5,
			49.8,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10301] = {
		{
			10301,
			"Unlocking the Compendium",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19644,
			"Image of Archmage Vargoth",
			"Netherstorm",
			31.3,
			66.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10365] = {
		{
			10365,
			"Shutting Down Manaforge Ara [Group]",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19468,
			"Spymaster Thalodien",
			"Netherstorm",
			32,
			64.09999999999999,
			479,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10429] = {
		{
			10429,
			"When Nature Goes Too Far",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20871,
			"Aurine Moonblaze",
			"Netherstorm",
			42.3,
			32.5,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9790] = {
		{
			9790,
			"Diaphanous Wings",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18005,
			"Haalrun",
			"Zangarmarsh",
			67.8,
			47.9,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10557] = {
		{
			10557,
			"Test Flight: The Zephyrium Capacitorium",
			64,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21460,
			"Tally Zapnabber",
			"Blade's Edge Mountains",
			60.2,
			68.40000000000001,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10621] = {
		{
			10621,
			"Illidari-Bane Shard",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			nil,
			nil,
			"Shadowmoon Valley",
			24.1,
			35.1,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10685] = {
		{
			10685,
			"The Ashtongue Corruptors",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21955,
			"Arcanist Thelis",
			"Shadowmoon Valley",
			56.3,
			59.6,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10749] = {
		{
			10749,
			"Baron Sablemane's Poison",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22103,
			"Baron Sablemane",
			"Blade's Edge Mountains",
			53.2,
			41.2,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10813] = {
		{
			10813,
			"The Eyes of Grillok",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			22231,
			"Zezzak",
			"Hellfire Peninsula",
			61.6,
			81.8,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10877] = {
		{
			10877,
			"The Dread Relic",
			66,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22456,
			"Oakun",
			"Terokkar Forest",
			31.1,
			76.40000000000001,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10941] = {
		{
			10941,
			"Darkmoon Lunacy Deck",
			70,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			nil,
			nil,
			"Elwynn Forest",
			41.5,
			69.8,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11005] = {
		{
			11005,
			"Secrets of the Talonpriests",
			70,
			"Skettis",
			1,
		},
		{
			75,
		},
		{
			23038,
			"Sky Commander Adaris",
			"Terokkar Forest",
			64.09999999999999,
			66.8,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11069] = {
		{
			11069,
			"Dragonmaw Race: Wing Commander Ichman",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23345,
			"Wing Commander Ichman",
			"Shadowmoon Valley",
			65.2,
			85.09999999999999,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28145] = {
		{
			28145,
			"Venomblood Antidote",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47715,
			"Sun Priest Asaris",
			"Uldum",
			53,
			27.7,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12855] = {
		{
			12855,
			"Sniffing Out the Perpetrator",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29650,
			"Archaeologist Andorin",
			"The Storm Peaks",
			29.6,
			74.09999999999999,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11261] = {
		{
			11261,
			"The Conqueror of Skorn!",
			72,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24130,
			"Winterhoof Brave",
			"Howling Fjord",
			46.2,
			28.4,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11325] = {
		{
			11325,
			"In Worg's Clothing",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24273,
			"Watcher Moonleaf",
			"Howling Fjord",
			30,
			28.7,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11389] = {
		{
			11389,
			"Wanted: Arcatraz Sentinels [Dungeon]",
			70,
			"Tempest Keep",
			3,
		},
		{
			1035,
		},
		{
			24370,
			"Nether-Stalker Mah'duun",
			"Shattrath City",
			75.40000000000001,
			37.3,
			481,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11453] = {
		{
			11453,
			"The Slumbering King",
			72,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			nil,
			nil,
			"Howling Fjord",
			38.8,
			11,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12730] = {
		{
			12730,
			"Convocation at Zol'Heb [Group]",
			78,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28401,
			"Har'koa",
			"Zul'Drak",
			60.2,
			57.8,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12989] = {
		{
			12989,
			"[80] The Slithering Darkness",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29839,
			"Astrid Bjornrittar",
			"The Storm Peaks",
			49.8,
			71.8,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11645] = {
		{
			11645,
			"Dirty, Stinkin' Snobolds!",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25477,
			"Crafty Wobblesprocket",
			"Borean Tundra",
			58,
			18.7,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11709] = {
		{
			11709,
			"Nork Bloodfrenzy's Charge",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25237,
			"Garrosh Hellscream",
			"Borean Tundra",
			41.4,
			53.6,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28404] = {
		{
			28404,
			"I'll Do It By Hand",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48558,
			"Harrison Jones",
			"Uldum",
			39,
			23.3,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14140] = {
		{
			14140,
			"Stop The Aggressors",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34771,
			"Girana the Blooded",
			"Icecrown",
			76.09999999999999,
			24.1,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11901] = {
		{
			11901,
			"Military?  What Military?",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26083,
			"Gerald Green",
			"Borean Tundra",
			58.2,
			62.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11965] = {
		{
			11965,
			"Call to Arms!",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26083,
			"Gerald Green",
			"Borean Tundra",
			58.2,
			62.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12029] = {
		{
			12029,
			"Seared Scourge",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26604,
			"Mack Fearsen",
			"Grizzly Hills",
			16.7,
			48.2,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12093] = {
		{
			12093,
			"Runes of Compulsion",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26420,
			"Gavrock",
			"Grizzly Hills",
			79.8,
			33.6,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12157] = {
		{
			12157,
			"The Lost Courier",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26186,
			"Private Casey",
			"Borean Tundra",
			82.09999999999999,
			46.5,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12221] = {
		{
			12221,
			"The Forsaken Blight",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27172,
			"Chief Plaguebringer Middleton",
			"Dragonblight",
			77.7,
			62.8,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12285] = {
		{
			12285,
			"Do Unto Others [Group]",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27243,
			"High Executor Wroth",
			"Dragonblight",
			76.8,
			63.2,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[8634] = {
		{
			8634,
			"Enigma Boots [Raid]",
			60,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			15503,
			"Kandrostrasz",
			"Ahn'Qiraj",
			59.1,
			68.59999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24824] = {
		{
			24824,
			"The Disturbed Earth",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37834,
			"Tauna Skychaser",
			"Southern Barrens",
			45.2,
			85.40000000000001,
			607,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24952] = {
		{
			24952,
			"Rocket Boot Boost",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38738,
			"Coach Crosscheck",
			"The Lost Isles",
			51.8,
			47.2,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25080] = {
		{
			25080,
			"[33] Batteries Not Yet Included",
			33,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39084,
			"Mizzy Pistonhammer",
			"Southern Barrens",
			49.5,
			67.5,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25208] = {
		{
			25208,
			"Tell Silvia",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			40052,
			"Estulan",
			"Feralas",
			57,
			55.4,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25336] = {
		{
			25336,
			"Testing the Vessel",
			38,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39894,
			"Gombana",
			"Feralas",
			52.2,
			48.1,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25464] = {
		{
			25464,
			"The Return of Baron Geddon",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39857,
			"Malfurion Stormrage",
			"Mount Hyjal",
			47.8,
			35.5,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25592] = {
		{
			25592,
			"Deep Attraction",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40917,
			"Legionnaire Nazgrim",
			"Shimmering Expanse",
			51.2,
			63,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25720] = {
		{
			25720,
			"The Downfall of Marl Wormthorn",
			59,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			42344,
			"Rohan Sunveil",
			"Blasted Lands",
			49.7,
			71.59999999999999,
			19,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25848] = {
		{
			25848,
			"Downfall",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			11858,
			"Grundig Darkcloud",
			"Stonetalon Mountains",
			72.2,
			83.7,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25976] = {
		{
			25976,
			"Treasure Reclamation",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41668,
			"Bloodguard Toldrek",
			"Abyssal Depths",
			51.5,
			60.7,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9853] = {
		{
			9853,
			"Gurok the Usurper [Group]",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18099,
			"Gordawg",
			"Nagrand",
			59.7,
			21.7,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26232] = {
		{
			26232,
			"Lou's Parting Thoughts",
			12,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			42405,
			"Two-Shoed Lou",
			"Westfall",
			49.6,
			19.4,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26360] = {
		{
			26360,
			"Mind Control",
			29,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42812,
			"Priestess Hu'rala",
			"Northern Stranglethorn",
			63.4,
			39,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26488] = {
		{
			26488,
			"Big Gulp",
			80,
			"Fishing",
			3,
		},
		{
			3007,
		},
		{
			5494,
			"Catherine Leland",
			"Stormwind City",
			55,
			69.59999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26616] = {
		{
			26616,
			"It's Never Over",
			18,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			nil,
			nil,
			"Redridge Mountains",
			26.3,
			40,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26744] = {
		{
			26744,
			"Deep Roots",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			1422,
			"Corporal Sethman",
			"Northern Stranglethorn",
			47,
			10.9,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26872] = {
		{
			26872,
			"Deviate Hides",
			18,
			"Wailing Caverns",
			1,
		},
		{
			1018,
		},
		{
			5767,
			"Nalpak",
			"Wailing Caverns",
			46.4,
			59,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27000] = {
		{
			27000,
			"Learning the Ropes",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			11616,
			"Nathaniel Dumah",
			"Western Plaguelands",
			48.2,
			32.3,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27128] = {
		{
			27128,
			"King of the Gordok",
			47,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			45052,
			"Stonemaul Ogre",
			"Dire Maul",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27256] = {
		{
			27256,
			"The Black Shield",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			5087,
			"Do'gol",
			"Dustwallow Marsh",
			36.5,
			30.9,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27384] = {
		{
			27384,
			"Pamela's Doll",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			10926,
			"Pamela Redpath",
			"Eastern Plaguelands",
			32.4,
			83.7,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27512] = {
		{
			27512,
			"Transdimensional Warfare: Chapter I",
			18,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			45617,
			"Lady Sylvanas Windrunner",
			"Silverpine Forest",
			51.8,
			65,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27640] = {
		{
			27640,
			"Dunwalds Don't Die",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46804,
			"Keegan Firebeard",
			"Twilight Highlands",
			60.2,
			57.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27768] = {
		{
			27768,
			"Step Two: The Bloodletter",
			54,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			46424,
			"Priestess Udum'bra",
			"The Temple of Atal'Hakkar",
			54.3,
			79.3,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27896] = {
		{
			27896,
			"The Sorrow and the Fury",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			nil,
			nil,
			"Badlands",
			15.5,
			43,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14013] = {
		{
			14013,
			"Charge",
			3,
			"Warrior",
			1,
		},
		{
			2010,
		},
		{
			34697,
			"Warrior-Matic NX-01",
			"Kezan",
			60.2,
			77.8,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14077] = {
		{
			14077,
			"The Light's Mercy",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34880,
			"Narasi Snowdawn",
			"Icecrown",
			76.2,
			19.6,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14141] = {
		{
			14141,
			"Gormok Wants His Snobolds",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34914,
			"Tylos Dawnrunner",
			"Icecrown",
			76.09999999999999,
			24.1,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28408] = {
		{
			28408,
			"Something Bold",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48367,
			"Lachlan MacGraff",
			"Twilight Highlands",
			54.4,
			16.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28536] = {
		{
			28536,
			"The Curse of Zin-Malor",
			51,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			48660,
			"Sin'dorei Spirit",
			"Winterspring",
			50.6,
			55.1,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28664] = {
		{
			28664,
			"Svarnos",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48070,
			"Drillmaster Razgoth",
			"Tol Barad",
			51.5,
			49.8,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28792] = {
		{
			28792,
			"They Sent Assassins",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.4,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14461] = {
		{
			14461,
			"Feed of Evil",
			4,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			36694,
			"Adana Thunderhorn",
			"Mulgore",
			46.3,
			82.59999999999999,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13180] = {
		{
			13180,
			"Slay them all! [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31091,
			"Commander Dardosh",
			"Wintergrasp",
			22.1,
			35,
			501,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25595] = {
		{
			25595,
			"Something Edible",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40919,
			"Wavespeaker Tulra",
			"Shimmering Expanse",
			51.6,
			62.8,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25979] = {
		{
			25979,
			"Dealing with the Surge",
			10,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41804,
			"Khurgorn Singefeather",
			"Dun Morogh",
			82.7,
			48.3,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26235] = {
		{
			26235,
			"Even Thieves Get Hungry",
			11,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			42506,
			"Marogg",
			"Orgrimmar",
			56.4,
			62.7,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10111] = {
		{
			10111,
			"Bring Me The Egg! [Group]",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			19035,
			"Wazat",
			"Nagrand",
			61.7,
			67.09999999999999,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8697] = {
		{
			8697,
			"Ring of Infinite Wisdom [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15498,
			"Windcaller Yessendra",
			"Ahn'Qiraj: The Fallen Kingdom",
			59.4,
			14.1,
			772,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10104] = {
		{
			10104,
			"Concerns About Tuurem",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18008,
			"Ikuti",
			"Zangarmarsh",
			41.9,
			27.2,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26100] = {
		{
			26100,
			"The General is Dead",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			42047,
			"Masha Cliffwalker",
			"Stonetalon Mountains",
			45.1,
			32.8,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12287] = {
		{
			12287,
			"[72] [72] Orik Trueheart and the Forgotten Shore",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27314,
			"Zelig the Visionary",
			"Dragonblight",
			79.09999999999999,
			47.2,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25852] = {
		{
			25852,
			"All's Clear",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41229,
			"Force Commander Valen",
			"Stonetalon Mountains",
			71.2,
			79.7,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13119] = {
		{
			13119,
			"Destroying the Altars",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30631,
			"Darkrider Arly",
			"Icecrown",
			35.4,
			66.3,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26492] = {
		{
			26492,
			"Skulk Rock Supplies",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43108,
			"Kerr Ironsight",
			"The Hinterlands",
			66.3,
			44.3,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13631] = {
		{
			13631,
			"All Is Well That Ends Well [Raid (10)]",
			80,
			"Ulduar",
			1,
		},
		{
			1084,
		},
		{
			nil,
			nil,
			"Dalaran",
			55.9,
			46.8,
			504,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27516] = {
		{
			27516,
			"Wings Over Highbank",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45172,
			"Thordun Hammerblow",
			"Twilight Highlands",
			67.7,
			65.90000000000001,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25972] = {
		{
			25972,
			"Honor and Privilege",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41770,
			"Fiasco Sizzlegrin",
			"Shimmering Expanse",
			50.4,
			79,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28540] = {
		{
			28540,
			"Doin' De E'ko Magic [Group]",
			51,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			10307,
			"Witch Doctor Mau'ari",
			"Winterspring",
			25.2,
			58.5,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28525] = {
		{
			28525,
			"Hero's Call: Un'Goro Crater!",
			50,
			"Un'Goro Crater",
			4,
		},
		{
			28,
		},
		{
			nil,
			nil,
			"The Exodar",
			55.1,
			47.5,
			471,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28656] = {
		{
			28656,
			"Strange Life Forces",
			51,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			nil,
			nil,
			"Winterspring",
			35.1,
			56.3,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10232] = {
		{
			10232,
			"In A Scrap With The Legion",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19645,
			"Papa Wheeler",
			"Netherstorm",
			33,
			64.7,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25588] = {
		{
			25588,
			"A Little Payback",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40591,
			"Drag Master Miglen",
			"Thousand Needles",
			78.09999999999999,
			73.2,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9279] = {
		{
			9279,
			"You Survived!",
			1,
			"Ammen Vale",
			1,
		},
		{
			5,
		},
		{
			16475,
			"Megelon",
			"Azuremyst Isle",
			84.3,
			43,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12216] = {
		{
			12216,
			"Take Their Rear!",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27277,
			"Master Woodsman Anderhol",
			"Grizzly Hills",
			32.1,
			59.9,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14386] = {
		{
			14386,
			"Leader of the Pack",
			6,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36290,
			"Lord Godfrey",
			"Gilneas",
			28.9,
			63.8,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13054] = {
		{
			13054,
			"The Missing Tracker",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30247,
			"Bloodguard Lorga",
			"The Storm Peaks",
			36.5,
			49.1,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14258] = {
		{
			14258,
			"Mortar the Point",
			12,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35817,
			"Bombardier Captain Smooks",
			"Azshara",
			52.2,
			74.2,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14194] = {
		{
			14194,
			"Refleshification",
			11,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			nil,
			nil,
			"Azshara",
			20.1,
			70.09999999999999,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12670] = {
		{
			12670,
			"The Scarlet Harvest",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28510,
			"Scourge Commander Thalanor",
			"Plaguelands: The Scarlet Enclave",
			51.4,
			34.8,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14066] = {
		{
			14066,
			"Investigate the Wreckage",
			15,
			"Northern Barrens",
			5,
		},
		{
			17,
		},
		{
			3464,
			"Gazrog",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24441] = {
		{
			24441,
			"Thunderhorn Totem",
			7,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			2948,
			"Mull Thunderhorn",
			"Mulgore",
			48.7,
			59.8,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24569] = {
		{
			24569,
			"Siegebreaker",
			32,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37679,
			"Warlord Bloodhilt",
			"Southern Barrens",
			41.5,
			46.8,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24697] = {
		{
			24697,
			"How to Make Meat Fresh Again",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38270,
			"Nolen Tacker",
			"Un'Goro Crater",
			55.1,
			60.5,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8318] = {
		{
			8318,
			"Secret Communication",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			15306,
			"Bor Wildmane",
			"Silithus",
			0,
			0,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24953] = {
		{
			24953,
			"Just Trying to Kill Some Bugs",
			47,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38706,
			"Zeke Bootscuff",
			"Tanaris",
			55.7,
			60.8,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25081] = {
		{
			25081,
			"Claim the Battlescar",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39083,
			"Commander Roberts",
			"Southern Barrens",
			49.1,
			67,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25209] = {
		{
			25209,
			"The Gordunni Threat",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39656,
			"Orhan Ogreblade",
			"Feralas",
			51.9,
			48,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25337] = {
		{
			25337,
			"Hippogryph Muisek",
			38,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39894,
			"Gombana",
			"Feralas",
			52.2,
			48.1,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25465] = {
		{
			25465,
			"Still With The Zapped Giants",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			14637,
			"Zorbin Fandazzle",
			"Feralas",
			48.7,
			44.8,
			121,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25593] = {
		{
			25593,
			"Shelled Salvation",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40916,
			"Captain Vilethorn",
			"Shimmering Expanse",
			51.2,
			63,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25721] = {
		{
			25721,
			"Fight the Flood",
			20,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41086,
			"Forba Slabchisel",
			"Wetlands",
			57.5,
			71.90000000000001,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25849] = {
		{
			25849,
			"When Archaeology Attacks",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41411,
			"Prospector Whelgar",
			"Wetlands",
			38.9,
			39.4,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25977] = {
		{
			25977,
			"A Standard Day for Azrajar",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41667,
			"Lieutenant \"Foxy\" Topper",
			"Abyssal Depths",
			55.5,
			72.90000000000001,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26105] = {
		{
			26105,
			"Claim Korthun's End",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			nil,
			nil,
			"Abyssal Depths",
			50.2,
			73.3,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26233] = {
		{
			26233,
			"Stealing From Our Own",
			80,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			42506,
			"Marogg",
			"Orgrimmar",
			0,
			0,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26361] = {
		{
			26361,
			"Smoot's Samophlange",
			84,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			42643,
			"Fleep",
			"Azshara",
			54.5,
			51.2,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26489] = {
		{
			26489,
			"It's You!!",
			30,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43095,
			"Sassy Hardwrench",
			"The Cape of Stranglethorn",
			34.7,
			29.4,
			673,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26617] = {
		{
			26617,
			"An Old Sea Dog",
			32,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2845,
			"Fargon Mortalak",
			"The Cape of Stranglethorn",
			44.1,
			70,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26745] = {
		{
			26745,
			"Favored Skull",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42736,
			"Lashtail Hatchling",
			"Northern Stranglethorn",
			33.7,
			37,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26873] = {
		{
			26873,
			"Preemptive Methods",
			18,
			"Wailing Caverns",
			1,
		},
		{
			1018,
		},
		{
			5767,
			"Nalpak",
			"Wailing Caverns",
			46.3,
			58.6,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27001] = {
		{
			27001,
			"This Means WAR (Wild Arachnid Roundup)",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			11616,
			"Nathaniel Dumah",
			"Western Plaguelands",
			48.1,
			32.5,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27129] = {
		{
			27129,
			"Saving Warpwood",
			40,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			40032,
			"Telaron Windflight",
			"Feralas",
			50.7,
			17.2,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27257] = {
		{
			27257,
			"The Black Shield",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			5087,
			"Do'gol",
			"Dustwallow Marsh",
			36.6,
			30.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27385] = {
		{
			27385,
			"Uncle Carlin",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			nil,
			nil,
			"Eastern Plaguelands",
			32.5,
			83.8,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27513] = {
		{
			27513,
			"Transdimensional Warfare: Chapter II",
			18,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			45752,
			"Ambermill Dimensional Portal",
			"Silverpine Forest",
			58,
			69.90000000000001,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9726] = {
		{
			9726,
			"Now That We're Friends...",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17856,
			"Gzhun'tt",
			"Zangarmarsh",
			19.5,
			50.1,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27769] = {
		{
			27769,
			"Rhea Revealed",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46654,
			"Rhea",
			"Badlands",
			66.40000000000001,
			55.6,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27897] = {
		{
			27897,
			"The Hidden Clutch",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			nil,
			nil,
			"Badlands",
			8.199999999999999,
			41.7,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9918] = {
		{
			9918,
			"Not On My Watch!",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18353,
			"Huntress Bintook",
			"Nagrand",
			55,
			70.59999999999999,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28153] = {
		{
			28153,
			"Shadow Lord Fel'dan",
			46,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			nil,
			nil,
			"Felwood",
			38.9,
			50.4,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28281] = {
		{
			28281,
			"Last Stand at Thundermar",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48173,
			"Colin Thundermar",
			"Twilight Highlands",
			49,
			29.7,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28409] = {
		{
			28409,
			"Something Brewed",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48367,
			"Lachlan MacGraff",
			"Twilight Highlands",
			54.4,
			16.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28537] = {
		{
			28537,
			"In Pursuit of Shades",
			51,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			10920,
			"Kelek Skykeeper",
			"Winterspring",
			46.8,
			53.9,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10238] = {
		{
			10238,
			"How to Serve Goblins",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16915,
			"Foreman Razelcraz",
			"Hellfire Peninsula",
			51.4,
			30.6,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10302] = {
		{
			10302,
			"Volatile Mutations",
			2,
			"Ammen Vale",
			1,
		},
		{
			5,
		},
		{
			16514,
			"Botanist Taerix",
			"Azuremyst Isle",
			79.09999999999999,
			46.4,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13566] = {
		{
			13566,
			"Ritual Materials",
			12,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33048,
			"Keeper Karithus",
			"Darkshore",
			43,
			39.1,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10430] = {
		{
			10430,
			"Testing the Prototype",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20811,
			"Ghabar",
			"Netherstorm",
			43.6,
			35.1,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28791] = {
		{
			28791,
			"They Sent Assassins",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.7,
			38.5,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13874] = {
		{
			13874,
			"A Not-So-Charmed Life",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34239,
			"Hephaestus Pilgrim",
			"Ashenvale",
			36.5,
			49.8,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10622] = {
		{
			10622,
			"Proof of Allegiance",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21826,
			"Sanoru",
			"Shadowmoon Valley",
			57.3,
			49.6,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10686] = {
		{
			10686,
			"The Warden's Cage",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21955,
			"Arcanist Thelis",
			"Shadowmoon Valley",
			56.3,
			59.5,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10750] = {
		{
			10750,
			"The Path of Conquest [Group]",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21769,
			"Overlord Or'barokh",
			"Shadowmoon Valley",
			28.5,
			26.5,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10814] = {
		{
			10814,
			"Neltharaku's Tale",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21657,
			"Neltharaku",
			"Shadowmoon Valley",
			61.6,
			54.8,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10878] = {
		{
			10878,
			"Before Darkness Falls",
			63,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22370,
			"Mekeda",
			"Terokkar Forest",
			37.7,
			50,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13810] = {
		{
			13810,
			"Taking Battle To The Enemy",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33759,
			"Eadric the Pure",
			"Icecrown",
			69.90000000000001,
			23.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[2752] = {
		{
			2752,
			"On Iron Pauldrons",
			32,
			"Blacksmithing",
			1,
		},
		{
			3003,
		},
		{
			7790,
			"Orokk Omosh",
			"Orgrimmar",
			76.8,
			37.6,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11070] = {
		{
			11070,
			"Dragonmaw Race: Wing Commander Mulverick",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23346,
			"Wing Commander Mulverick",
			"Shadowmoon Valley",
			65.2,
			85,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9463] = {
		{
			9463,
			"Medicinal Purpose",
			6,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17214,
			"Anchorite Fateema",
			"Azuremyst Isle",
			48.5,
			51.8,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9729] = {
		{
			9729,
			"Fhwoor Smash! [Group]",
			65,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17877,
			"Fhwoor",
			"Zangarmarsh",
			19.7,
			50.8,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11262] = {
		{
			11262,
			"Ingvar Must Die! [Dungeon]",
			71,
			"Utgarde Keep",
			1,
		},
		{
			1054,
		},
		{
			24137,
			"Dark Ranger Marrah",
			"Utgarde Keep",
			68.2,
			68.40000000000001,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11326] = {
		{
			11326,
			"Alpha Worg",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24261,
			"Ulfang",
			"Howling Fjord",
			29.6,
			5.7,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11390] = {
		{
			11390,
			"I've Got a Flying Machine!",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24399,
			"Steel Gate Chief Archaeologist",
			"Howling Fjord",
			30.8,
			28.5,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13618] = {
		{
			13618,
			"Find Gorat!",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			8582,
			"Kadrak",
			"Northern Barrens",
			42.3,
			15.3,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13554] = {
		{
			13554,
			"A Cure In The Dark",
			11,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			nil,
			nil,
			"Darkshore",
			54.2,
			29.3,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11582] = {
		{
			11582,
			"Monitoring the Rift: Sundered Chasm",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25291,
			"Librarian Garren",
			"Borean Tundra",
			45,
			33.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11646] = {
		{
			11646,
			"The Borean Inquisition",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25262,
			"Librarian Donathan",
			"Borean Tundra",
			45.2,
			33.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11710] = {
		{
			11710,
			"What's the Matter with the Transmatter?",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25702,
			"Mordle Cogspinner",
			"Borean Tundra",
			57.5,
			18.6,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28790] = {
		{
			28790,
			"A Personal Summons",
			80,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			[5] = 46,
			[4] = 58.4,
			[8] = 0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14333] = {
		{
			14333,
			"While You're Here",
			35,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Maraudon",
			38.2,
			58.1,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11902] = {
		{
			11902,
			"Pernicious Evidence",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			nil,
			nil,
			"Borean Tundra",
			56.8,
			55.5,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13362] = {
		{
			13362,
			"Knowledge is a Terrible Burden",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			32497,
			"Matthias Lehner",
			"Icecrown",
			49.2,
			73.09999999999999,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12030] = {
		{
			12030,
			"[72] [72] Elder Mana'loa",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26595,
			"Toalu'u the Mystic",
			"Dragonblight",
			49.1,
			75.7,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12094] = {
		{
			12094,
			"Latent Power",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26420,
			"Gavrock",
			"Grizzly Hills",
			79.8,
			33.6,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12158] = {
		{
			12158,
			"Hollowstone Mine",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26212,
			"Captain Gryan Stoutmantle",
			"Grizzly Hills",
			59.4,
			26,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12222] = {
		{
			12222,
			"Secrets of the Flamebinders",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27391,
			"Woodsman Drake",
			"Grizzly Hills",
			32.4,
			60,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24570] = {
		{
			24570,
			"Adder Subtraction",
			31,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38314,
			"Muyoh",
			"Southern Barrens",
			50.3,
			40.5,
			607,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24698] = {
		{
			24698,
			"Adventures in Archaeology",
			53,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38270,
			"Nolen Tacker",
			"Un'Goro Crater",
			55,
			60.6,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[3104] = {
		{
			3104,
			"Glyphic Letter",
			3,
			"Mage",
			1,
		},
		{
			2004,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.2,
			42,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12478] = {
		{
			12478,
			"Frostmourne Cavern",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27314,
			"Zelig the Visionary",
			"Dragonblight",
			79.09999999999999,
			47.3,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25082] = {
		{
			25082,
			"Working the Bugs Out",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39085,
			"Logan Talonstrike",
			"Southern Barrens",
			49.3,
			67.8,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25210] = {
		{
			25210,
			"Signs of Change",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39377,
			"Konu Runetotem",
			"Feralas",
			41.3,
			15.5,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25338] = {
		{
			25338,
			"Treant Muisek",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			8115,
			"Witch Doctor Uzer'i",
			"Feralas",
			74.40000000000001,
			43.4,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12734] = {
		{
			12734,
			"Rejek: First Blood",
			80,
			"Sholazar Basin",
			3,
		},
		{
			85,
		},
		{
			29043,
			"Rejek",
			"Sholazar Basin",
			55.7,
			69.5,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25594] = {
		{
			25594,
			"Crafty Crabs",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40918,
			"Fiasco Sizzlegrin",
			"Shimmering Expanse",
			53.8,
			67,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25722] = {
		{
			25722,
			"Sedimentary, My Dear",
			20,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41129,
			"Surveyor Thurdan",
			"Wetlands",
			57.5,
			71.5,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25850] = {
		{
			25850,
			"Strike the Earth!",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41412,
			"Ormer Ironbraid",
			"Wetlands",
			38.7,
			39.5,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25978] = {
		{
			25978,
			"Entombed in Ice",
			10,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41786,
			"Sergeant Bahrum",
			"Dun Morogh",
			82.8,
			48.4,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26106] = {
		{
			26106,
			"Fuel-ology 101",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41666,
			"Engineer Hexascrub",
			"Abyssal Depths",
			55.5,
			72.90000000000001,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13118] = {
		{
			13118,
			"The Purging Of Scourgeholme",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30596,
			"The Ebon Watcher",
			"Icecrown",
			83.09999999999999,
			72.90000000000001,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26362] = {
		{
			26362,
			"Be Raptor",
			29,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42812,
			"Priestess Hu'rala",
			"Northern Stranglethorn",
			63.4,
			39,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26490] = {
		{
			26490,
			"Prime Slime",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43109,
			"Dron Blastbrew",
			"The Hinterlands",
			66.3,
			44.3,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26618] = {
		{
			26618,
			"Wolves at Our Heels",
			21,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			264,
			"Commander Althea Ebonlocke",
			"Duskwood",
			73.5,
			47,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26746] = {
		{
			26746,
			"A Nose for This Sort of Thing",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			43884,
			"Osborn Obnoticus",
			"Northern Stranglethorn",
			47.2,
			10.7,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13298] = {
		{
			13298,
			"Coprous the Defiled [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29799,
			"Thassarian",
			"Icecrown",
			58.8,
			42.7,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27002] = {
		{
			27002,
			"An Audience with the Highlord",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			11616,
			"Nathaniel Dumah",
			"Western Plaguelands",
			48.1,
			32.5,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27130] = {
		{
			27130,
			"Saving Warpwood",
			40,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			7875,
			"Hadoken Swiftstrider",
			"Feralas",
			74.90000000000001,
			42.5,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27258] = {
		{
			27258,
			"The Black Shield",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4926,
			"Krog",
			"Dustwallow Marsh",
			36.4,
			31.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27386] = {
		{
			27386,
			"A Strange Historian",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			11063,
			"Carlin Redpath",
			"Eastern Plaguelands",
			35.6,
			68.8,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27514] = {
		{
			27514,
			"Bird Down! Bird Down!",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45169,
			"Lieutenant Emry",
			"Twilight Highlands",
			76.7,
			69.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27642] = {
		{
			27642,
			"Sifting Through The Wreckage",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46143,
			"Flynn Dunwald",
			"Twilight Highlands",
			46,
			65.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13886] = {
		{
			13886,
			"Vortex",
			24,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34289,
			"The Vortex",
			"Ashenvale",
			52.3,
			56.6,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27898] = {
		{
			27898,
			"Rheastrasza's Gift",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			nil,
			nil,
			"Badlands",
			16.1,
			33.4,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14014] = {
		{
			14014,
			"Get Our Stuff Back!",
			6,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			35650,
			"Sassy Hardwrench",
			"The Lost Isles",
			27.9,
			75.59999999999999,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14078] = {
		{
			14078,
			"Lockdown!",
			1,
			"Gilneas City",
			1,
		},
		{
			50,
		},
		{
			34850,
			"Prince Liam Greymane",
			"Gilneas City",
			59.3,
			23.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28282] = {
		{
			28282,
			"Narkrall, The Drake-Tamer",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48173,
			"Colin Thundermar",
			"Twilight Highlands",
			49,
			29.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28410] = {
		{
			28410,
			"Something Stolen",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48367,
			"Lachlan MacGraff",
			"Twilight Highlands",
			54.4,
			16.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28538] = {
		{
			28538,
			"Cry of the Banshee",
			24,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			2278,
			"Melisara",
			"Hillsbrad Foothills",
			57.1,
			46.4,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28666] = {
		{
			28666,
			"Hero's Call: Burning Steppes!",
			50,
			"Burning Steppes",
			4,
		},
		{
			34,
		},
		{
			nil,
			nil,
			"Ironforge",
			24.9,
			67.7,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28794] = {
		{
			28794,
			"They Sent Assassins",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.4,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14462] = {
		{
			14462,
			"Where's My Head?",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36730,
			"Chawg",
			"Azshara",
			14,
			64.8,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[3632] = {
		{
			3632,
			"Gnome Engineering",
			80,
			"Engineering",
			1,
		},
		{
			3005,
		},
		{
			5174,
			"Springspindle Fizzlegear",
			"Ironforge",
			68.2,
			43.9,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26466] = {
		{
			26466,
			"Ruuzel",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3846,
			"Talen",
			"Ashenvale",
			18.2,
			20.5,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13170] = {
		{
			13170,
			"Honor is for the Weak",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30946,
			"Keritose Bloodblade",
			"Icecrown",
			44.1,
			24.6,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13106] = {
		{
			13106,
			"Blackwatch",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29343,
			"Baron Sliver",
			"Icecrown",
			42.8,
			25,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26082] = {
		{
			26082,
			"To Battlescar!",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			42050,
			"General Grebo",
			"Stonetalon Mountains",
			45.2,
			32.7,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12978] = {
		{
			12978,
			"Facing the Storm",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30152,
			"Bruor Ironbane",
			"The Storm Peaks",
			31.3,
			38.2,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12914] = {
		{
			12914,
			"Gymer's Salvation",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			29688,
			"Engineer Reed",
			"Zul'Drak",
			25.2,
			63.9,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12850] = {
		{
			12850,
			"Report To Scourge Commander Thalanor",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28444,
			"Highlord Darion Mograine",
			"Plaguelands: The Scarlet Enclave",
			48.9,
			29.8,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13308] = {
		{
			13308,
			"Mind Tricks [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			31892,
			"Darkspeaker R'khem",
			"Icecrown",
			54.5,
			59.1,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12722] = {
		{
			12722,
			"Lambs To The Slaughter",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28910,
			"Baron Rivendare",
			"Plaguelands: The Scarlet Enclave",
			54.6,
			57.4,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25314] = {
		{
			25314,
			"Speech Writing for Dummies",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39413,
			"Instructor Mylva",
			"Mount Hyjal",
			88.3,
			58.5,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25186] = {
		{
			25186,
			"Futile Resistance",
			31,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38380,
			"Janice Mattingly",
			"Southern Barrens",
			35,
			9.6,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25058] = {
		{
			25058,
			"Mine Disposal, the Goblin Way",
			9,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38387,
			"Sassy Hardwrench",
			"The Lost Isles",
			37.3,
			42,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[3117] = {
		{
			3117,
			"Etched Sigil",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			2079,
			"Ilthalaine",
			"Teldrassil",
			58.1,
			38.9,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[3101] = {
		{
			3101,
			"Consecrated Letter",
			3,
			"Paladin",
			1,
		},
		{
			2005,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25715] = {
		{
			25715,
			"A Closer Look",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			9540,
			"Enohar Thunderbrew",
			"Blasted Lands",
			61.5,
			18.6,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24546] = {
		{
			24546,
			"A Line in the Dirt",
			32,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			3418,
			"Kirge Sternhorn",
			"Southern Barrens",
			41.6,
			46.5,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14398] = {
		{
			14398,
			"[7] Grandma Wahl",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36452,
			"Gwen Armstead",
			"Gilneas",
			37.5,
			65.3,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25462] = {
		{
			25462,
			"The Bears Up There",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39932,
			"Keeper Taldros",
			"Mount Hyjal",
			13.6,
			32.8,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12541] = {
		{
			12541,
			"Troll Patrol: The Alchemist's Apprentice",
			76,
			"Zul'Drak",
			3,
		},
		{
			88,
		},
		{
			28205,
			"Alchemist Finklestein",
			"Zul'Drak",
			35.1,
			52.1,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26749] = {
		{
			26749,
			"Priestess Thaalia",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			43884,
			"Osborn Obnoticus",
			"Northern Stranglethorn",
			47.2,
			10.6,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27133] = {
		{
			27133,
			"Eyes in the Sky",
			46,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			3936,
			"Shandris Feathermoon",
			"Feralas",
			46,
			49.1,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12413] = {
		{
			12413,
			"Attack on Silverbrook",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26860,
			"Conqueror Krenna",
			"Grizzly Hills",
			20.7,
			64.2,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26610] = {
		{
			26610,
			"Bloodsail Treachery",
			32,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			nil,
			nil,
			"The Cape of Stranglethorn",
			41.4,
			61.2,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10297] = {
		{
			10297,
			"[70D] The Opening of the Dark Portal [Dungeon]",
			70,
			"Caverns of Time",
			1,
		},
		{
			1024,
		},
		{
			20201,
			"Sa'at",
			"The Black Morass",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27765] = {
		{
			27765,
			"First Sample: Wild Eggs",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46654,
			"Rhea",
			"Badlands",
			66.40000000000001,
			55.4,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28785] = {
		{
			28785,
			"Join the Battle!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			925,
			"Brother Sammuel",
			"Elwynn Forest",
			50.3,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28657] = {
		{
			28657,
			"A Huge Problem [Group]",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48069,
			"Commander Zanoth",
			"Tol Barad",
			50.8,
			49.9,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13888] = {
		{
			13888,
			"Vortex",
			24,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34289,
			"The Vortex",
			"Ashenvale",
			52.3,
			56.7,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24571] = {
		{
			24571,
			"Lashvine Seeds",
			31,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38314,
			"Muyoh",
			"Southern Barrens",
			50.3,
			40.5,
			607,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24699] = {
		{
			24699,
			"Gormashh the Glutinous",
			54,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38276,
			"Tara",
			"Un'Goro Crater",
			43.1,
			41.2,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12859] = {
		{
			12859,
			"This Just In: Fire Still Hot!",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			29733,
			"Elder Shaman Moky",
			"Zul'Drak",
			32,
			75.5,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24955] = {
		{
			24955,
			"Un-Chartered",
			48,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38849,
			"Megs Dreadshredder",
			"Tanaris",
			44.6,
			52.7,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25973] = {
		{
			25973,
			"Welcome News",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40921,
			"Bloodguard Toldrek",
			"Shimmering Expanse",
			50.4,
			79,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25211] = {
		{
			25211,
			"Cleaning Hovel",
			21,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41074,
			"Mountaineer Grugelm",
			"Wetlands",
			50,
			79.3,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25339] = {
		{
			25339,
			"Vengeance on the Northspring",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			7776,
			"Talo Thornhoof",
			"Feralas",
			41.3,
			15.5,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25467] = {
		{
			25467,
			"Kliklak's Craw",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			40811,
			"Gilblin Scavenger",
			"Kelp'thar Forest",
			52.2,
			30.2,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8703] = {
		{
			8703,
			"Ring of Eternal Justice [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15498,
			"Windcaller Yessendra",
			"Ahn'Qiraj: The Fallen Kingdom",
			59.4,
			14,
			772,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25723] = {
		{
			25723,
			"Thresh Out of Luck",
			20,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41128,
			"Dunlor Marblebeard",
			"Wetlands",
			57.8,
			71.5,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25851] = {
		{
			25851,
			"Dances with Grimtotem",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			11858,
			"Grundig Darkcloud",
			"Stonetalon Mountains",
			72.40000000000001,
			83.7,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8895] = {
		{
			8895,
			"Delivery to the North Sanctum",
			6,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15418,
			"Magister Jaronis",
			"Eversong Woods",
			47.2,
			46.4,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26107] = {
		{
			26107,
			"Raising Spirits",
			28,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			42130,
			"Gor'mul",
			"Arathi Highlands",
			67.8,
			34.9,
			16,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[4512] = {
		{
			4512,
			"A Little Slime Goes a Long Way",
			52,
			"Ironforge",
			1,
		},
		{
			43,
		},
		{
			9616,
			"Laris Geardawdle",
			"Ironforge",
			75.5,
			23.4,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26363] = {
		{
			26363,
			"Summit of Fate",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42642,
			"Primal Torntusk",
			"The Hinterlands",
			67.8,
			66.5,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9151] = {
		{
			9151,
			"The Sanctum of the Sun",
			20,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16199,
			"Magister Darenis",
			"Ghostlands",
			46.1,
			31.9,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9215] = {
		{
			9215,
			"Bring Me Kel'gash's Head! [Group]",
			20,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16463,
			"Farstrider Solanna",
			"Ghostlands",
			72.2,
			31.3,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26747] = {
		{
			26747,
			"A Physical Specimen",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			43884,
			"Osborn Obnoticus",
			"Northern Stranglethorn",
			47.2,
			10.6,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26875] = {
		{
			26875,
			"Undying Twilight",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43818,
			"Maruut Stonebinder",
			"Deepholm",
			49.6,
			52.9,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27003] = {
		{
			27003,
			"Easy Money",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			44833,
			"Adarrah",
			"Tanaris",
			30.5,
			65.5,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27131] = {
		{
			27131,
			"The Highborne",
			42,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			nil,
			nil,
			"Feralas",
			50.7,
			17.2,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27259] = {
		{
			27259,
			"Suspicious Hoofprints",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			nil,
			nil,
			"Dustwallow Marsh",
			29.6,
			47.7,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27387] = {
		{
			27387,
			"Villains of Darrowshire",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			10667,
			"Chromie",
			"Eastern Plaguelands",
			35.2,
			68.09999999999999,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9663] = {
		{
			9663,
			"The Kessel Run",
			12,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17649,
			"Kessel",
			"Bloodmyst Isle",
			63.1,
			87.40000000000001,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27643] = {
		{
			27643,
			"Donnelly Dunwald",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46177,
			"Keely Dunwald",
			"Twilight Highlands",
			46,
			65.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27771] = {
		{
			27771,
			"Third Sample: Implanted Eggs",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46654,
			"Rhea",
			"Badlands",
			66.5,
			55.3,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27899] = {
		{
			27899,
			"That Gleam in his Eye",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47005,
			"Adarrah",
			"Uldum",
			54.3,
			35.3,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9919] = {
		{
			9919,
			"Sporeggar",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17923,
			"Fahssn",
			"Zangarmarsh",
			19,
			63.1,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28155] = {
		{
			28155,
			"Lord Banehollow",
			46,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			nil,
			nil,
			"Felwood",
			39.7,
			47,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28283] = {
		{
			28283,
			"What's that Rattle?",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			nil,
			nil,
			"Thousand Needles",
			43.4,
			43.4,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28411] = {
		{
			28411,
			"Something Stewed",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48367,
			"Lachlan MacGraff",
			"Twilight Highlands",
			54.4,
			16.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28539] = {
		{
			28539,
			"Hero's Call: Stonetalon Mountains!",
			25,
			"Stonetalon Mountains",
			4,
		},
		{
			21,
		},
		{
			nil,
			nil,
			"The Exodar",
			54.8,
			47.5,
			471,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28667] = {
		{
			28667,
			"Warchief's Command: Burning Steppes!",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			2458,
			"Randolph Montague",
			"Undercity",
			65.90000000000001,
			49.4,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10303] = {
		{
			10303,
			"The Blood Elves",
			4,
			"Ammen Vale",
			1,
		},
		{
			5,
		},
		{
			16546,
			"Tolaan",
			"Azuremyst Isle",
			72.09999999999999,
			60.8,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10367] = {
		{
			10367,
			"A Traitor Among Us",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19361,
			"Naladu",
			"Hellfire Peninsula",
			16.2,
			65,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10431] = {
		{
			10431,
			"Outside Assistance",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19466,
			"Exarch Orelis",
			"Netherstorm",
			32.1,
			64.2,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25845] = {
		{
			25845,
			"Terms of Service",
			29,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41350,
			"Ton Windbow",
			"Stonetalon Mountains",
			72.8,
			81,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25190] = {
		{
			25190,
			"Raggaran's Rage",
			8,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			39326,
			"Raggaran",
			"Durotar",
			42.6,
			49.8,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10623] = {
		{
			10623,
			"Illidari-Bane Shard",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			nil,
			nil,
			"Shadowmoon Valley",
			24.3,
			35.3,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10687] = {
		{
			10687,
			"Karabor Training Grounds",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21954,
			"Larissa Sunstrike",
			"Shadowmoon Valley",
			55.8,
			58.2,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10751] = {
		{
			10751,
			"Breaching the Path [Group]",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21998,
			"Kor'kron Wind Rider",
			"Shadowmoon Valley",
			52.6,
			59.9,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26622] = {
		{
			26622,
			"Death to Mor'ghor",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			43581,
			"Zaela",
			"Twilight Highlands",
			76.59999999999999,
			49.6,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10879] = {
		{
			10879,
			"The Skettis Offensive [Group]",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22373,
			"Defender Grashna",
			"Shattrath City",
			52,
			20.7,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27262] = {
		{
			27262,
			"Suspicious Hoofprints",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23567,
			"Inspector Tarem",
			"Dustwallow Marsh",
			29.7,
			47.8,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11007] = {
		{
			11007,
			"Kael'thas and the Verdant Sphere",
			70,
			"Tempest Keep",
			1,
		},
		{
			1035,
		},
		{
			nil,
			nil,
			"The Vortex Pinnacle",
			56.3,
			42.8,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11071] = {
		{
			11071,
			"Dragonmaw Race: Captain Skyshatter",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23348,
			"Captain Skyshatter",
			"Shadowmoon Valley",
			65.40000000000001,
			85.09999999999999,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14204] = {
		{
			14204,
			"From the Shadows",
			4,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35378,
			"Lorna Crowley",
			"Gilneas City",
			56.9,
			81.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11199] = {
		{
			11199,
			"Report to Scout Knowles",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23749,
			"Captain Adams",
			"Howling Fjord",
			28.9,
			44.2,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11263] = {
		{
			11263,
			"Dealing With Gjalerbron",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24129,
			"Chieftain Ashtotem",
			"Howling Fjord",
			48.1,
			10.7,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11327] = {
		{
			11327,
			"Mission: Package Retrieval",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23906,
			"Scout Knowles",
			"Howling Fjord",
			44.4,
			57.6,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11391] = {
		{
			11391,
			"[71] [71] Steel Gate Patrol",
			71,
			"Howling Fjord",
			3,
		},
		{
			82,
		},
		{
			24399,
			"Steel Gate Chief Archaeologist",
			"Howling Fjord",
			30.9,
			28.6,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11455] = {
		{
			11455,
			"The Fragrance of Money",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24537,
			"Handsome Terry",
			"Howling Fjord",
			35.6,
			80.3,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11519] = {
		{
			11519,
			"The Lost Shield of the Aesirites",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24539,
			"\"Silvermoon\" Harry",
			"Howling Fjord",
			35.1,
			80.90000000000001,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27518] = {
		{
			27518,
			"Transdimensional Warfare: Chapter III",
			19,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			46846,
			"Doomskull",
			"Silverpine Forest",
			57.7,
			63.8,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11647] = {
		{
			11647,
			"Neutralizing the Cauldrons",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			24709,
			"Sage Aeire",
			"Borean Tundra",
			75.90000000000001,
			37.2,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11711] = {
		{
			11711,
			"Coward Delivery... Under 30 Minutes or it's Free",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25379,
			"Warden Nork Bloodfrenzy",
			"Borean Tundra",
			43.7,
			54.5,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13884] = {
		{
			13884,
			"Put Out The Fire",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34292,
			"Arctanus",
			"Ashenvale",
			52.1,
			56.6,
			43,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9157] = {
		{
			9157,
			"Forgotten Rituals",
			12,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16201,
			"Geranis Whitemorn",
			"Ghostlands",
			72.3,
			19.2,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11903] = {
		{
			11903,
			"It's Time for Action",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26083,
			"Gerald Green",
			"Borean Tundra",
			58.2,
			62.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11967] = {
		{
			11967,
			"Mustering the Reds",
			71,
			"Coldarra",
			1,
		},
		{
			77,
		},
		{
			26206,
			"Keristrasza",
			"Borean Tundra",
			33.2,
			34.2,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12031] = {
		{
			12031,
			"[72] [72] Freedom for the Lingering",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			nil,
			nil,
			"Dragonblight",
			36.6,
			65.09999999999999,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12095] = {
		{
			12095,
			"To Dragon's Fall [Group]",
			75,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26618,
			"Captain Gort",
			"Dragonblight",
			35.8,
			48.5,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12159] = {
		{
			12159,
			"Souls at Unrest",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26932,
			"Petrov",
			"Grizzly Hills",
			55.1,
			23.4,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12223] = {
		{
			12223,
			"Thinning the Ranks",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27391,
			"Woodsman Drake",
			"Grizzly Hills",
			32.4,
			60,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24572] = {
		{
			24572,
			"Taking Back Taurajo",
			33,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37679,
			"Warlord Bloodhilt",
			"Southern Barrens",
			41.5,
			46.9,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24700] = {
		{
			24700,
			"Hard to Harvest",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38276,
			"Tara",
			"Un'Goro Crater",
			43.3,
			41,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12415] = {
		{
			12415,
			"The Horse Hollerer",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26944,
			"Soulok Stormfury",
			"Grizzly Hills",
			65,
			47.8,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24956] = {
		{
			24956,
			"Silencing Rageroar",
			31,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38804,
			"Tolliver Houndstooth",
			"Southern Barrens",
			66.90000000000001,
			46.7,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25084] = {
		{
			25084,
			"A Growing Threat",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37835,
			"Dorn Redearth",
			"Southern Barrens",
			45.1,
			85.3,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12607] = {
		{
			12607,
			"A Mammoth Undertaking",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28374,
			"Zootfizzle",
			"Sholazar Basin",
			42.2,
			29,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25340] = {
		{
			25340,
			"Dark Heart",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			7776,
			"Talo Thornhoof",
			"Feralas",
			41.3,
			15.5,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25468] = {
		{
			25468,
			"Forces of Nature: Faerie Dragons",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			40913,
			"Handler Jesana",
			"Feralas",
			77,
			56.6,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25596] = {
		{
			25596,
			"Where's Synge?",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40556,
			"Zamek",
			"Thousand Needles",
			78.09999999999999,
			73.7,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25724] = {
		{
			25724,
			"Frostmane Aggression",
			6,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			40950,
			"Captain Tharran",
			"Dun Morogh",
			53.7,
			52.1,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12927] = {
		{
			12927,
			"Data Mining",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29579,
			"Brann Bronzebeard",
			"The Storm Peaks",
			37.9,
			45.1,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25980] = {
		{
			25980,
			"A Standard Day for Azrajar",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41670,
			"Sergeant Gertrude",
			"Abyssal Depths",
			51.5,
			60.9,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26108] = {
		{
			26108,
			"Guile of the Raptor",
			28,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			nil,
			nil,
			"Arathi Highlands",
			67.8,
			35.1,
			16,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26236] = {
		{
			26236,
			"Shakedown at the Saldean's",
			12,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			42558,
			"Lieutenant Horatio Laine",
			"Westfall",
			49.7,
			19.5,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13183] = {
		{
			13183,
			"Victory in Wintergrasp [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31151,
			"Tactical Officer Kilrath",
			"Wintergrasp",
			50.2,
			17.8,
			501,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[6624] = {
		{
			6624,
			"Triage",
			83,
			"First Aid",
			1,
		},
		{
			3006,
		},
		{
			12939,
			"Doctor Gustaf VanHowzen",
			"Dustwallow Marsh",
			67.7,
			48.9,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26620] = {
		{
			26620,
			"Seasoned Wolf Kabobs",
			21,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			272,
			"Chef Grual",
			"Duskwood",
			73.8,
			43.5,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26748] = {
		{
			26748,
			"Bloodlord Mandokir",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42790,
			"Bloodlord Mandokir",
			"Northern Stranglethorn",
			47.2,
			10.6,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26876] = {
		{
			26876,
			"The World Pillar Fragment",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44010,
			"Stormcaller Mylra",
			"Deepholm",
			64.5,
			82.2,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27004] = {
		{
			27004,
			"The Twilight Plot",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44799,
			"Explorer Mowi",
			"Deepholm",
			47.4,
			51.4,
			640,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27132] = {
		{
			27132,
			"The Highborne",
			42,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			7875,
			"Hadoken Swiftstrider",
			"Feralas",
			74.90000000000001,
			42.6,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27260] = {
		{
			27260,
			"Lieutenant Paval Reethe",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23567,
			"Inspector Tarem",
			"Dustwallow Marsh",
			29.8,
			48.2,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27388] = {
		{
			27388,
			"Heroes of Darrowshire",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			10667,
			"Chromie",
			"Eastern Plaguelands",
			35.2,
			68.09999999999999,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13759] = {
		{
			13759,
			"The Edge Of Winter",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33592,
			"Jaelyne Evensong",
			"Icecrown",
			76.3,
			19.1,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27644] = {
		{
			27644,
			"Eoin Dunwald",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46177,
			"Keely Dunwald",
			"Twilight Highlands",
			46,
			65.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27772] = {
		{
			27772,
			"The Venerable Doctor Blam",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46655,
			"Rheastrasza",
			"Badlands",
			66.40000000000001,
			55.6,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27900] = {
		{
			27900,
			"I've Got This Guy",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46978,
			"Harrison Jones",
			"Uldum",
			44,
			57.2,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28028] = {
		{
			28028,
			"Siege!",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47393,
			"Mountain-Lord Rendan",
			"Searing Gorge",
			39.3,
			67.90000000000001,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28156] = {
		{
			28156,
			"Deep Mine Rescue [Escort]",
			20,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			47681,
			"Dumass",
			"Hillsbrad Foothills",
			36.6,
			70.3,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14143] = {
		{
			14143,
			"A Leg Up",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34771,
			"Girana the Blooded",
			"Icecrown",
			76.09999999999999,
			24.1,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9149] = {
		{
			9149,
			"The Plagued Coast",
			13,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16198,
			"Apothecary Renzithen",
			"Ghostlands",
			47.6,
			34.8,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14271] = {
		{
			14271,
			"Report to Twocrush",
			13,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			nil,
			nil,
			"Azshara",
			59,
			72,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28668] = {
		{
			28668,
			"Prison Revolt",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48062,
			"Staff Sergeant Lazgar",
			"Tol Barad",
			51.4,
			49.4,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28796] = {
		{
			28796,
			"They Sent Assassins",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.4,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14463] = {
		{
			14463,
			"Horses for Duskhaven",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36457,
			"Lorna Crowley",
			"Gilneas",
			37.6,
			72.8,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28652] = {
		{
			28652,
			"Caretaker Caice",
			1,
			"Deathknell",
			1,
		},
		{
			60,
		},
		{
			1568,
			"Undertaker Mordo",
			"Tirisfal Glades",
			30.1,
			71.3,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26356] = {
		{
			26356,
			"Captain Sanders' Hidden Treasure",
			13,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			nil,
			nil,
			"Westfall",
			40.7,
			17.1,
			39,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28777] = {
		{
			28777,
			"Broken Owl Figurine",
			84,
			"Jewelcrafting",
			1,
		},
		{
			3010,
		},
		{
			nil,
			nil,
			"Uldum",
			39.9,
			35.8,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26228] = {
		{
			26228,
			"Livin' the Life",
			11,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			42405,
			"Two-Shoed Lou",
			"Westfall",
			49.7,
			19.4,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9541] = {
		{
			9541,
			"Totem of Yor",
			10,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17362,
			"Totem of Tikti",
			"Azuremyst Isle",
			64.40000000000001,
			39.8,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12988] = {
		{
			12988,
			"Destroy the Forges!",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29801,
			"Bouldercrag the Rockshaper",
			"The Storm Peaks",
			31.4,
			38,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13430] = {
		{
			13430,
			"Trial of the Naaru: Magtheridon [Raid]",
			70,
			"Magtheridon's Lair",
			1,
		},
		{
			1071,
		},
		{
			18481,
			"A'dal",
			"Shattrath City",
			54.2,
			44.9,
			481,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10290] = {
		{
			10290,
			"In Search of Farahlite [Group]",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20067,
			"Zuben Elgenubi",
			"Netherstorm",
			44.1,
			36,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28641] = {
		{
			28641,
			"Pride of the Dinner Table",
			53,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			7431,
			"Frostsaber",
			"Winterspring",
			52.5,
			22.2,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[2541] = {
		{
			2541,
			"The Sleeping Druid",
			8,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			7317,
			"Oben Rageclaw",
			"Teldrassil",
			45.1,
			53.5,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28385] = {
		{
			28385,
			"Oil and Irony",
			49,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			48493,
			"Alton Redding",
			"Felwood",
			56.8,
			18.4,
			182,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10034] = {
		{
			10034,
			"Wanted: Bonelashers Dead!",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18384,
			"Malukaz",
			"Terokkar Forest",
			49.9,
			45.3,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28129] = {
		{
			28129,
			"The Demon Prince",
			46,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47617,
			"Farlus Wildheart",
			"Felwood",
			44.1,
			61.9,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28001] = {
		{
			28001,
			"A Coward's Due",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46804,
			"Keegan Firebeard",
			"Twilight Highlands",
			60.2,
			57.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24436] = {
		{
			24436,
			"Halo Drops",
			16,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36921,
			"Sergeant Hort",
			"Azshara",
			41.4,
			53.9,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27745] = {
		{
			27745,
			"A Fiery Reunion",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46513,
			"Initiate Goldmine",
			"Twilight Highlands",
			34.3,
			86.59999999999999,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9473] = {
		{
			9473,
			"An Alternative Alternative",
			8,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17215,
			"Daedal",
			"Azuremyst Isle",
			48.4,
			51.6,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13940] = {
		{
			13940,
			"Leaving the Dream",
			17,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33166,
			"Thessera",
			"Darkshore",
			49.2,
			56.8,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14012] = {
		{
			14012,
			"Immolate",
			3,
			"Warlock",
			1,
		},
		{
			2009,
		},
		{
			34696,
			"Evol Fingers",
			"Kezan",
			57.9,
			74.40000000000001,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28394] = {
		{
			28394,
			"The Golem Lord's Creations [Dungeon]",
			50,
			"Blackrock Depths",
			1,
		},
		{
			1002,
		},
		{
			44247,
			"Wulf Hansreim",
			"Stormwind City",
			79.09999999999999,
			71.09999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26619] = {
		{
			26619,
			"You Say You Want a Revolution",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			43193,
			"Warlord Krogg",
			"Twilight Highlands",
			82.59999999999999,
			49.9,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9394] = {
		{
			9394,
			"Where's Wyllithen?",
			10,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15924,
			"Apprentice Loralthalis",
			"Eversong Woods",
			67.8,
			56.6,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[896] = {
		{
			896,
			"Miner's Fortune",
			16,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34674,
			"Brak Blusterpipe",
			"Northern Barrens",
			62.6,
			17,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[432] = {
		{
			432,
			"Those Blasted Troggs!",
			9,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			1254,
			"Foreman Stonebrow",
			"Dun Morogh",
			76.3,
			54.6,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25843] = {
		{
			25843,
			"Tortolla's Revenge",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			41480,
			"Arch Druid Hamuul Runetotem",
			"Mount Hyjal",
			19.5,
			37.7,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26465] = {
		{
			26465,
			"The Ancient Statuettes",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3846,
			"Talen",
			"Ashenvale",
			18.2,
			20.6,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10108] = {
		{
			10108,
			"Diplomatic Measures",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18223,
			"Mo'mor the Breaker",
			"Nagrand",
			54.6,
			72.2,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10044] = {
		{
			10044,
			"A Visit With the Greatmother",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18063,
			"Garrosh",
			"Nagrand",
			55.4,
			37.6,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14075] = {
		{
			14075,
			"Trouble in the Mines",
			1,
			"Kezan",
			1,
		},
		{
			90,
		},
		{
			34872,
			"Foreman Dampwick",
			"Kezan",
			60.1,
			74.7,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24573] = {
		{
			24573,
			"Honoring the Dead",
			33,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37717,
			"Winnoa Pineforest",
			"Southern Barrens",
			41.5,
			46.7,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24701] = {
		{
			24701,
			"Marshal's Refuse",
			53,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38277,
			"Doreen",
			"Un'Goro Crater",
			43.3,
			41,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8320] = {
		{
			8320,
			"Twilight Geolords",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			15270,
			"Huum Wildmane",
			"Silithus",
			0,
			0,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24957] = {
		{
			24957,
			"Get The Centipaarty Started",
			48,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38849,
			"Megs Dreadshredder",
			"Tanaris",
			44.5,
			52.7,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25085] = {
		{
			25085,
			"Mangletooth",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37835,
			"Dorn Redearth",
			"Southern Barrens",
			45.1,
			85.3,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25213] = {
		{
			25213,
			"The Slave Pits",
			10,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38124,
			"Assistant Greely",
			"The Lost Isles",
			54.3,
			17,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25341] = {
		{
			25341,
			"The Gordunni Orb",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39656,
			"Orhan Ogreblade",
			"Feralas",
			51.9,
			48,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25469] = {
		{
			25469,
			"Forces of Nature: Mountain Giants",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			40913,
			"Handler Jesana",
			"Feralas",
			77,
			56.6,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25597] = {
		{
			25597,
			"Commander Jarod Shadowsong",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40289,
			"Ysera",
			"Mount Hyjal",
			62.1,
			24.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25725] = {
		{
			25725,
			"Fenbush Berries",
			20,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41128,
			"Dunlor Marblebeard",
			"Wetlands",
			57.8,
			71.59999999999999,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25853] = {
		{
			25853,
			"Tooling Around",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41413,
			"Merrin Rockweaver",
			"Wetlands",
			38.8,
			39.7,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25981] = {
		{
			25981,
			"Those Aren't Masks",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41666,
			"Engineer Hexascrub",
			"Abyssal Depths",
			55.5,
			72.90000000000001,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27762] = {
		{
			27762,
			"Fuselight, Ho!",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			48704,
			"Gek Nozzlerocket",
			"Eastern Plaguelands",
			73.8,
			53.1,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26237] = {
		{
			26237,
			"Times are Tough",
			12,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			233,
			"Farmer Saldean",
			"Westfall",
			56,
			31.3,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26365] = {
		{
			26365,
			"Hero's Call: Redridge Mountains!",
			15,
			"Redridge Mountains",
			4,
		},
		{
			48,
		},
		{
			29611,
			"King Varian Wrynn",
			"Stormwind City",
			85.7,
			31.8,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9152] = {
		{
			9152,
			"Tomber's Supplies",
			11,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16224,
			"Rathis Tomber",
			"Ghostlands",
			47.1,
			28.6,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9216] = {
		{
			9216,
			"Rotting Hearts",
			16,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16205,
			"Magistrix Aminel",
			"Ghostlands",
			48.9,
			31.4,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9280] = {
		{
			9280,
			"Replenishing the Healing Crystals",
			1,
			"Ammen Vale",
			1,
		},
		{
			5,
		},
		{
			16477,
			"Proenitus",
			"Azuremyst Isle",
			80.5,
			45.8,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13691] = {
		{
			13691,
			"A Valiant Of Orgrimmar",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33542,
			"Magister Edien Sunhollow",
			"Icecrown",
			76.3,
			24.3,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27005] = {
		{
			27005,
			"The Twilight Plot",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44823,
			"Examiner Rowe",
			"Deepholm",
			51.3,
			50,
			640,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9472] = {
		{
			9472,
			"Arelion's Mistress",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16793,
			"Magistrix Carinda",
			"Hellfire Peninsula",
			26.4,
			60.4,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27261] = {
		{
			27261,
			"Questioning Reethe",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			nil,
			nil,
			"Dustwallow Marsh",
			41,
			36.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27389] = {
		{
			27389,
			"Marauders of Darrowshire",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			10667,
			"Chromie",
			"Eastern Plaguelands",
			35.2,
			68.09999999999999,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27517] = {
		{
			27517,
			"Be Prepared",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			nil,
			nil,
			"Uldum",
			65.2,
			33.7,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27645] = {
		{
			27645,
			"Cayden Dunwald",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46177,
			"Keely Dunwald",
			"Twilight Highlands",
			46,
			65.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27773] = {
		{
			27773,
			"Step Three: Prophet",
			54,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			46623,
			"Gomora the Bloodletter",
			"The Temple of Atal'Hakkar",
			54.5,
			79.09999999999999,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27901] = {
		{
			27901,
			"They Don't Know What They've Got Here",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46978,
			"Harrison Jones",
			"Uldum",
			44,
			57.2,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28029] = {
		{
			28029,
			"Set Them Ablaze!",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47393,
			"Mountain-Lord Rendan",
			"Searing Gorge",
			0,
			0,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28157] = {
		{
			28157,
			"Four Twilight Elements",
			45,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47745,
			"Magatha Grimtotem",
			"Thousand Needles",
			50.1,
			62.7,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28285] = {
		{
			28285,
			"Meet with High Priestess Laurena",
			50,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			11401,
			"Priestess Alathea",
			"Darnassus",
			43.2,
			79.09999999999999,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28413] = {
		{
			28413,
			"Words and Music By...",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48366,
			"Russell Brower",
			"Twilight Highlands",
			54.6,
			17.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10176] = {
		{
			10176,
			"Ar'kelos the Guardian",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19644,
			"Image of Archmage Vargoth",
			"Netherstorm",
			57,
			66.59999999999999,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28669] = {
		{
			28669,
			"The Warden",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48062,
			"Staff Sergeant Lazgar",
			"Tol Barad",
			51.4,
			49.4,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28797] = {
		{
			28797,
			"They Sent Assassins",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.3,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10368] = {
		{
			10368,
			"The Dreghood Elders",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19361,
			"Naladu",
			"Hellfire Peninsula",
			16.2,
			65,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10432] = {
		{
			10432,
			"Damning Evidence",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20920,
			"Magister Theledorn",
			"Netherstorm",
			26.2,
			41.6,
			479,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[1456] = {
		{
			1456,
			"[30] The Karnitol Shipwreck",
			30,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			5638,
			"Kreldig Ungor",
			"Desolace",
			66.3,
			9.800000000000001,
			101,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28415] = {
		{
			28415,
			"SEVEN! YUP!",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			9177,
			"Oralius",
			"Burning Steppes",
			72,
			68,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10624] = {
		{
			10624,
			"A Haunted History",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21772,
			"Chief Apothecary Hildagard",
			"Shadowmoon Valley",
			29.9,
			27.7,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10688] = {
		{
			10688,
			"A Necessary Distraction",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21954,
			"Larissa Sunstrike",
			"Shadowmoon Valley",
			55.8,
			58.2,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13563] = {
		{
			13563,
			"A Love Eternal",
			11,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32959,
			"Cerellean Whiteclaw",
			"Darkshore",
			50.9,
			17.9,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10816] = {
		{
			10816,
			"Reclaiming Holy Grounds",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21822,
			"Vindicator Aluumen",
			"Shadowmoon Valley",
			61.2,
			29.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10880] = {
		{
			10880,
			"Cabal Orders",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			nil,
			nil,
			"Terokkar Forest",
			37.6,
			58.8,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26096] = {
		{
			26096,
			"Scalding Shrooms",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41639,
			"Wavespeaker Tulra",
			"Abyssal Depths",
			42.8,
			38,
			614,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11008] = {
		{
			11008,
			"Fires Over Skettis",
			70,
			"Skettis",
			3,
		},
		{
			75,
		},
		{
			23048,
			"Sky Sergeant Doryn",
			"Terokkar Forest",
			64.5,
			66.59999999999999,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9340] = {
		{
			9340,
			"The Great Fissure",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16789,
			"Ranger Captain Venn'ren",
			"Hellfire Peninsula",
			28.6,
			60.3,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28650] = {
		{
			28650,
			"A Special Surprise",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			29053,
			"Knight Commander Plaguefist",
			"Plaguelands: The Scarlet Enclave",
			52.7,
			81,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13307] = {
		{
			13307,
			"Bloodspattered Banners",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			60.4,
			36.8,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11264] = {
		{
			11264,
			"Necro Overlord Mezhen",
			72,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24129,
			"Chieftain Ashtotem",
			"Howling Fjord",
			48.1,
			10.7,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11328] = {
		{
			11328,
			"Mission: Forsaken Intel",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23906,
			"Scout Knowles",
			"Howling Fjord",
			44.4,
			57.6,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9150] = {
		{
			9150,
			"Salvaging the Past",
			12,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16199,
			"Magister Darenis",
			"Ghostlands",
			46.1,
			32.1,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11456] = {
		{
			11456,
			"Feeding the Survivors",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24755,
			"Elder Atuik",
			"Howling Fjord",
			25,
			57,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14134] = {
		{
			14134,
			"The Captain's Logs",
			11,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35129,
			"Reprogrammed Shredder",
			"Azshara",
			28.8,
			75,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26226] = {
		{
			26226,
			"Crawfish Creole",
			80,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			42506,
			"Marogg",
			"Orgrimmar",
			56.7,
			62.7,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11648] = {
		{
			11648,
			"The Art of Persuasion",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25480,
			"Librarian Normantis",
			"Borean Tundra",
			46.4,
			32.8,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11712] = {
		{
			11712,
			"Re-Cursive",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25747,
			"Jinky Wingnut",
			"Borean Tundra",
			57.4,
			18.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13889] = {
		{
			13889,
			"Hungry, Hungry Hatchling",
			53,
			"Un'Goro Crater",
			3,
		},
		{
			28,
		},
		{
			34320,
			"Venomhide Hatchling",
			"Tanaris",
			49,
			36.9,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26991] = {
		{
			26991,
			"Enemies Abroad",
			38,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			4791,
			"Nazeer Bloodpike",
			"Dustwallow Marsh",
			35.2,
			30.7,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11904] = {
		{
			11904,
			"Fruits of Our Labor",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26083,
			"Gerald Green",
			"Borean Tundra",
			58.2,
			62.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11968] = {
		{
			11968,
			"The Tides Turn",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26218,
			"Elder Muahit",
			"Borean Tundra",
			67.2,
			54.8,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12032] = {
		{
			12032,
			"[72] [72] Conversing With the Depths",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			nil,
			nil,
			"Dragonblight",
			36.6,
			65.2,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12096] = {
		{
			12096,
			"Strengthen the Ancients",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26854,
			"Earthwarden Grife",
			"Dragonblight",
			36.6,
			47.8,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12160] = {
		{
			12160,
			"A Name from the Past",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26932,
			"Petrov",
			"Grizzly Hills",
			55.1,
			23.4,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12224] = {
		{
			12224,
			"The Kor'kron Vanguard!",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26379,
			"Overlord Agmar",
			"Dragonblight",
			38.1,
			46.3,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24574] = {
		{
			24574,
			"To Harvest Chaos",
			32,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37570,
			"Naralex",
			"Southern Barrens",
			50.4,
			40.7,
			607,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27377] = {
		{
			27377,
			"Devoured",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47991,
			"Earthcaller Yevaa",
			"Twilight Highlands",
			48.4,
			14.5,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12416] = {
		{
			12416,
			"Heated Battle",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27506,
			"Ceristrasz",
			"Dragonblight",
			52.2,
			50,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24958] = {
		{
			24958,
			"Volcanoth!",
			9,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38120,
			"Hobart Grapplehammer",
			"The Lost Isles",
			68.90000000000001,
			46.5,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25086] = {
		{
			25086,
			"Firestone Point",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39085,
			"Logan Talonstrike",
			"Southern Barrens",
			49.2,
			67.90000000000001,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25214] = {
		{
			25214,
			"Escape Velocity",
			10,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38120,
			"Hobart Grapplehammer",
			"The Lost Isles",
			43.9,
			25.3,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25342] = {
		{
			25342,
			"Talk to Swar'jan",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39656,
			"Orhan Ogreblade",
			"Feralas",
			51.9,
			48.1,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12736] = {
		{
			12736,
			"Song of Reflection",
			80,
			"Sholazar Basin",
			3,
		},
		{
			85,
		},
		{
			29006,
			"Oracle Soo-nee",
			"Sholazar Basin",
			53.4,
			56.4,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12800] = {
		{
			12800,
			"The Lich King's Command",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			29110,
			"The Lich King",
			"Plaguelands: The Scarlet Enclave",
			53.5,
			36.8,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12864] = {
		{
			12864,
			"Missing Scouts",
			78,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29727,
			"Glorthal Stiffbeard",
			"The Storm Peaks",
			29.2,
			74.90000000000001,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25854] = {
		{
			25854,
			"I'll Call Him Bitey",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41435,
			"Fradd Swiftgear",
			"Wetlands",
			26.7,
			25.9,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25982] = {
		{
			25982,
			"Those Aren't Masks",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41669,
			"Fiasco Sizzlegrin",
			"Abyssal Depths",
			51.5,
			60.9,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26110] = {
		{
			26110,
			"Just Like Old Times",
			28,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2712,
			"Quae",
			"Arathi Highlands",
			54.7,
			55.3,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26238] = {
		{
			26238,
			"The Savage Dwarves",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42613,
			"Elder Torntusk",
			"The Hinterlands",
			78.2,
			81.40000000000001,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26366] = {
		{
			26366,
			"Heads Up",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42642,
			"Primal Torntusk",
			"The Hinterlands",
			67.7,
			66.5,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26494] = {
		{
			26494,
			"Mixmaster Jasper",
			31,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43095,
			"Sassy Hardwrench",
			"The Cape of Stranglethorn",
			34.7,
			29.5,
			673,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13312] = {
		{
			13312,
			"The Ironwall Rampart [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			60.3,
			36.4,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26750] = {
		{
			26750,
			"At the Stonemother's Call",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42472,
			"Gorsik the Tumultuous",
			"Deepholm",
			72.3,
			53.9,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26878] = {
		{
			26878,
			"Disciples of Naralex",
			16,
			"Wailing Caverns",
			1,
		},
		{
			1018,
		},
		{
			3448,
			"Tonga Runetotem",
			"Northern Barrens",
			49.5,
			58.7,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27006] = {
		{
			27006,
			"Fly Over",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44802,
			"Prospector Brewer",
			"Deepholm",
			47.4,
			51.4,
			640,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27134] = {
		{
			27134,
			"Ogre in the Field",
			46,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			39656,
			"Orhan Ogreblade",
			"Feralas",
			51.9,
			48,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13632] = {
		{
			13632,
			"Rear Guard Duty",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			11219,
			"Liladris Moonriver",
			"Ashenvale",
			27.2,
			35.7,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27390] = {
		{
			27390,
			"The Battle of Darrowshire",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			10667,
			"Chromie",
			"Eastern Plaguelands",
			35.2,
			68.09999999999999,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13760] = {
		{
			13760,
			"A Valiant's Field Training",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33652,
			"Illestria Bladesinger",
			"Icecrown",
			76.3,
			19,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27646] = {
		{
			27646,
			"Finding Beak",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46176,
			"Donnelly Dunwald",
			"Twilight Highlands",
			46.5,
			59.2,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27774] = {
		{
			27774,
			"Easily Swayed",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46652,
			"Dolph Blastus",
			"Badlands",
			65,
			38.3,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27902] = {
		{
			27902,
			"The Purespring",
			55,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			17127,
			"Anchorite Avuun",
			"Swamp of Sorrows",
			26.8,
			33.5,
			38,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28030] = {
		{
			28030,
			"They Build a Better Bullet",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47393,
			"Mountain-Lord Rendan",
			"Searing Gorge",
			0,
			0,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28158] = {
		{
			28158,
			"Unbound",
			45,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47745,
			"Magatha Grimtotem",
			"Thousand Needles",
			50.1,
			62.7,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28286] = {
		{
			28286,
			"Enough Damage For One Day",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			nil,
			nil,
			"Burning Steppes",
			35.6,
			35.6,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28414] = {
		{
			28414,
			"Fourth and Goal",
			3,
			"Kezan",
			1,
		},
		{
			90,
		},
		{
			37106,
			"Coach Crosscheck",
			"Kezan",
			48.7,
			57.6,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28542] = {
		{
			28542,
			"Warchief's Command: Felwood!",
			45,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			3296,
			"Orgrimmar Grunt",
			"Orgrimmar",
			49.7,
			76.90000000000001,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14336] = {
		{
			14336,
			"Kill or Be Killed",
			5,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			34571,
			"Gwen Armstead",
			"Gilneas",
			37.3,
			63.4,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14400] = {
		{
			14400,
			"[7] I Can't Wear This",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36458,
			"Grandma Wahl",
			"Gilneas",
			32.4,
			75.5,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14464] = {
		{
			14464,
			"Lightning Strike Assassination",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36729,
			"Slinky Sharpshiv",
			"Azshara",
			12.6,
			67.40000000000001,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27392] = {
		{
			27392,
			"I'm Not Supposed to Tell You This",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			10926,
			"Pamela Redpath",
			"Eastern Plaguelands",
			32.4,
			83.7,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12669] = {
		{
			12669,
			"So Far, So Bad",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28518,
			"Stefan Vadu",
			"Zul'Drak",
			27.9,
			44.9,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28280] = {
		{
			28280,
			"Tear Them From the Sky!",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48174,
			"Nivvet Channelock",
			"Twilight Highlands",
			49.1,
			29.4,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25832] = {
		{
			25832,
			"Return to Aviana",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40578,
			"Farden Talonshrike",
			"Mount Hyjal",
			37.2,
			56.2,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10043] = {
		{
			10043,
			"Kill the Shadow Council!",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18714,
			"Scout Neftis",
			"Terokkar Forest",
			39.1,
			43.7,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10042] = {
		{
			10042,
			"Kill the Shadow Council!",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18715,
			"Private Weeks",
			"Terokkar Forest",
			40.5,
			36.1,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[71] = {
		{
			71,
			"Report to Thomas",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			nil,
			nil,
			"Elwynn Forest",
			79.8,
			55.7,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27246] = {
		{
			27246,
			"The Orc Report",
			36,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23843,
			"Mordant Grimsby",
			"Dustwallow Marsh",
			55.4,
			26.1,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9527] = {
		{
			9527,
			"All That Remains",
			10,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17311,
			"Cowlen",
			"The Veiled Sea",
			28.9,
			32.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9850] = {
		{
			9850,
			"Clefthoof Mastery",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18180,
			"Hemet Nesingwary",
			"Nagrand",
			71.5,
			40.8,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[744] = {
		{
			744,
			"Preparation for Ceremony",
			10,
			"Thunder Bluff",
			1,
		},
		{
			26,
		},
		{
			2987,
			"Eyahn Eagletalon",
			"Mulgore",
			49.5,
			17.5,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28673] = {
		{
			28673,
			"Hero's Call: Blasted Lands!",
			55,
			"Blasted Lands",
			4,
		},
		{
			33,
		},
		{
			nil,
			nil,
			"Stormwind City",
			63,
			71.7,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9538] = {
		{
			9538,
			"Learning the Language",
			8,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17232,
			"Cryptographer Aurren",
			"Azuremyst Isle",
			49.5,
			51.1,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27649] = {
		{
			27649,
			"A Steady Supply",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46583,
			"Eoin Dunwald",
			"Twilight Highlands",
			52.4,
			70.3,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27905] = {
		{
			27905,
			"Tailgunner!",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			nil,
			nil,
			"Uldum",
			43.9,
			57.1,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10050] = {
		{
			10050,
			"Unyielding Souls",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16827,
			"Honor Guard Wesilow",
			"Hellfire Peninsula",
			50.9,
			60.3,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[2561] = {
		{
			2561,
			"Druid of the Claw",
			10,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			7317,
			"Oben Rageclaw",
			"Teldrassil",
			45.1,
			53.4,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26470] = {
		{
			26470,
			"Retaking Mystral Lake",
			26,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3885,
			"Sentinel Velene Starstrike",
			"Ashenvale",
			35.6,
			71.40000000000001,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12666] = {
		{
			12666,
			"Preparations for the Underworld",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28401,
			"Har'koa",
			"Zul'Drak",
			63.7,
			70.3,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26734] = {
		{
			26734,
			"The Source of the Madness",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			739,
			"Brother Nimetz",
			"Northern Stranglethorn",
			47.3,
			11.1,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26606] = {
		{
			26606,
			"Mukla's Demise",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2634,
			"Princess Poobah",
			"The Cape of Stranglethorn",
			59.5,
			79,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25838] = {
		{
			25838,
			"Help from Steelgrill's Depot",
			8,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			40950,
			"Captain Tharran",
			"Dun Morogh",
			53.7,
			52.2,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28526] = {
		{
			28526,
			"Warchief's Command: Un'Goro Crater!",
			50,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			43239,
			"Razgar",
			"Orgrimmar",
			66.40000000000001,
			49.2,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25582] = {
		{
			25582,
			"A Better Vantage",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40643,
			"Admiral Dvorek",
			"Shimmering Expanse",
			49.2,
			57,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12729] = {
		{
			12729,
			"The Gods Have Spoken [Group]",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28479,
			"Witch Doctor Khufu",
			"Zul'Drak",
			59.5,
			58,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25070] = {
		{
			25070,
			"What Lies Within",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			nil,
			nil,
			"Tanaris",
			37.7,
			78.90000000000001,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27376] = {
		{
			27376,
			"The Maw of Iso'rath",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45332,
			"Earthcaller Torunscar",
			"Twilight Highlands",
			44.1,
			10.6,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14385] = {
		{
			14385,
			"Azsharite Experiment Number One",
			14,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36077,
			"Assistant Greely",
			"Azshara",
			50.3,
			74.3,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14321] = {
		{
			14321,
			"Invasion",
			5,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36205,
			"Slain Watchman",
			"Gilneas",
			32.9,
			66.2,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24575] = {
		{
			24575,
			"Liberation Day",
			10,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			37783,
			"Lorna Crowley",
			"Gilneas",
			71,
			39.9,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24703] = {
		{
			24703,
			"An Important Lesson",
			54,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38237,
			"Maximillian of Northshire",
			"Un'Goro Crater",
			30.7,
			51.1,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8321] = {
		{
			8321,
			"Vyral the Vile",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			15270,
			"Huum Wildmane",
			"Silithus",
			0,
			0,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24959] = {
		{
			24959,
			"Fresh out of the Grave",
			1,
			"Deathknell",
			1,
		},
		{
			60,
		},
		{
			49044,
			"Agatha",
			"Tirisfal Glades",
			29.4,
			70.90000000000001,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25087] = {
		{
			25087,
			"Report to Twinbraid",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39083,
			"Commander Roberts",
			"Southern Barrens",
			49.1,
			66.90000000000001,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25215] = {
		{
			25215,
			"A Distracting Scent",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39876,
			"Felora Firewreath",
			"Shimmering Expanse",
			49.5,
			42.4,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14257] = {
		{
			14257,
			"Slitherblade Slaughter",
			32,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35773,
			"Cenarion Researcher Korrah",
			"Desolace",
			38.8,
			27,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25471] = {
		{
			25471,
			"Across the Great Divide",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41341,
			"Erunak Stonespeaker",
			"Kelp'thar Forest",
			63.8,
			60,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25599] = {
		{
			25599,
			"Cindermaul, the Portal Master",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40834,
			"Jordan Olafson",
			"Mount Hyjal",
			26.3,
			41.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25727] = {
		{
			25727,
			"Drungeld Glowerglare",
			20,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41086,
			"Forba Slabchisel",
			"Wetlands",
			57.5,
			71.7,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25855] = {
		{
			25855,
			"Gizmos and Gadgets",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41435,
			"Fradd Swiftgear",
			"Wetlands",
			26.8,
			25.9,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25983] = {
		{
			25983,
			"Promontory Point",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41666,
			"Engineer Hexascrub",
			"Abyssal Depths",
			55.5,
			73,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26111] = {
		{
			26111,
			"... It Will Come",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41600,
			"Erunak Stonespeaker",
			"Abyssal Depths",
			42.6,
			37.9,
			614,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28384] = {
		{
			28384,
			"Into the Clearing",
			49,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47931,
			"Denmother Ulrica",
			"Felwood",
			61.8,
			26.7,
			182,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26367] = {
		{
			26367,
			"Ongo'longo's Revenge",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42642,
			"Primal Torntusk",
			"The Hinterlands",
			67.7,
			66.59999999999999,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26495] = {
		{
			26495,
			"Chabal",
			31,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43095,
			"Sassy Hardwrench",
			"The Cape of Stranglethorn",
			34.7,
			29.5,
			673,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26623] = {
		{
			26623,
			"Dusky Crab Cakes",
			21,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			272,
			"Chef Grual",
			"Duskwood",
			73.8,
			43.5,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26751] = {
		{
			26751,
			"Population Con-Troll",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			733,
			"Sergeant Yohwa",
			"Northern Stranglethorn",
			47.5,
			10.7,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9345] = {
		{
			9345,
			"Preparing the Salve",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16858,
			"Grelag",
			"Hellfire Peninsula",
			61,
			81.59999999999999,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9409] = {
		{
			9409,
			"Urgent Delivery!",
			2,
			"Ammen Vale",
			1,
		},
		{
			5,
		},
		{
			16477,
			"Proenitus",
			"Azuremyst Isle",
			80.40000000000001,
			45.8,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27135] = {
		{
			27135,
			"Something that Burns",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42574,
			"Initiate Goldmine",
			"Deepholm",
			46.5,
			57.3,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27263] = {
		{
			27263,
			"Lieutenant Paval Reethe",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23567,
			"Inspector Tarem",
			"Dustwallow Marsh",
			29.8,
			48.2,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27391] = {
		{
			27391,
			"Hidden Treasures",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			10926,
			"Pamela Redpath",
			"Eastern Plaguelands",
			32.4,
			83.59999999999999,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27519] = {
		{
			27519,
			"Under the Choking Sands",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			45772,
			"General Ammantep",
			"Uldum",
			45.2,
			37.8,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27647] = {
		{
			27647,
			"Anything But Water",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46175,
			"Eoin Dunwald",
			"Twilight Highlands",
			52.9,
			74.3,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27775] = {
		{
			27775,
			"When the Going Gets Tough, Cheat",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46653,
			"Garyanne Fleezlebop",
			"Badlands",
			64.3,
			38.1,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9857] = {
		{
			9857,
			"Talbuk Mastery",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18218,
			"Harold Lane",
			"Nagrand",
			71.40000000000001,
			40.7,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28031] = {
		{
			28031,
			"[41] [41] Special Delivery for Brivelthwerp",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40726,
			"Mazzer Stripscrew",
			"Thousand Needles",
			78.09999999999999,
			73.2,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28159] = {
		{
			28159,
			"The Doomstone",
			45,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47745,
			"Magatha Grimtotem",
			"Thousand Needles",
			50.2,
			62.6,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28287] = {
		{
			28287,
			"Meet with Farseer Umbrua",
			50,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			23127,
			"Farseer Javad",
			"Ironforge",
			55.1,
			29.4,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10113] = {
		{
			10113,
			"The Nesingwary Safari",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			19137,
			"\"Shotgun\" Jones",
			"Nagrand",
			55,
			70.5,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28543] = {
		{
			28543,
			"Hero's Call: Felwood!",
			45,
			"Felwood",
			4,
		},
		{
			12,
		},
		{
			nil,
			nil,
			"Darnassus",
			44.9,
			49.7,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10241] = {
		{
			10241,
			"Distraction at Manaforge B'naar",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19466,
			"Exarch Orelis",
			"Netherstorm",
			32.1,
			64.2,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10305] = {
		{
			10305,
			"[69] [69] Abjurist Belmara",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			nil,
			nil,
			"The Deadmines",
			36.1,
			61.4,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10369] = {
		{
			10369,
			"Arzeth's Demise",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19361,
			"Naladu",
			"Hellfire Peninsula",
			16.3,
			65,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10433] = {
		{
			10433,
			"Keeping Up Appearances",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20921,
			"Shauly Pore",
			"Netherstorm",
			46.5,
			56.1,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28256] = {
		{
			28256,
			"The Skull of Gul'dan",
			48,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47923,
			"Feronas Sindweller",
			"Felwood",
			45.5,
			20.1,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8762] = {
		{
			8762,
			"Metzen the Reindeer",
			85,
			"Winter Veil",
			1,
		},
		{
			4013,
		},
		{
			13433,
			"Wulmort Jinglepocket",
			"Ironforge",
			33.5,
			66.8,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10625] = {
		{
			10625,
			"Spectrecles",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21772,
			"Chief Apothecary Hildagard",
			"Shadowmoon Valley",
			29.9,
			27.8,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10689] = {
		{
			10689,
			"Altruis",
			70,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			21954,
			"Larissa Sunstrike",
			"Shadowmoon Valley",
			55.8,
			58.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10753] = {
		{
			10753,
			"Culling the Wild",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22133,
			"Faradrella",
			"Blade's Edge Mountains",
			62.4,
			38.2,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10817] = {
		{
			10817,
			"The Great Retribution",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21953,
			"Varen the Reclaimer",
			"Shadowmoon Valley",
			54.7,
			58.1,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10881] = {
		{
			10881,
			"The Shadow Tomb",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22370,
			"Mekeda",
			"Terokkar Forest",
			38.2,
			50.5,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28000] = {
		{
			28000,
			"Do the Imp-Possible",
			45,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47341,
			"Arcanist Delaris",
			"Felwood",
			41.9,
			72,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11009] = {
		{
			11009,
			"Ogre Heaven",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22941,
			"Mog'dorg the Wizened",
			"Blade's Edge Mountains",
			55.4,
			44.8,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11073] = {
		{
			11073,
			"Terokk's Downfall [Group]",
			70,
			"Skettis",
			1,
		},
		{
			75,
		},
		{
			23038,
			"Sky Commander Adaris",
			"Terokkar Forest",
			64.09999999999999,
			66.8,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24962] = {
		{
			24962,
			"Trail-Worn Scroll",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			1569,
			"Shadow Priest Sarvis",
			"Tirisfal Glades",
			30.9,
			66.2,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27744] = {
		{
			27744,
			"Rune Ruination",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			nil,
			nil,
			"Twilight Highlands",
			37.5,
			93.2,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11265] = {
		{
			11265,
			"Of Keys and Cages",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24135,
			"Greatmother Ankha",
			"Howling Fjord",
			48.1,
			10.7,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11329] = {
		{
			11329,
			"I'll Try Anything!",
			70,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24056,
			"Christopher Sloan",
			"Howling Fjord",
			60.2,
			18.7,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11393] = {
		{
			11393,
			"Where is Explorer Jaren?",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23891,
			"Overseer Irena Stonemantle",
			"Howling Fjord",
			30.2,
			28.7,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11457] = {
		{
			11457,
			"Arming Kamagua",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24755,
			"Elder Atuik",
			"Howling Fjord",
			25,
			57,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11521] = {
		{
			11521,
			"Rediscovering Your Roots",
			70,
			"Terokkar Forest",
			3,
		},
		{
			75,
		},
		{
			24975,
			"Mar'nah",
			"Isle of Quel'Danas",
			51.5,
			32.6,
			499,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11585] = {
		{
			11585,
			"Hellscream's Vigil",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25273,
			"Warsong Recruitment Officer",
			"Borean Tundra",
			41.6,
			53.9,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11649] = {
		{
			11649,
			"Motes of the Enraged",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25376,
			"Imperean",
			"Borean Tundra",
			46.5,
			9.4,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11713] = {
		{
			11713,
			"Scouting the Sinkholes",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25780,
			"Abner Fizzletorque",
			"Borean Tundra",
			57.1,
			20.1,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27616] = {
		{
			27616,
			"The Huntsman",
			42,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			16112,
			"Crusade Commander Korfax",
			"Eastern Plaguelands",
			75.5,
			76.2,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13745] = {
		{
			13745,
			"The Grand Melee",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33309,
			"Clara Tumblebrew",
			"Icecrown",
			76.59999999999999,
			19.6,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11905] = {
		{
			11905,
			"Postponing the Inevitable [Dungeon]",
			71,
			"The Nexus",
			1,
		},
		{
			1049,
		},
		{
			25314,
			"Archmage Berinand",
			"Borean Tundra",
			33,
			34.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11969] = {
		{
			11969,
			"Springing the Trap",
			71,
			"Coldarra",
			1,
		},
		{
			77,
		},
		{
			26117,
			"Raelorasz",
			"Borean Tundra",
			33.3,
			34.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12033] = {
		{
			12033,
			"Message from the West",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26649,
			"Messenger Torvus",
			"Dragonblight",
			37.3,
			46.8,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12097] = {
		{
			12097,
			"Sarathstra, Scourge of the North [Group]",
			75,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26859,
			"Rokhan",
			"Dragonblight",
			47.2,
			33,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12161] = {
		{
			12161,
			"Ruuna the Blind",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27582,
			"Private Arun",
			"Grizzly Hills",
			59.3,
			26.2,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24448] = {
		{
			24448,
			"Field Promotion",
			17,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36920,
			"Lieutenant Drex",
			"Azshara",
			41.4,
			53.7,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12289] = {
		{
			12289,
			"Kick 'Em While They're Down",
			74,
			"Grizzly Hills",
			3,
		},
		{
			81,
		},
		{
			27468,
			"Sergeant Hartsman",
			"Grizzly Hills",
			39.3,
			43.8,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24704] = {
		{
			24704,
			"The Evil Dragons of Un'Goro Crater",
			54,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38237,
			"Maximillian of Northshire",
			"Un'Goro Crater",
			30.7,
			51.1,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12417] = {
		{
			12417,
			"Return to the Earth",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27506,
			"Ceristrasz",
			"Dragonblight",
			52.2,
			50.1,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12481] = {
		{
			12481,
			"Adding Injury to Insult",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24458,
			"Lydell",
			"Howling Fjord",
			65.90000000000001,
			36.7,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12545] = {
		{
			12545,
			"The Cleansing Of Jintha'kalar",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			28228,
			"Crusader Valus",
			"Dragonblight",
			84,
			26.1,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12609] = {
		{
			12609,
			"Stocking the Shelves",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28045,
			"Captain Arnath",
			"Zul'Drak",
			35.6,
			52.2,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25344] = {
		{
			25344,
			"Ogre Abduction",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39840,
			"Swar'jan",
			"Feralas",
			51.9,
			46.6,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25472] = {
		{
			25472,
			"The Flameseer's Staff",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39869,
			"Windspeaker Tamila",
			"Mount Hyjal",
			47.7,
			35.4,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12801] = {
		{
			12801,
			"The Light of Dawn",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			31082,
			"Scourge Commander Thalanor",
			"Plaguelands: The Scarlet Enclave",
			34.2,
			30.1,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25728] = {
		{
			25728,
			"Mr. P's Wild Ride",
			27,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			40908,
			"Alice",
			"Stonetalon Mountains",
			58.5,
			55.1,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25856] = {
		{
			25856,
			"Crocolisk Hides",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41433,
			"James Halloran",
			"Wetlands",
			26.7,
			26.7,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25984] = {
		{
			25984,
			"Promontory Point",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41669,
			"Fiasco Sizzlegrin",
			"Abyssal Depths",
			51.5,
			60.8,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13057] = {
		{
			13057,
			"The Terrace of the Makers",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30390,
			"Thorim",
			"The Storm Peaks",
			71.40000000000001,
			48.9,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26240] = {
		{
			26240,
			"Stomp To My Beat",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			14739,
			"Mystic Yayo'jin",
			"The Hinterlands",
			78.8,
			78.40000000000001,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26368] = {
		{
			26368,
			"Venomous Secrets",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42622,
			"Eliza Darkgrin",
			"The Hinterlands",
			67.7,
			66.59999999999999,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26496] = {
		{
			26496,
			"Down with the Vilebranch",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43109,
			"Dron Blastbrew",
			"The Hinterlands",
			66.3,
			44.3,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13313] = {
		{
			13313,
			"Blinding the Eyes in the Sky",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30824,
			"Sky-Reaver Korm Blackscar",
			"Icecrown",
			66.40000000000001,
			27,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26752] = {
		{
			26752,
			"Audience with the Stonemother",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42465,
			"Therazane",
			"Deepholm",
			56.4,
			12.2,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12538] = {
		{
			12538,
			"The Mist Isn't Listening",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28216,
			"Zepik the Gorloc Hunter",
			"Sholazar Basin",
			46.3,
			39.5,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13505] = {
		{
			13505,
			"Remnants of the Highborne",
			13,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32966,
			"Balthule Shadowstrike",
			"Darkshore",
			58.9,
			19.4,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27136] = {
		{
			27136,
			"Elemental Energy",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			nil,
			nil,
			"Deepholm",
			49.7,
			53,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27264] = {
		{
			27264,
			"Lieutenant Paval Reethe",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4944,
			"Captain Garran Vimes",
			"Dustwallow Marsh",
			68.2,
			48.6,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13697] = {
		{
			13697,
			"The Valiant's Charge",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33361,
			"Mokra the Skullcrusher",
			"Icecrown",
			76.40000000000001,
			24.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27520] = {
		{
			27520,
			"Minions of Al'Akir",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			45799,
			"Prince Nadun",
			"Uldum",
			45.2,
			37.9,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27648] = {
		{
			27648,
			"Once More Into The Fire",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46174,
			"Cayden Dunwald",
			"Twilight Highlands",
			47.8,
			74.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27776] = {
		{
			27776,
			"It's Goat Time, Baby",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46653,
			"Garyanne Fleezlebop",
			"Badlands",
			64.3,
			38,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13953] = {
		{
			13953,
			"Naga In Our Midst",
			19,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			34498,
			"Darkscale Assassin",
			"Darkshore",
			45.7,
			71.7,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28032] = {
		{
			28032,
			"The Mysteries of the Fire-Gizzard",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47440,
			"Agnes Flimshale",
			"Searing Gorge",
			0,
			0,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28160] = {
		{
			28160,
			"Spread the Word",
			45,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47745,
			"Magatha Grimtotem",
			"Thousand Needles",
			50.2,
			62.6,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28288] = {
		{
			28288,
			"Open Their Eyes",
			46,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47341,
			"Arcanist Delaris",
			"Felwood",
			41.9,
			72,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28416] = {
		{
			28416,
			"Burning Vengeance",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			47811,
			"John J. Keeshan",
			"Burning Steppes",
			17.3,
			52,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28544] = {
		{
			28544,
			"Hero's Call: Winterspring!",
			50,
			"Winterspring",
			4,
		},
		{
			29,
		},
		{
			nil,
			nil,
			"The Exodar",
			55.1,
			47.5,
			471,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28672] = {
		{
			28672,
			"The Executor In the Field",
			3,
			"Deathknell",
			1,
		},
		{
			60,
		},
		{
			1661,
			"Novice Elreth",
			"Tirisfal Glades",
			30.9,
			66.09999999999999,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14401] = {
		{
			14401,
			"[7] Grandma's Cat",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36458,
			"Grandma Wahl",
			"Gilneas",
			32.5,
			75.59999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14465] = {
		{
			14465,
			"[7] To Greymane Manor",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36452,
			"Gwen Armstead",
			"Gilneas",
			37.6,
			65.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13617] = {
		{
			13617,
			"West to the Strand",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33187,
			"Sentinel Shyela",
			"Ashenvale",
			27,
			22.2,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11642] = {
		{
			11642,
			"Tank Ain't Gonna Fix Itself",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25329,
			"Gorge the Corpsegrinder",
			"Borean Tundra",
			32.2,
			54.1,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[6462] = {
		{
			6462,
			"Troll Charm",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			12721,
			"Mitsuwa",
			"Ashenvale",
			38.8,
			42.5,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13186] = {
		{
			13186,
			"Stop the Siege [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31109,
			"Senior Demolitionist Legoso",
			"Wintergrasp",
			51.2,
			24.8,
			501,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13361] = {
		{
			13361,
			"The Hunter and the Prince",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			32497,
			"Matthias Lehner",
			"Icecrown",
			49.2,
			73.09999999999999,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26592] = {
		{
			26592,
			"Diffractory Chromascope",
			30,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43096,
			"Flem Gizzix",
			"The Cape of Stranglethorn",
			33.7,
			29.2,
			673,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13233] = {
		{
			13233,
			"[80P] No Mercy! [PvP]",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			30344,
			"High Captain Justin Bartlett",
			"Icecrown",
			62,
			56.2,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13169] = {
		{
			13169,
			"An Undead's Best Friend",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30946,
			"Keritose Bloodblade",
			"Icecrown",
			44.1,
			24.6,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12735] = {
		{
			12735,
			"A Cleansing Song",
			80,
			"Sholazar Basin",
			3,
		},
		{
			85,
		},
		{
			29006,
			"Oracle Soo-nee",
			"Sholazar Basin",
			53.3,
			56.6,
			493,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[6521] = {
		{
			6521,
			"An Unholy Alliance [Dungeon]",
			36,
			"Razorfen Downs",
			1,
		},
		{
			1008,
		},
		{
			36273,
			"Bragor Bloodfist",
			"Undercity",
			0,
			0,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25952] = {
		{
			25952,
			"Caught Off-Guard",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40916,
			"Captain Vilethorn",
			"Shimmering Expanse",
			51.2,
			62.9,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25824] = {
		{
			25824,
			"Debriefing",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41341,
			"Erunak Stonespeaker",
			"Kelp'thar Forest",
			63.9,
			60,
			610,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28654] = {
		{
			28654,
			"The Heart of the Matter [Dungeon]",
			83,
			"Halls of Origination",
			1,
		},
		{
			1059,
		},
		{
			nil,
			nil,
			"Uldum",
			44.9,
			67.3,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27522] = {
		{
			27522,
			"Beat it Out of Them",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45729,
			"Tarenar Sunstrike",
			"Eastern Plaguelands",
			50.4,
			20.2,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25440] = {
		{
			25440,
			"Fathom-Lord Zin'jatar",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40221,
			"Toshe Chaosrender",
			"Shimmering Expanse",
			64.09999999999999,
			42.3,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12657] = {
		{
			12657,
			"The Might Of The Scourge",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			25462,
			"The Lich King",
			"Plaguelands: The Scarlet Enclave",
			51.3,
			35.2,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12593] = {
		{
			12593,
			"In Service Of The Lich King",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			25462,
			"The Lich King",
			"Plaguelands: The Scarlet Enclave",
			51.3,
			35.1,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25056] = {
		{
			25056,
			"Grisly Grizzlies",
			9,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			11057,
			"Apothecary Dithers",
			"Tirisfal Glades",
			83.2,
			69.3,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24928] = {
		{
			24928,
			"To The Ground!",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38703,
			"Megs Dreadshredder",
			"Tanaris",
			71.8,
			45.4,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13948] = {
		{
			13948,
			"Stepping Up Surveillance",
			19,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			nil,
			nil,
			"Darkshore",
			40.6,
			84.5,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[7905] = {
		{
			7905,
			"The Darkmoon Faire",
			34,
			"Ironforge",
			1,
		},
		{
			43,
		},
		{
			14842,
			"Melnan Darkstone",
			"Ironforge",
			22.6,
			34.9,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13945] = {
		{
			13945,
			"Resident Danger",
			7,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			2081,
			"Sentinel Kyra Starsong",
			"Teldrassil",
			55.7,
			51.9,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25587] = {
		{
			25587,
			"Gimme Shelter!",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			39667,
			"Adarrah",
			"Kelp'thar Forest",
			53.3,
			43.1,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13177] = {
		{
			13177,
			"",
			0,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			nil,
			nil,
			"The Obsidian Sanctum",
			62.7,
			50.1,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9399] = {
		{
			9399,
			"Cruel Taskmasters",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16799,
			"Ikan",
			"Hellfire Peninsula",
			23.1,
			40.3,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13753] = {
		{
			13753,
			"A Worthy Weapon",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33593,
			"Colosos",
			"Icecrown",
			76.09999999999999,
			19.2,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10178] = {
		{
			10178,
			"Find Spy To'gun [Dungeon]",
			70,
			"Auchindoun",
			1,
		},
		{
			99999,
		},
		{
			19496,
			"Spy Grik'tha",
			"Terokkar Forest",
			40,
			72.2,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[35] = {
		{
			35,
			"Further Concerns",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			240,
			"Marshal Dughan",
			"Elwynn Forest",
			42.1,
			65.90000000000001,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24449] = {
		{
			24449,
			"Shore Leave",
			17,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36745,
			"Captain Tork",
			"Azshara",
			34.4,
			45,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24577] = {
		{
			24577,
			"Desolation Hold Inspection",
			33,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37679,
			"Warlord Bloodhilt",
			"Southern Barrens",
			41.5,
			46.8,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24705] = {
		{
			24705,
			"Damsels Were Made to be Saved",
			54,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38255,
			"Maximillian of Northshire",
			"Un'Goro Crater",
			30.7,
			51.2,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13625] = {
		{
			13625,
			"Learning The Reins",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33647,
			"Scout Shalyndria",
			"Icecrown",
			76.40000000000001,
			19.4,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24961] = {
		{
			24961,
			"The Truth of the Grave",
			3,
			"Deathknell",
			1,
		},
		{
			60,
		},
		{
			1661,
			"Novice Elreth",
			"Tirisfal Glades",
			30.9,
			66.09999999999999,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25089] = {
		{
			25089,
			"Beyond the Graves",
			1,
			"Deathknell",
			1,
		},
		{
			60,
		},
		{
			2307,
			"Caretaker Caice",
			"Tirisfal Glades",
			30.6,
			71.5,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25217] = {
		{
			25217,
			"Totem Modification",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39882,
			"The Great Sambino",
			"Shimmering Expanse",
			41.3,
			34.3,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25345] = {
		{
			25345,
			"Faerie Dragon Muisek",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			8115,
			"Witch Doctor Uzer'i",
			"Feralas",
			74.40000000000001,
			43.4,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25473] = {
		{
			25473,
			"Kaja'Cola",
			2,
			"Kezan",
			1,
		},
		{
			90,
		},
		{
			34872,
			"Foreman Dampwick",
			"Kezan",
			60.3,
			74.8,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25601] = {
		{
			25601,
			"Head of the Class",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			nil,
			nil,
			"Mount Hyjal",
			88.3,
			58.7,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25729] = {
		{
			25729,
			"Gerenzo the Traitor",
			27,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			nil,
			nil,
			"Stonetalon Mountains",
			64.7,
			43.8,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25857] = {
		{
			25857,
			"Hunting Horrorjaw",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41433,
			"James Halloran",
			"Wetlands",
			26.8,
			26.8,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25985] = {
		{
			25985,
			"Wings Over Mount Hyjal",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40833,
			"Tiala Whitemane",
			"Mount Hyjal",
			63.3,
			21.6,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26113] = {
		{
			26113,
			"Quae and Kinelory",
			28,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2608,
			"Commander Amaren",
			"Arathi Highlands",
			40.1,
			48.1,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26241] = {
		{
			26241,
			"Westfall Stew",
			12,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			235,
			"Salma Saldean",
			"Westfall",
			56.4,
			30.6,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26369] = {
		{
			26369,
			"Hunt the Keeper",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42642,
			"Primal Torntusk",
			"The Hinterlands",
			67.8,
			66.5,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26497] = {
		{
			26497,
			"Vilebranch Scum",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43157,
			"Doran Steelwing",
			"The Hinterlands",
			63.9,
			59.8,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26625] = {
		{
			26625,
			"Troggzor the Earthinator",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43168,
			"Gravel Longslab",
			"Deepholm",
			24.6,
			62.4,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26753] = {
		{
			26753,
			"The Halls of the Dead",
			25,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			nil,
			nil,
			"Duskwood",
			23.6,
			35.4,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26881] = {
		{
			26881,
			"In Search of Thaelrid [Dungeon]",
			25,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			33256,
			"Ashelan Northwood",
			"Blackfathom Deeps",
			47.9,
			13.4,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27009] = {
		{
			27009,
			"The Coldbringer",
			46,
			"Razorfen Downs",
			1,
		},
		{
			1008,
		},
		{
			44837,
			"Koristrasza",
			"Razorfen Downs",
			48.9,
			30.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9140] = {
		{
			9140,
			"Windrunner Village",
			14,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16197,
			"Arcanist Vandril",
			"Ghostlands",
			46.2,
			28.2,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27265] = {
		{
			27265,
			"Lord Grayson Shadowbreaker",
			20,
			"Paladin",
			1,
		},
		{
			2005,
		},
		{
			5147,
			"Valgar Highforge",
			"Ironforge",
			23.4,
			5,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27393] = {
		{
			27393,
			"The Call of the Blade",
			81,
			"Vashj'ir",
			1,
		},
		{
			65,
		},
		{
			39881,
			"Wavespeaker Valoren",
			"Shimmering Expanse",
			49.6,
			57.4,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27521] = {
		{
			27521,
			"Wretched Hive of Scum and Villainy",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45826,
			"Kirkian Dawnshield",
			"Eastern Plaguelands",
			50.1,
			19.5,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9730] = {
		{
			9730,
			"Leader of the Darkcrest [Group]",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			nil,
			nil,
			"Zangarmarsh",
			79.09999999999999,
			64.8,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27777] = {
		{
			27777,
			"Core Access Codes",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			nil,
			nil,
			"Uldum",
			74.09999999999999,
			64.40000000000001,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9858] = {
		{
			9858,
			"Talbuk Mastery",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18218,
			"Harold Lane",
			"Nagrand",
			71.5,
			40.6,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28033] = {
		{
			28033,
			"Deceit",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47393,
			"Mountain-Lord Rendan",
			"Searing Gorge",
			39.4,
			67.8,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28161] = {
		{
			28161,
			"Spread the Word",
			45,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47745,
			"Magatha Grimtotem",
			"Thousand Needles",
			50.2,
			62.6,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28289] = {
		{
			28289,
			"Moonglade Calls",
			50,
			"Moonglade",
			1,
		},
		{
			14,
		},
		{
			44726,
			"Shalla Whiteleaf",
			"Orgrimmar",
			44.9,
			51.4,
			321,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28417] = {
		{
			28417,
			"Done Nothing Wrong",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			47779,
			"Mouton Flamestar",
			"Burning Steppes",
			17,
			51.3,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28545] = {
		{
			28545,
			"Warchief's Command: Winterspring!",
			50,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			43239,
			"Razgar",
			"Orgrimmar",
			66.40000000000001,
			49.2,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10242] = {
		{
			10242,
			"Spinebreaker Post",
			60,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			21257,
			"Apothecary Zelana",
			"Hellfire Peninsula",
			66.2,
			42,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10306] = {
		{
			10306,
			"Conjurer Luminrath",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			nil,
			nil,
			"Netherstorm",
			60,
			84.40000000000001,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13120] = {
		{
			13120,
			"Death's Gaze",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30631,
			"Darkrider Arly",
			"Icecrown",
			35.4,
			66.3,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10434] = {
		{
			10434,
			"The Dynamic Duo",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20921,
			"Shauly Pore",
			"Netherstorm",
			46.5,
			56.1,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9859] = {
		{
			9859,
			"Talbuk Mastery [Group]",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18218,
			"Harold Lane",
			"Nagrand",
			71.40000000000001,
			40.6,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10562] = {
		{
			10562,
			"[69] Besieged!",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21357,
			"Wing Commander Nuainn",
			"Shadowmoon Valley",
			39.6,
			53.7,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10626] = {
		{
			10626,
			"Capture the Weapons [Group]",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			19370,
			"Ordinn Thunderfist",
			"Shadowmoon Valley",
			36.8,
			54.8,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10690] = {
		{
			10690,
			"The Den Mother",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21158,
			"Commander Skyshadow",
			"Blade's Edge Mountains",
			36.7,
			67.3,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9274] = {
		{
			9274,
			"Spirits of the Drowned",
			12,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16462,
			"Ranger Krenn'an",
			"Ghostlands",
			72.2,
			30,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10818] = {
		{
			10818,
			"Baron Sablemane Has Requested Your Presence",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22149,
			"Commander Haephus Stonewall",
			"Blade's Edge Mountains",
			62,
			38.1,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10882] = {
		{
			10882,
			"Harbinger of Doom [Dungeon]",
			70,
			"Tempest Keep",
			1,
		},
		{
			1035,
		},
		{
			18481,
			"A'dal",
			"Shattrath City",
			54,
			44.9,
			481,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25598] = {
		{
			25598,
			"Ain't Too Proud to Beg",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			39883,
			"Adarrah",
			"Kelp'thar Forest",
			57.1,
			28.9,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11010] = {
		{
			11010,
			"Bombing Run",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			23120,
			"Sky Sergeant Vanderlip",
			"Blade's Edge Mountains",
			27.6,
			52.9,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13305] = {
		{
			13305,
			"Do Your Worst",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			32408,
			"Matthias Lehner",
			"Icecrown",
			68,
			51.6,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[8889] = {
		{
			8889,
			"Deactivating the Spire",
			10,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15924,
			"Apprentice Loralthalis",
			"Eversong Woods",
			67.8,
			56.6,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11202] = {
		{
			11202,
			"Mission: Eternal Flame",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23906,
			"Scout Knowles",
			"Howling Fjord",
			44.5,
			57.7,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11266] = {
		{
			11266,
			"Gjalerbron Attack Plans",
			72,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			nil,
			nil,
			"Howling Fjord",
			36.2,
			12.3,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11330] = {
		{
			11330,
			"Absholutely... Thish Will Work!",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24283,
			"Peppy Wrongnozzle",
			"Howling Fjord",
			30.8,
			41.7,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11394] = {
		{
			11394,
			"And You Thought Murlocs Smelled Bad!",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23833,
			"Explorer Jaren",
			"Howling Fjord",
			24.2,
			32.5,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11458] = {
		{
			11458,
			"Avenge Iskaal",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24755,
			"Elder Atuik",
			"Howling Fjord",
			25,
			57,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8890] = {
		{
			8890,
			"Word from the Spire",
			10,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15924,
			"Apprentice Loralthalis",
			"Eversong Woods",
			67.8,
			56.6,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25710] = {
		{
			25710,
			"Minor Distractions",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			5393,
			"Quartermaster Lungertz",
			"Blasted Lands",
			60.1,
			13.6,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11650] = {
		{
			11650,
			"Just a Few More Things...",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25477,
			"Crafty Wobblesprocket",
			"Borean Tundra",
			57.8,
			18.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11714] = {
		{
			11714,
			"Vermin Extermination",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25440,
			"Scout Tungok",
			"Borean Tundra",
			53.2,
			51.6,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[2945] = {
		{
			2945,
			"Grime-Encrusted Ring [Dungeon]",
			34,
			"New Tinkertown",
			1,
		},
		{
			99999,
		},
		{
			nil,
			nil,
			"Gnomeregan",
			24.7,
			42.5,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12665] = {
		{
			12665,
			"I Sense a Disturbance",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28401,
			"Har'koa",
			"Zul'Drak",
			63.6,
			70.3,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11906] = {
		{
			11906,
			"Cleaning Up the Pools",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26104,
			"Iron Eyes",
			"Borean Tundra",
			77,
			37.7,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26755] = {
		{
			26755,
			"Keep Them off the Front",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43897,
			"Pyrium Lodestone",
			"Deepholm",
			22.7,
			52.1,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12034] = {
		{
			12034,
			"Victory Nears...",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26379,
			"Overlord Agmar",
			"Dragonblight",
			38.1,
			46.3,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12098] = {
		{
			12098,
			"Search Indu'le Village",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26673,
			"Image of Archmage Modera",
			"Dragonblight",
			29,
			55.5,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10116] = {
		{
			10116,
			"Wanted: Chieftain Mummaki [Group]",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18019,
			"Timothy Daniels",
			"Zangarmarsh",
			41.7,
			27.3,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12226] = {
		{
			12226,
			"Just Passing Through",
			73,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27277,
			"Master Woodsman Anderhol",
			"Grizzly Hills",
			32.1,
			60,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24578] = {
		{
			24578,
			"The Blackwald",
			8,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			37815,
			"Lorna Crowley",
			"Gilneas",
			60.1,
			91.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24706] = {
		{
			24706,
			"The Spirits of Golakka Hot Springs",
			54,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38255,
			"Maximillian of Northshire",
			"Un'Goro Crater",
			29.1,
			22.2,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12418] = {
		{
			12418,
			"Through Fields of Flame",
			75,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27506,
			"Ceristrasz",
			"Dragonblight",
			52.2,
			50,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12482] = {
		{
			12482,
			"Against Nifflevar",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			27922,
			"Ranger Captain Areiel",
			"Howling Fjord",
			67.5,
			60.5,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25090] = {
		{
			25090,
			"A Putrid Task",
			6,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1496,
			"Deathguard Dillinger",
			"Tirisfal Glades",
			52.5,
			54.9,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12610] = {
		{
			12610,
			"Clipping Their Wings",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28045,
			"Captain Arnath",
			"Zul'Drak",
			35.6,
			52.2,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12674] = {
		{
			12674,
			"Hell Hath a Fury",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28030,
			"Quetz'lun's Spirit",
			"Zul'Drak",
			75.3,
			58.6,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12738] = {
		{
			12738,
			"A Cry For Vengeance!",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28913,
			"Thassarian",
			"Plaguelands: The Scarlet Enclave",
			56.3,
			80.09999999999999,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12802] = {
		{
			12802,
			"My Heart is in Your Hands",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			nil,
			nil,
			"Grizzly Hills",
			37,
			32.4,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12866] = {
		{
			12866,
			"Stemming the Aggressors",
			78,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29727,
			"Glorthal Stiffbeard",
			"The Storm Peaks",
			29.1,
			74.8,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25858] = {
		{
			25858,
			"By Her Lady's Word",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			42076,
			"Lady Naz'jar",
			"Shimmering Expanse",
			29,
			78.5,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25986] = {
		{
			25986,
			"Trouble at the Lake",
			10,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			1977,
			"Senator Mehr Stonehallow",
			"Dun Morogh",
			75.90000000000001,
			54.3,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26114] = {
		{
			26114,
			"Quae Trusts You",
			28,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2712,
			"Quae",
			"Arathi Highlands",
			54.8,
			55.3,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13122] = {
		{
			13122,
			"The Scourgestone",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30596,
			"The Ebon Watcher",
			"Icecrown",
			83.09999999999999,
			72.90000000000001,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26370] = {
		{
			26370,
			"Return to Sentinel Hill",
			15,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			29611,
			"King Varian Wrynn",
			"Stormwind City",
			85.7,
			31.8,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26498] = {
		{
			26498,
			"Death to the Vilebranch",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43157,
			"Doran Steelwing",
			"The Hinterlands",
			63.9,
			59.9,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13314] = {
		{
			13314,
			"Get the Message",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30344,
			"High Captain Justin Bartlett",
			"Icecrown",
			58.1,
			38.9,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26754] = {
		{
			26754,
			"Morbent's Bane",
			25,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			nil,
			nil,
			"Duskwood",
			18.1,
			25.3,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26882] = {
		{
			26882,
			"Blackfathom Villainy [Dungeon]",
			28,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			4787,
			"Scout Thaelrid",
			"Blackfathom Deeps",
			21,
			75,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27010] = {
		{
			27010,
			"Quicksilver Submersion",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			0,
			"Xuana",
			"Deepholm",
			70.09999999999999,
			62,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24942] = {
		{
			24942,
			"Zombies vs. Super Booster Rocket Boots",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38738,
			"Coach Crosscheck",
			"The Lost Isles",
			51.8,
			47.2,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27266] = {
		{
			27266,
			"Wulf Calls",
			20,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			17122,
			"Vord",
			"The Exodar",
			47.3,
			88.5,
			471,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27394] = {
		{
			27394,
			"The Call of the Blade",
			81,
			"Vashj'ir",
			1,
		},
		{
			65,
		},
		{
			40919,
			"Wavespeaker Tulra",
			"Shimmering Expanse",
			51.5,
			62.7,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13762] = {
		{
			13762,
			"A Blade Fit For A Champion",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33361,
			"Mokra the Skullcrusher",
			"Icecrown",
			76.40000000000001,
			24.6,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27650] = {
		{
			27650,
			"Home Again",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46583,
			"Eoin Dunwald",
			"Twilight Highlands",
			52.4,
			70.3,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27778] = {
		{
			27778,
			"Hacking the Wibson",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			nil,
			nil,
			"Uldum",
			74.09999999999999,
			64.5,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27906] = {
		{
			27906,
			"Neeka Bloodscar",
			55,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			7623,
			"Dispatch Commander Ruag",
			"Swamp of Sorrows",
			49.4,
			55.5,
			38,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28034] = {
		{
			28034,
			"Lunk's Adventure: Rendan's Weakness",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47429,
			"Lunk",
			"Searing Gorge",
			0,
			0,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28162] = {
		{
			28162,
			"Swamp Bait",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48066,
			"Sergeant Parker",
			"Tol Barad",
			50.8,
			49.6,
			708,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28290] = {
		{
			28290,
			"Meet with Grezz Ragefist",
			50,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			4593,
			"Christoph Walker",
			"Undercity",
			47.1,
			15.9,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28418] = {
		{
			28418,
			"Burning Vengeance",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48559,
			"Ariok",
			"Burning Steppes",
			0,
			0,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14274] = {
		{
			14274,
			"[2] Immolate",
			2,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35869,
			"Vitus Darkwalker",
			"Gilneas City",
			71.09999999999999,
			64,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28674] = {
		{
			28674,
			"Starfall Village",
			53,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			48965,
			"Deez Rocksnitch",
			"Winterspring",
			59.8,
			49.7,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14402] = {
		{
			14402,
			"Ready to Go",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36458,
			"Grandma Wahl",
			"Gilneas",
			32.5,
			75.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14466] = {
		{
			14466,
			"[7] The King's Observatory",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36606,
			"Queen Mia Greymane",
			"Gilneas",
			28.2,
			50.1,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27779] = {
		{
			27779,
			"Gnomebliteration",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46750,
			"Fusion Core",
			"Uldum",
			77.2,
			63.2,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11961] = {
		{
			11961,
			"Spirits Watch Over Us",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26218,
			"Elder Muahit",
			"Borean Tundra",
			67.2,
			54.8,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[76] = {
		{
			76,
			"The Jasperlode Mine",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			240,
			"Marshal Dughan",
			"Elwynn Forest",
			42.2,
			66,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27629] = {
		{
			27629,
			"The Vizier's Vote",
			84,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47959,
			"Prince Nadun",
			"Uldum",
			55,
			34,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14265] = {
		{
			14265,
			"Your Instructor",
			2,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35840,
			"Gwen Armstead",
			"Gilneas City",
			70.5,
			55,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[840] = {
		{
			840,
			"Conscript of the Horde",
			10,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			3336,
			"Takrin Pathseeker",
			"Durotar",
			50.9,
			43.5,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26989] = {
		{
			26989,
			"The Gilneas Liberation Front",
			11,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			44615,
			"Grand Executor Mortuus",
			"Silverpine Forest",
			57.5,
			10,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26477] = {
		{
			26477,
			"Search the Bole",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34335,
			"Avrus Illwhisper",
			"Ashenvale",
			59.2,
			59.7,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[314] = {
		{
			314,
			"Protecting the Herd",
			8,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			1265,
			"Rudra Amberstill",
			"Dun Morogh",
			70.3,
			48.2,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28775] = {
		{
			28775,
			"Broken Serpent Figurine",
			84,
			"Jewelcrafting",
			1,
		},
		{
			3010,
		},
		{
			nil,
			nil,
			"Deepholm",
			75.7,
			40.2,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12605] = {
		{
			12605,
			"Securing the Bait",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28376,
			"Dorian Drakestalker",
			"Sholazar Basin",
			42.3,
			28.7,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28767] = {
		{
			28767,
			"Beating them Back!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.2,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28639] = {
		{
			28639,
			"Ursius",
			53,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			nil,
			nil,
			"Winterspring",
			57.9,
			36.7,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10161] = {
		{
			10161,
			"In Case of Emergency...",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19367,
			"\"Screaming\" Screed Luckheed",
			"Hellfire Peninsula",
			49.2,
			74.8,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28383] = {
		{
			28383,
			"Wisps of the Woods",
			49,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			nil,
			nil,
			"Felwood",
			61.8,
			26.7,
			182,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14269] = {
		{
			14269,
			"Someone's Looking for You",
			2,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35840,
			"Gwen Armstead",
			"Gilneas City",
			70.59999999999999,
			55.1,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13041] = {
		{
			13041,
			"Finish the Shipment",
			81,
			"Jewelcrafting",
			1,
		},
		{
			3010,
		},
		{
			28701,
			"Timothy Jones",
			"Dalaran",
			40.4,
			34.9,
			504,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9905] = {
		{
			9905,
			"Maktu's Revenge",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18010,
			"Maktu",
			"Zangarmarsh",
			41.6,
			27.3,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[3921] = {
		{
			3921,
			"Wenikee Boltbucket",
			14,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34674,
			"Brak Blusterpipe",
			"Northern Barrens",
			62.6,
			17.1,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9841] = {
		{
			9841,
			"Stinging the Stingers",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18015,
			"Gambarinka",
			"Zangarmarsh",
			31.6,
			49.2,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27743] = {
		{
			27743,
			"While We're Here",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46513,
			"Initiate Goldmine",
			"Twilight Highlands",
			38.4,
			93.90000000000001,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13059] = {
		{
			13059,
			"Revenge for the Vargul",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30406,
			"Bethod Feigr",
			"Icecrown",
			36.1,
			33.1,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9649] = {
		{
			9649,
			"Ysera's Tears",
			18,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17663,
			"Jessera of Mac'Aree",
			"Bloodmyst Isle",
			56.3,
			56.8,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9585] = {
		{
			9585,
			"The Final Sample",
			18,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17423,
			"Harbinger Mikolaas",
			"Bloodmyst Isle",
			52.7,
			53.2,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26476] = {
		{
			26476,
			"Dryad Delivery",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3691,
			"Raene Wolfrunner",
			"Ashenvale",
			36.6,
			49.7,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9457] = {
		{
			9457,
			"An Unusual Patron",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			17094,
			"Nemeth Hawkeye",
			"Northern Stranglethorn",
			0,
			0,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9393] = {
		{
			9393,
			"Hunter Training",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			15278,
			"Magistrix Erona",
			"Eversong Woods",
			38,
			21,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25580] = {
		{
			25580,
			"Swift Approach",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40642,
			"Captain Taylor",
			"Shimmering Expanse",
			49.2,
			57,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27273] = {
		{
			27273,
			"An Invitation from Moonglade",
			20,
			"Druid",
			1,
		},
		{
			2002,
		},
		{
			5504,
			"Sheldras Moontree",
			"Stormwind City",
			27.5,
			49.9,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24579] = {
		{
			24579,
			"Sartharion Must Die! [Raid]",
			80,
			"The Obsidian Sanctum",
			5,
		},
		{
			1086,
		},
		{
			nil,
			nil,
			"Crystalsong Forest",
			31.9,
			66.40000000000001,
			510,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24707] = {
		{
			24707,
			"The Ballad of Maximillian",
			55,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38237,
			"Maximillian of Northshire",
			"Un'Goro Crater",
			30.5,
			51.3,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8323] = {
		{
			8323,
			"True Believers",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			15194,
			"Hermit Ortell",
			"Silithus",
			0,
			0,
			261,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24963] = {
		{
			24963,
			"Maul 'Em With Kindness",
			48,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38849,
			"Megs Dreadshredder",
			"Tanaris",
			44.6,
			52.6,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25091] = {
		{
			25091,
			"Sandsorrow Watch",
			45,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39178,
			"Driz Plunkbow",
			"Tanaris",
			52.2,
			28,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25219] = {
		{
			25219,
			"Don't be Shellfish",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39875,
			"Earthmender Duarn",
			"Shimmering Expanse",
			49.3,
			42.5,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[4601] = {
		{
			4601,
			"The Sparklematic 5200! [Dungeon]",
			30,
			"Gnomeregan",
			1,
		},
		{
			1005,
		},
		{
			6391,
			"Holdout Warrior",
			"Gnomeregan",
			62.8,
			67.40000000000001,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25475] = {
		{
			25475,
			"Find OOX-22/FE!",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			nil,
			nil,
			"Feralas",
			56.2,
			56.5,
			121,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8707] = {
		{
			8707,
			"Blade of Vaulted Secrets [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15499,
			"Warden Haro",
			"Ahn'Qiraj: The Fallen Kingdom",
			0,
			0,
			772,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25731] = {
		{
			25731,
			"A Bird in Hand",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			41006,
			"Thisalee Crow",
			"Mount Hyjal",
			42.2,
			45.3,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25859] = {
		{
			25859,
			"No Trespass Forgiven",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			42074,
			"Fathom-Stalker Azjentus",
			"Shimmering Expanse",
			46.1,
			79.5,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25987] = {
		{
			25987,
			"Put It On",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			nil,
			nil,
			"Abyssal Depths",
			55.5,
			73,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26115] = {
		{
			26115,
			"To Be Horde...",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			42106,
			"Overlord Krom'gar",
			"Stonetalon Mountains",
			45.6,
			34.1,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24940] = {
		{
			24940,
			"Up the Volcano",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38387,
			"Sassy Hardwrench",
			"The Lost Isles",
			45.2,
			64.90000000000001,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26371] = {
		{
			26371,
			"The Legend of Captain Grayson",
			15,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			878,
			"Scout Galiaan",
			"Westfall",
			56.4,
			47.4,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26499] = {
		{
			26499,
			"Stonefather's Boon",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43071,
			"Crag Rockcrusher",
			"Deepholm",
			27.9,
			68.7,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26627] = {
		{
			26627,
			"The Hermit",
			21,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			264,
			"Commander Althea Ebonlocke",
			"Duskwood",
			73.59999999999999,
			46.9,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9283] = {
		{
			9283,
			"Rescue the Survivors!",
			2,
			"Ammen Vale",
			1,
		},
		{
			5,
		},
		{
			16502,
			"Zalduun",
			"Azuremyst Isle",
			80.09999999999999,
			48.5,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26883] = {
		{
			26883,
			"Twilight Falls [Dungeon]",
			28,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			33260,
			"Sentinel Aluwyn",
			"Blackfathom Deeps",
			48.3,
			12,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27011] = {
		{
			27011,
			"Redpine Thievery",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44472,
			"Kelly Dumah",
			"Western Plaguelands",
			48.5,
			32,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27139] = {
		{
			27139,
			"Hobart Needs You",
			7,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			36471,
			"Foreman Dampwick",
			"The Lost Isles",
			45.4,
			64.8,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27267] = {
		{
			27267,
			"[20] [20] Make Contact with SI:7",
			20,
			"Rogue",
			1,
		},
		{
			2007,
		},
		{
			5165,
			"Hulfdan Blackbeard",
			"Ironforge",
			51.6,
			14.5,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27395] = {
		{
			27395,
			"A Marksman's Weapon [Dungeon]",
			20,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			3352,
			"Ormak Grimshot",
			"Orgrimmar",
			63.7,
			32.6,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27523] = {
		{
			27523,
			"Duskwing, Oh How I Hate Thee...",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45816,
			"Corpseburner Tim",
			"Eastern Plaguelands",
			48,
			23,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27651] = {
		{
			27651,
			"Doing It Like a Dunwald",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46177,
			"Keely Dunwald",
			"Twilight Highlands",
			45.9,
			65.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9795] = {
		{
			9795,
			"The Ogre Threat",
			65,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			18013,
			"Shadow Hunter Denjai",
			"Zangarmarsh",
			30.7,
			50.9,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27907] = {
		{
			27907,
			"Prayerblossom",
			55,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			47041,
			"Neeka Bloodscar",
			"Swamp of Sorrows",
			21.3,
			51.9,
			38,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28035] = {
		{
			28035,
			"The Mountain-Lord's Support",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47393,
			"Mountain-Lord Rendan",
			"Searing Gorge",
			39.3,
			67.7,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28163] = {
		{
			28163,
			"The Leftovers",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48066,
			"Sergeant Parker",
			"Tol Barad",
			50.8,
			49.6,
			708,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28291] = {
		{
			28291,
			"Return to Camp",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48237,
			"Salhet",
			"Uldum",
			56.9,
			62.4,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28419] = {
		{
			28419,
			"Stocking Up",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48559,
			"Ariok",
			"Burning Steppes",
			17.4,
			51.7,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28808] = {
		{
			28808,
			"Fear No Evil",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			951,
			"Brother Paxton",
			"Elwynn Forest",
			48.6,
			37.9,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28675] = {
		{
			28675,
			"Hero's Call: Swamp of Sorrows!",
			52,
			"Swamp of Sorrows",
			4,
		},
		{
			57,
		},
		{
			43820,
			"Scott Westmill",
			"Stormwind City",
			62.8,
			72.09999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10307] = {
		{
			10307,
			"Cohlien Frostweaver",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			nil,
			nil,
			"Netherstorm",
			59.7,
			87.7,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28267] = {
		{
			28267,
			"Firing Squad",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47972,
			"Commander Schnottz",
			"Uldum",
			22.4,
			63.2,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10435] = {
		{
			10435,
			"Retrieving the Goods",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20205,
			"Audi the Needle",
			"Netherstorm",
			44.7,
			36.7,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[2991] = {
		{
			2991,
			"Nekrum's Medallion [Dungeon]",
			47,
			"Zul'Farrak",
			1,
		},
		{
			1019,
		},
		{
			8022,
			"Thadius Grimshade",
			"Blasted Lands",
			62.6,
			17.1,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10563] = {
		{
			10563,
			"[69] To Legion Hold",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21357,
			"Wing Commander Nuainn",
			"Shadowmoon Valley",
			39.5,
			53.7,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10627] = {
		{
			10627,
			"Capture the Weapons [Group]",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			19333,
			"Grokom Deatheye",
			"Shadowmoon Valley",
			29.8,
			31.3,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10691] = {
		{
			10691,
			"Return to the Scryers",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			18417,
			"Altruis the Sufferer",
			"Nagrand",
			27.4,
			43.1,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27627] = {
		{
			27627,
			"Just a Fancy Cockroach",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46127,
			"Sapphire Scarab",
			"Uldum",
			65.59999999999999,
			26.9,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10819] = {
		{
			10819,
			"Felsworn Gas Mask",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22127,
			"Wildlord Antelarion",
			"Blade's Edge Mountains",
			61.5,
			38.6,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10883] = {
		{
			10883,
			"The Tempest Key",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			18166,
			"Khadgar",
			"Shattrath City",
			54.8,
			44.5,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[195] = {
		{
			195,
			"Raptor Stalking",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			nil,
			nil,
			"Northern Stranglethorn",
			29.9,
			32.5,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27760] = {
		{
			27760,
			"Artificial Intelligence",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			48501,
			"Sun Prophet Tumet",
			"Uldum",
			63.2,
			45.2,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11075] = {
		{
			11075,
			"The Netherwing Mines",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23140,
			"Taskmaster Varkule Dragonbreath",
			"Shadowmoon Valley",
			66.09999999999999,
			86.3,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12220] = {
		{
			12220,
			"A Dark Influence",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27295,
			"Hierophant Thayreen",
			"Grizzly Hills",
			31.2,
			59.5,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25439] = {
		{
			25439,
			"Vengeful Heart",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40221,
			"Toshe Chaosrender",
			"Shimmering Expanse",
			64.09999999999999,
			42.3,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11267] = {
		{
			11267,
			"The Frost Wyrm and its Master [Group]",
			72,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24032,
			"Celea Frozenmane",
			"Howling Fjord",
			49.5,
			11.6,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11331] = {
		{
			11331,
			"You Tell Him ...Hic!",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24283,
			"Peppy Wrongnozzle",
			"Howling Fjord",
			30.8,
			41.7,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11395] = {
		{
			11395,
			"It's a Scourge Device",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			nil,
			nil,
			"Howling Fjord",
			22.6,
			30.9,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11459] = {
		{
			11459,
			"Zeh'gehn Sez",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24525,
			"Zeh'gehn",
			"Howling Fjord",
			35.6,
			80.59999999999999,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11523] = {
		{
			11523,
			"Arm the Wards!",
			70,
			"Isle of Quel'Danas",
			3,
		},
		{
			44,
		},
		{
			24967,
			"Captain Theris Dawnhearth",
			"Isle of Quel'Danas",
			47.4,
			30.6,
			499,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11587] = {
		{
			11587,
			"Prison Break",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25262,
			"Librarian Donathan",
			"Borean Tundra",
			45.3,
			33.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11651] = {
		{
			11651,
			"Tanks a lot...",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25475,
			"Mobu",
			"Borean Tundra",
			32.1,
			54.3,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11715] = {
		{
			11715,
			"Fueling the Project",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25780,
			"Abner Fizzletorque",
			"Borean Tundra",
			57.1,
			20.1,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[187] = {
		{
			187,
			"Tiger Prowess",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			717,
			"Ajeck Rouack",
			"Northern Stranglethorn",
			44.5,
			22.8,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25579] = {
		{
			25579,
			"Caught Off-Guard",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40643,
			"Admiral Dvorek",
			"Shimmering Expanse",
			49.2,
			57,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11907] = {
		{
			11907,
			"The Sub-Chieftains",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25982,
			"Sage Earth and Sky",
			"Borean Tundra",
			77.2,
			38.4,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10045] = {
		{
			10045,
			"Material Components",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18141,
			"Greatmother Geyah",
			"Nagrand",
			56.6,
			34.4,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12035] = {
		{
			12035,
			"Repurposed Technology",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26084,
			"Jeremiah Hawning",
			"Borean Tundra",
			58.2,
			62.9,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12099] = {
		{
			12099,
			"Free at Last",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26420,
			"Gavrock",
			"Grizzly Hills",
			79.7,
			33.6,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28778] = {
		{
			28778,
			"Broken Boar Figurine",
			83,
			"Jewelcrafting",
			1,
		},
		{
			3010,
		},
		{
			nil,
			nil,
			"Deepholm",
			62.7,
			54.3,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24452] = {
		{
			24452,
			"Profitability Scouting",
			13,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36749,
			"Commander Molotov",
			"Azshara",
			29.4,
			57.7,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24580] = {
		{
			24580,
			"Anub'Rekhan Must Die! [Raid]",
			80,
			"Naxxramas",
			5,
		},
		{
			1075,
		},
		{
			5519,
			"Billibub Cogspinner",
			"Stormwind City",
			63.1,
			32.1,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24708] = {
		{
			24708,
			"The Fossil-Finder 3000",
			54,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9272,
			"Spark Nilminer",
			"Un'Goro Crater",
			31.9,
			50.4,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12419] = {
		{
			12419,
			"The Fate of the Ruby Dragonshrine",
			75,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			nil,
			nil,
			"Dragonblight",
			47.6,
			49,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24964] = {
		{
			24964,
			"The Thrill of the Hunt",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			38911,
			"Xavier the Huntsman",
			"Tirisfal Glades",
			31.5,
			65.59999999999999,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12547] = {
		{
			12547,
			"The Activation Rune",
			78,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			28092,
			"The Etymidian",
			"Un'Goro Crater",
			47.5,
			9.199999999999999,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25220] = {
		{
			25220,
			"Slippery Threat",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39878,
			"Caretaker Movra",
			"Shimmering Expanse",
			49.1,
			42,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12675] = {
		{
			12675,
			"One Last Thing",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28030,
			"Quetz'lun's Spirit",
			"Zul'Drak",
			75.3,
			58.5,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25476] = {
		{
			25476,
			"Rescue OOX-22/FE!",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			7807,
			"Homing Robot OOX-22/FE",
			"Feralas",
			53.4,
			55.7,
			121,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12803] = {
		{
			12803,
			"Force of Nature",
			78,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28746,
			"Pilot Vic",
			"Sholazar Basin",
			50,
			61.5,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25732] = {
		{
			25732,
			"A Bone to Pick",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			46458,
			"Budd",
			"Kelp'thar Forest",
			58.4,
			48.6,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25860] = {
		{
			25860,
			"At All Costs",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			nil,
			nil,
			"Shimmering Expanse",
			33.1,
			78,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12995] = {
		{
			12995,
			"Leave Our Mark",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			29343,
			"Baron Sliver",
			"Icecrown",
			42.9,
			24.9,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26116] = {
		{
			26116,
			"Kinelory Strikes [Escort]",
			28,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2713,
			"Kinelory",
			"Arathi Highlands",
			54.8,
			55.4,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26244] = {
		{
			26244,
			"The Earth Claims All",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43397,
			"Seer Kormo",
			"Deepholm",
			49.7,
			53,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26372] = {
		{
			26372,
			"Pre-Flight Checklist",
			84,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			42643,
			"Fleep",
			"Azshara",
			54.6,
			51.2,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26500] = {
		{
			26500,
			"We're Surrounded",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43160,
			"Earthbreaker Dolomite",
			"Deepholm",
			28.2,
			69.59999999999999,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13315] = {
		{
			13315,
			"Sneak Preview",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29799,
			"Thassarian",
			"Icecrown",
			58.9,
			42.8,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13379] = {
		{
			13379,
			"Green Technology",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30825,
			"Chief Engineer Copperclaw",
			"Icecrown",
			60,
			34.1,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26884] = {
		{
			26884,
			"Researching the Corruption [Dungeon]",
			26,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			33258,
			"Relwyn Shadestar",
			"Blackfathom Deeps",
			47.9,
			13.4,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27012] = {
		{
			27012,
			"A Gnoll's Resolve",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44472,
			"Kelly Dumah",
			"Western Plaguelands",
			48.5,
			32,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27140] = {
		{
			27140,
			"Alexi's Gambit [Dungeon]",
			43,
			"Scholomance",
			1,
		},
		{
			1011,
		},
		{
			26717,
			"Mudstealer",
			"Scholomance",
			29.4,
			33.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27268] = {
		{
			27268,
			"Make Haste to the Cathedral",
			20,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			16756,
			"Caedmos",
			"The Exodar",
			38.7,
			51,
			471,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27396] = {
		{
			27396,
			"Blade of the Shattered Hand [Dungeon]",
			20,
			"Rogue",
			1,
		},
		{
			2007,
		},
		{
			47233,
			"Gordul",
			"Orgrimmar",
			44.7,
			61.5,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27524] = {
		{
			27524,
			"Blind Fury",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45417,
			"Fiona",
			"Eastern Plaguelands",
			50.6,
			20.3,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27652] = {
		{
			27652,
			"Dark Assassins",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45796,
			"Master Mathias Shaw",
			"Twilight Highlands",
			36.4,
			66.09999999999999,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13891] = {
		{
			13891,
			"The Devourer of Darkshore",
			18,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			34301,
			"Kathrena Winterwisp",
			"Darkshore",
			45.2,
			74.59999999999999,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27908] = {
		{
			27908,
			"Secrets of the Mire",
			55,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			47041,
			"Neeka Bloodscar",
			"Swamp of Sorrows",
			21.3,
			51.9,
			38,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14019] = {
		{
			14019,
			"Monkey Business",
			6,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			35758,
			"Bamm Megabomb",
			"The Lost Isles",
			27.9,
			74.5,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[7042] = {
		{
			7042,
			"Stolen Winter Veil Treats",
			85,
			"Winter Veil",
			1,
		},
		{
			4013,
		},
		{
			13433,
			"Wulmort Jinglepocket",
			"Ironforge",
			33.5,
			66.8,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28292] = {
		{
			28292,
			"That's No Pyramid!",
			83,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			44799,
			"Explorer Mowi",
			"Deepholm",
			47.3,
			51.4,
			640,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28420] = {
		{
			28420,
			"A Future Project",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48559,
			"Ariok",
			"Burning Steppes",
			0,
			0,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28548] = {
		{
			28548,
			"Warchief's Command: Desolace!",
			30,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Orgrimmar",
			49.8,
			76.59999999999999,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28676] = {
		{
			28676,
			"Exterminators at Work",
			53,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			11079,
			"Wynd Nightchaser",
			"Winterspring",
			48.7,
			41,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14403] = {
		{
			14403,
			"[7] The Hayward Brothers",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36452,
			"Gwen Armstead",
			"Gilneas",
			37.5,
			65.3,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9844] = {
		{
			9844,
			"A Demonic Presence [Raid]",
			70,
			"Karazhan",
			1,
		},
		{
			1073,
		},
		{
			17613,
			"Archmage Alturus",
			"Deadwind Pass",
			47.1,
			75.59999999999999,
			32,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10040] = {
		{
			10040,
			"Who Are They?",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18715,
			"Private Weeks",
			"Terokkar Forest",
			40.4,
			36.1,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9848] = {
		{
			9848,
			"Secrets of the Daggerfen",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18019,
			"Timothy Daniels",
			"Zangarmarsh",
			41.3,
			28.6,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27903] = {
		{
			27903,
			"Ignition",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46978,
			"Harrison Jones",
			"Uldum",
			44,
			57,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10114] = {
		{
			10114,
			"The Nesingwary Safari",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			19133,
			"Ohlorn Farstrider",
			"Nagrand",
			55.4,
			37.3,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13890] = {
		{
			13890,
			"Keep the Fires Burning",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34122,
			"Commander Grimfang",
			"Ashenvale",
			12,
			33.8,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[8564] = {
		{
			8564,
			"Priest Training",
			3,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			15278,
			"Magistrix Erona",
			"Eversong Woods",
			38,
			21,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9732] = {
		{
			9732,
			"Return to the Marsh",
			63,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			16885,
			"Amythiel Mistwalker",
			"Hellfire Peninsula",
			16,
			52.2,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25959] = {
		{
			25959,
			"Clear Goals",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40916,
			"Captain Vilethorn",
			"Shimmering Expanse",
			39.7,
			54.1,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12292] = {
		{
			12292,
			"Local Support",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26875,
			"Lieutenant Dumont",
			"Grizzly Hills",
			31.8,
			60.2,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12548] = {
		{
			12548,
			"The Etymidian",
			78,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27801,
			"Avatar of Freya",
			"Sholazar Basin",
			64.5,
			48.8,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12612] = {
		{
			12612,
			"The Fallen Pillar",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27801,
			"Avatar of Freya",
			"Sholazar Basin",
			64.59999999999999,
			48.5,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25350] = {
		{
			25350,
			"The Lost Apprentice",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			40132,
			"Vestia Moonspear",
			"Feralas",
			57.2,
			55,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[7650] = {
		{
			7650,
			"Enchanted Thorium Platemail: Volume II [Dungeon]",
			35,
			"Blacksmithing",
			1,
		},
		{
			3003,
		},
		{
			nil,
			nil,
			"Hellfire Peninsula",
			56.4,
			38,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12740] = {
		{
			12740,
			"Parachutes for the Argent Crusade",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28059,
			"Commander Falstaav",
			"Zul'Drak",
			39.5,
			67,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12932] = {
		{
			12932,
			"",
			0,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			30009,
			"Wodin the Troll-Servant",
			"Zul'Drak",
			48.2,
			56.6,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12996] = {
		{
			12996,
			"The Warm-Up ",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29839,
			"Astrid Bjornrittar",
			"The Storm Peaks",
			49.8,
			71.8,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26118] = {
		{
			26118,
			"Seize the Ambassador",
			10,
			"Ironforge",
			1,
		},
		{
			43,
		},
		{
			42129,
			"Moira Thaurissan",
			"Ironforge",
			39.7,
			56.8,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[7810] = {
		{
			7810,
			"Arena Master [PvP]",
			55,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43099,
			"Stone Guard Towhide",
			"The Cape of Stranglethorn",
			46.5,
			26,
			673,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26246] = {
		{
			26246,
			"Captain's Log",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			nil,
			nil,
			"Deepholm",
			53.6,
			73.7,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13188] = {
		{
			13188,
			"Where Kings Walk",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			31084,
			"Highlord Darion Mograine",
			"Eastern Plaguelands",
			83.40000000000001,
			49.3,
			23,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27142] = {
		{
			27142,
			"The Lich, Ras Frostwhisper [Dungeon]",
			43,
			"Scholomance",
			1,
		},
		{
			1011,
		},
		{
			45110,
			"Alexi Barov",
			"Scholomance",
			29.4,
			33.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13764] = {
		{
			13764,
			"The Edge Of Winter",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33361,
			"Mokra the Skullcrusher",
			"Icecrown",
			76.5,
			24.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13828] = {
		{
			13828,
			"Mastery Of Melee",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33625,
			"Arcanist Taelis",
			"Icecrown",
			76.40000000000001,
			19.4,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28550] = {
		{
			28550,
			"Hero's Call: Southern Barrens!",
			30,
			"Southern Barrens",
			4,
		},
		{
			20,
		},
		{
			nil,
			nil,
			"Darnassus",
			45,
			49.8,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28806] = {
		{
			28806,
			"Fear No Evil",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			951,
			"Brother Paxton",
			"Elwynn Forest",
			48.6,
			38.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13813] = {
		{
			13813,
			"Taking Battle To The Enemy",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33769,
			"Zor'be the Bloodletter",
			"Icecrown",
			73.8,
			19.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13237] = {
		{
			13237,
			"Poke and Prod",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			65.40000000000001,
			28,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12725] = {
		{
			12725,
			"Brothers In Death",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28913,
			"Thassarian",
			"Plaguelands: The Scarlet Enclave",
			56.3,
			80.09999999999999,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24453] = {
		{
			24453,
			"Private Chat",
			13,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36749,
			"Commander Molotov",
			"Azshara",
			29.5,
			57.8,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24581] = {
		{
			24581,
			"Noth the Plaguebringer Must Die! [Raid]",
			80,
			"Naxxramas",
			5,
		},
		{
			1075,
		},
		{
			nil,
			nil,
			"Mount Hyjal",
			64.8,
			66.09999999999999,
			606,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24709] = {
		{
			24709,
			"A Tale of Two Shovels",
			55,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9272,
			"Spark Nilminer",
			"Un'Goro Crater",
			31.8,
			50.3,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12661] = {
		{
			12661,
			"Infiltrating Voltarus",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28518,
			"Stefan Vadu",
			"Zul'Drak",
			14.1,
			73.8,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24965] = {
		{
			24965,
			"Magic Training",
			3,
			"Mage",
			1,
		},
		{
			2004,
		},
		{
			2124,
			"Isabella",
			"Tirisfal Glades",
			30.9,
			66.09999999999999,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25093] = {
		{
			25093,
			"The Heads of the SI:7",
			10,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			39065,
			"Aggra",
			"The Lost Isles",
			36.3,
			43.4,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25221] = {
		{
			25221,
			"Rundown",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39877,
			"Toshe Chaosrender",
			"Shimmering Expanse",
			55.6,
			12.5,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25349] = {
		{
			25349,
			"Twisted Sisters",
			40,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39847,
			"Chief Spirithorn",
			"Feralas",
			74.59999999999999,
			42.9,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25477] = {
		{
			25477,
			"Better Late Than Dead",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41248,
			"Moanah Stormhoof",
			"Kelp'thar Forest",
			46.2,
			46.8,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8708] = {
		{
			8708,
			"Mace of Unending Life [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15499,
			"Warden Haro",
			"Ahn'Qiraj: The Fallen Kingdom",
			59.4,
			14,
			772,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25733] = {
		{
			25733,
			"Get Out Of Here, Stalkers",
			21,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41086,
			"Forba Slabchisel",
			"Wetlands",
			57.5,
			71.7,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25861] = {
		{
			25861,
			"Setting An Example",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41457,
			"Executioner Verathress",
			"Shimmering Expanse",
			57.1,
			85.2,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25989] = {
		{
			25989,
			"Capture the Crab",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41531,
			"Earthmender Duarn",
			"Shimmering Expanse",
			51.6,
			52.3,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26117] = {
		{
			26117,
			"For Southshore",
			28,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2712,
			"Quae",
			"Arathi Highlands",
			54.8,
			55.3,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26245] = {
		{
			26245,
			"Gunship Down",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43065,
			"Maruut Stonebinder",
			"Deepholm",
			49.6,
			53,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26373] = {
		{
			26373,
			"On to Kharanos",
			5,
			"Chill Breeze Valley",
			1,
		},
		{
			36,
		},
		{
			42353,
			"Jarvi Shadowstep",
			"Dun Morogh",
			37.4,
			44,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26501] = {
		{
			26501,
			"Sealing the Way",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43071,
			"Crag Rockcrusher",
			"Deepholm",
			27.9,
			68.8,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26629] = {
		{
			26629,
			"Seeing Where Your Loyalties Lie",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43504,
			"Yancey Grillsen",
			"The Cape of Stranglethorn",
			43.9,
			56.4,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24930] = {
		{
			24930,
			"While You're At It",
			3,
			"Gilneas City",
			1,
		},
		{
			50,
		},
		{
			35115,
			"Lord Godfrey",
			"Gilneas City",
			65.5,
			77.09999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26885] = {
		{
			26885,
			"Knowledge in the Deeps [Dungeon]",
			25,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			33261,
			"Sentinel-trainee Issara",
			"Blackfathom Deeps",
			48.4,
			11.5,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27013] = {
		{
			27013,
			"Too Close for Comfort",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44472,
			"Kelly Dumah",
			"Western Plaguelands",
			48.4,
			32,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27141] = {
		{
			27141,
			"Premature Explosionation",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			44860,
			"Harrison Jones",
			"Uldum",
			64.40000000000001,
			22.4,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27269] = {
		{
			27269,
			"The Temple of the Moon",
			20,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			11401,
			"Priestess Alathea",
			"Darnassus",
			43.5,
			79.09999999999999,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27397] = {
		{
			27397,
			"Dreamseeker's Task [Dungeon]",
			20,
			"Shaman",
			1,
		},
		{
			2008,
		},
		{
			3344,
			"Kardris Dreamseeker",
			"Orgrimmar",
			39,
			46.9,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9668] = {
		{
			9668,
			"Report to Exarch Admetius",
			13,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17649,
			"Kessel",
			"Bloodmyst Isle",
			63,
			87.5,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27653] = {
		{
			27653,
			"Dark Assassins",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45675,
			"Garona Halforcen",
			"Twilight Highlands",
			36.4,
			66.09999999999999,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27781] = {
		{
			27781,
			"The Machination",
			16,
			"The Deadmines",
			1,
		},
		{
			1015,
		},
		{
			nil,
			nil,
			"The Deadmines",
			61.4,
			72.09999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27909] = {
		{
			27909,
			"The Purespring",
			55,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			47041,
			"Neeka Bloodscar",
			"Swamp of Sorrows",
			21.2,
			51.7,
			38,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9924] = {
		{
			9924,
			"Corki's Gone Missing Again!",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18183,
			"Arechron",
			"Nagrand",
			55.4,
			68.7,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28165] = {
		{
			28165,
			"D-Block",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48061,
			"2nd Lieutenant Wansworth",
			"Tol Barad",
			51.5,
			49.7,
			708,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28293] = {
		{
			28293,
			"That's No Pyramid!",
			83,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			44823,
			"Examiner Rowe",
			"Deepholm",
			51.3,
			50.1,
			640,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28421] = {
		{
			28421,
			"Mud Hunter",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48559,
			"Ariok",
			"Burning Steppes",
			0,
			0,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28549] = {
		{
			28549,
			"Warchief's Command: Southern Barrens!",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			nil,
			nil,
			"Orgrimmar",
			49.9,
			76.5,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28677] = {
		{
			28677,
			"Warchief's Command: Swamp of Sorrows!",
			52,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			2458,
			"Randolph Montague",
			"Undercity",
			0,
			0,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28805] = {
		{
			28805,
			"The Eye of the Storm",
			80,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			45244,
			"Farseer Krogar",
			"Orgrimmar",
			50.6,
			38.6,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26341] = {
		{
			26341,
			"The Stone Shards",
			29,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2789,
			"Skuerto",
			"Arathi Highlands",
			40.3,
			49.1,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10436] = {
		{
			10436,
			"All Clear!",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20913,
			"Tashar",
			"Netherstorm",
			44.7,
			14.5,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25957] = {
		{
			25957,
			"Visions of the Past: The Invasion of Vashj'ir",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40919,
			"Wavespeaker Tulra",
			"Shimmering Expanse",
			51.6,
			62.7,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10564] = {
		{
			10564,
			"Blast the Infernals!",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21357,
			"Wing Commander Nuainn",
			"Shadowmoon Valley",
			39.5,
			53.8,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10628] = {
		{
			10628,
			"Akama",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21826,
			"Sanoru",
			"Shadowmoon Valley",
			57.3,
			49.6,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10692] = {
		{
			10692,
			"Varedis Must Be Stopped [Group]",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21954,
			"Larissa Sunstrike",
			"Shadowmoon Valley",
			55.8,
			58.2,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28795] = {
		{
			28795,
			"They Sent Assassins",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.5,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10820] = {
		{
			10820,
			"Deceive thy Enemy",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			nil,
			nil,
			"Blade's Edge Mountains",
			73.2,
			40,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10884] = {
		{
			10884,
			"Trial of the Naaru: Mercy [Heroic]",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			18481,
			"A'dal",
			"Shattrath City",
			54,
			45.2,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28644] = {
		{
			28644,
			"The Durnholde Challenge: Teracula [Group]",
			25,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			nil,
			nil,
			"Hillsbrad Foothills",
			68.40000000000001,
			59.7,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14384] = {
		{
			14384,
			"[30] Rerouted!",
			30,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			36410,
			"Officer Jankie",
			"Desolace",
			54.2,
			9.1,
			101,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11076] = {
		{
			11076,
			"Picking Up The Pieces...",
			70,
			"Shadowmoon Valley",
			3,
		},
		{
			73,
		},
		{
			23149,
			"Mistress of the Mines",
			"Shadowmoon Valley",
			65.40000000000001,
			90.09999999999999,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14320] = {
		{
			14320,
			"In Need of Ingredients",
			5,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36132,
			"Krennan Aranas",
			"Gilneas",
			37.5,
			63.2,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14256] = {
		{
			14256,
			"The Emerging Threat",
			32,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35773,
			"Cenarion Researcher Korrah",
			"Desolace",
			38.8,
			27,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11268] = {
		{
			11268,
			"The Walking Dead",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24135,
			"Greatmother Ankha",
			"Howling Fjord",
			48.1,
			10.7,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11332] = {
		{
			11332,
			"Mission: Plague This!",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23749,
			"Captain Adams",
			"Howling Fjord",
			28.8,
			44.1,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11396] = {
		{
			11396,
			"Bring Down Those Shields",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23833,
			"Explorer Jaren",
			"Howling Fjord",
			24.2,
			32.5,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11460] = {
		{
			11460,
			"Trust is Earned",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24750,
			"Hidalgo the Master Falconer",
			"Howling Fjord",
			75.3,
			65,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14192] = {
		{
			14192,
			"Prismbreak",
			11,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			nil,
			nil,
			"Azshara",
			20.3,
			70.3,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28254] = {
		{
			28254,
			"A Needle in a Hellhole",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48109,
			"John J. Keeshan",
			"Burning Steppes",
			46.5,
			45.9,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11652] = {
		{
			11652,
			"The Plains of Nasam",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25329,
			"Gorge the Corpsegrinder",
			"Borean Tundra",
			32.2,
			54.1,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11716] = {
		{
			11716,
			"The Wondrous Bloodspore",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25381,
			"Bloodmage Laurith",
			"Borean Tundra",
			52.1,
			52.5,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27623] = {
		{
			27623,
			"Colossal Guardians",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			nil,
			nil,
			"Uldum",
			39.7,
			45.4,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[332] = {
		{
			332,
			"Wine Shop Advert",
			2,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			1432,
			"Renato Gallina",
			"Stormwind City",
			63.7,
			73.09999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11908] = {
		{
			11908,
			"Reference Material",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26084,
			"Jeremiah Hawning",
			"Borean Tundra",
			58.2,
			62.9,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11972] = {
		{
			11972,
			"Shards of Ahune",
			85,
			"Midsummer",
			1,
		},
		{
			99999,
		},
		{
			nil,
			nil,
			"Zangarmarsh",
			79.8,
			68.90000000000001,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12036] = {
		{
			12036,
			"From the Depths of Azjol-Nerub",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26415,
			"Senior Sergeant Juktok",
			"Dragonblight",
			36.6,
			46.6,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12100] = {
		{
			12100,
			"Containing the Rot",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26504,
			"Soar Hawkfury",
			"Dragonblight",
			37.1,
			48.6,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12164] = {
		{
			12164,
			"Hour of the Worg [Group]",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26935,
			"Sasha",
			"Grizzly Hills",
			64.90000000000001,
			43.4,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13936] = {
		{
			13936,
			"Tweedle's Dumb",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34359,
			"Captain Goggath",
			"Ashenvale",
			38.1,
			43.8,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24582] = {
		{
			24582,
			"Instructor Razuvious Must Die! [Raid]",
			80,
			"Naxxramas",
			5,
		},
		{
			1075,
		},
		{
			20735,
			"Archmage Lan'dalock",
			"Dalaran",
			57.5,
			67.09999999999999,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24710] = {
		{
			24710,
			"Deliverance from the Pit [Dungeon]",
			80,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			37591,
			"Martin Victus",
			"Pit of Saron",
			54.6,
			40,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27742] = {
		{
			27742,
			"A Little on the Side",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46513,
			"Initiate Goldmine",
			"Twilight Highlands",
			38.4,
			93.90000000000001,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24966] = {
		{
			24966,
			"Of Light and Shadows",
			3,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			2123,
			"Dark Cleric Duesten",
			"Tirisfal Glades",
			31.1,
			66.09999999999999,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25094] = {
		{
			25094,
			"Thunderdrome: Zumonga! [Group]",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39034,
			"Dr. Dealwell",
			"Tanaris",
			51.8,
			28,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25222] = {
		{
			25222,
			"Silver Tide Hollow",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39877,
			"Toshe Chaosrender",
			"Shimmering Expanse",
			55.6,
			12.5,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12676] = {
		{
			12676,
			"Sabotage",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28518,
			"Stefan Vadu",
			"Zul'Drak",
			26.1,
			48,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25478] = {
		{
			25478,
			"To the Summit",
			40,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40344,
			"Nyse",
			"Dustwallow Marsh",
			41.9,
			73.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12804] = {
		{
			12804,
			"A Steak Fit for a Hunter",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28046,
			"Korg the Cleaver",
			"Sholazar Basin",
			26.7,
			59.7,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25734] = {
		{
			25734,
			"Down In Thelgen Rock",
			21,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41129,
			"Surveyor Thurdan",
			"Wetlands",
			57.5,
			71.5,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25862] = {
		{
			25862,
			"Stolen Property",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41476,
			"Naz'jar Honor Guard",
			"Shimmering Expanse",
			46.3,
			78.59999999999999,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25990] = {
		{
			25990,
			"Breaking Through",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41531,
			"Earthmender Duarn",
			"Shimmering Expanse",
			51.7,
			52.2,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13060] = {
		{
			13060,
			"When All Else Fails",
			78,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29428,
			"Ricket",
			"The Storm Peaks",
			40.9,
			85.40000000000001,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13124] = {
		{
			13124,
			"The Struggle Persists [Dungeon]",
			80,
			"The Oculus",
			1,
		},
		{
			1050,
		},
		{
			26117,
			"Raelorasz",
			"Borean Tundra",
			33.3,
			34.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26374] = {
		{
			26374,
			"Ready the Ground Troops",
			84,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			42641,
			"Warlord Krogg",
			"Azshara",
			59.9,
			50.4,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26502] = {
		{
			26502,
			"Thunder Stones",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43160,
			"Earthbreaker Dolomite",
			"Deepholm",
			28.1,
			69.7,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26630] = {
		{
			26630,
			"Looks Like a Tauren Pirate to Me",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2487,
			"Fleet Master Seahorn",
			"The Cape of Stranglethorn",
			41.1,
			73.2,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13380] = {
		{
			13380,
			"Leading the Charge",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			32444,
			"Kibli Killohertz",
			"Icecrown",
			54,
			43,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26886] = {
		{
			26886,
			"Going Off-Task",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38704,
			"Kelsey Steelspark",
			"Tanaris",
			72.2,
			45.2,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27014] = {
		{
			27014,
			"Hallowed Note",
			3,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			44927,
			"Rohaku Stonehoof",
			"Mulgore",
			46.2,
			82.40000000000001,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13572] = {
		{
			13572,
			"Jadefire Braziers",
			19,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32968,
			"Gren Tornfur",
			"Darkshore",
			43.5,
			81,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27270] = {
		{
			27270,
			"An Audience with the Farseer",
			20,
			"Shaman",
			1,
		},
		{
			2008,
		},
		{
			23127,
			"Farseer Javad",
			"Ironforge",
			55.3,
			29.2,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27398] = {
		{
			27398,
			"The Battle Is Won, The War Goes On",
			82,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			40772,
			"Commander Jarod Shadowsong",
			"Mount Hyjal",
			72.09999999999999,
			73.90000000000001,
			606,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27526] = {
		{
			27526,
			"Gidwin's Fate Revealed",
			45,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45729,
			"Tarenar Sunstrike",
			"Eastern Plaguelands",
			27.6,
			21.3,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27654] = {
		{
			27654,
			"Bring the Hammer Down",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45796,
			"Master Mathias Shaw",
			"Twilight Highlands",
			36.4,
			66.09999999999999,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27782] = {
		{
			27782,
			"Mathias Needs You",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46243,
			"Initiate Goldmine",
			"Twilight Highlands",
			37.6,
			88.7,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27910] = {
		{
			27910,
			"Last Regrets",
			55,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			47041,
			"Neeka Bloodscar",
			"Swamp of Sorrows",
			21.2,
			51.7,
			38,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28038] = {
		{
			28038,
			"Blood in the Highlands",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46318,
			"Harkkan",
			"Twilight Highlands",
			54.9,
			43.6,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28166] = {
		{
			28166,
			"Thog's Nightlight",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47751,
			"Buunu",
			"Twilight Highlands",
			36.4,
			38,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28294] = {
		{
			28294,
			"The Kirthaven Summit",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48173,
			"Colin Thundermar",
			"Twilight Highlands",
			49,
			29.7,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28422] = {
		{
			28422,
			"The Sand, the Cider, and the Orb",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48559,
			"Ariok",
			"Burning Steppes",
			17.3,
			51.5,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14276] = {
		{
			14276,
			"Steady Shot",
			2,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35874,
			"Huntsman Blake",
			"Gilneas City",
			71.3,
			61.4,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28678] = {
		{
			28678,
			"Captain P. Harris",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48360,
			"3rd Officer Kronkar",
			"Tol Barad Peninsula",
			55.3,
			81.09999999999999,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14404] = {
		{
			14404,
			"[7] Not Quite Shipshape",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36456,
			"Sebastian Hayward",
			"Gilneas",
			37,
			84.09999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14468] = {
		{
			14468,
			"Another Warm Body",
			13,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36752,
			"Private Worcester",
			"Azshara",
			29.5,
			66.8,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27614] = {
		{
			27614,
			"Scarlet Salvage",
			42,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			16112,
			"Crusade Commander Korfax",
			"Eastern Plaguelands",
			75.5,
			76.2,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27486] = {
		{
			27486,
			"Warm Welcome",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48264,
			"Golluck Rockfist",
			"Twilight Highlands",
			44.1,
			10.5,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27358] = {
		{
			27358,
			"The Captive Bride",
			43,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			45278,
			"Freewind Brave",
			"Thousand Needles",
			37.8,
			26.7,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27230] = {
		{
			27230,
			"Weapons for War",
			50,
			"Stratholme",
			1,
		},
		{
			1013,
		},
		{
			45331,
			"Master Craftsman Wilhelm",
			"Stratholme",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9718] = {
		{
			9718,
			"As the Crow Flies",
			63,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17841,
			"Ysiel Windsinger",
			"Zangarmarsh",
			78.40000000000001,
			62.1,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13525] = {
		{
			13525,
			"What's Happening to the Blackwood Furbolg?",
			19,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33250,
			"Foriel Broadleaf",
			"Darkshore",
			45.2,
			75.09999999999999,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13424] = {
		{
			13424,
			"Back to the Pit",
			80,
			"The Storm Peaks",
			3,
		},
		{
			86,
		},
		{
			29796,
			"Gretta the Arbiter",
			"The Storm Peaks",
			50.9,
			65.59999999999999,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13333] = {
		{
			13333,
			"Capture More Dispatches",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			30344,
			"High Captain Justin Bartlett",
			"Icecrown",
			62.2,
			49,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13296] = {
		{
			13296,
			"Get to Ymirheim!",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30345,
			"Chief Engineer Boltwrench",
			"Icecrown",
			59.2,
			48.3,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13232] = {
		{
			13232,
			"Finish Me!",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			31304,
			"Dying Soldier",
			"Icecrown",
			69.5,
			67.3,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13168] = {
		{
			13168,
			"Parting Gifts",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30946,
			"Keritose Bloodblade",
			"Icecrown",
			44,
			24.6,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13104] = {
		{
			13104,
			"Once More Unto The Breach, Hero",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30677,
			"Highlord Tirion Fordring",
			"Icecrown",
			86,
			75.8,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13040] = {
		{
			13040,
			"Curing The Incurable",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30226,
			"Father Gustav",
			"Icecrown",
			86.8,
			76.59999999999999,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12976] = {
		{
			12976,
			"[80] A Monument to the Fallen",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30105,
			"King Jokkum",
			"The Storm Peaks",
			65.40000000000001,
			60.1,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25822] = {
		{
			25822,
			"Armaments for War",
			28,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41229,
			"Force Commander Valen",
			"Stonetalon Mountains",
			71.09999999999999,
			79.7,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12848] = {
		{
			12848,
			"The Endless Hunger",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28357,
			"Instructor Razuvious",
			"Plaguelands: The Scarlet Enclave",
			47.7,
			29.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12885] = {
		{
			12885,
			"The Exiles of Ulduar",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29579,
			"Brann Bronzebeard",
			"The Storm Peaks",
			37.5,
			46.7,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12720] = {
		{
			12720,
			"How To Win Friends And Influence Enemies",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28911,
			"Prince Keleseth",
			"Plaguelands: The Scarlet Enclave",
			54.3,
			57.5,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12629] = {
		{
			12629,
			"You Can Run, But You Can't Hide",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28518,
			"Stefan Vadu",
			"Zul'Drak",
			14.1,
			73.8,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12592] = {
		{
			12592,
			"The Great Hunter's Challenge",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28328,
			"Drostan",
			"Sholazar Basin",
			27.1,
			59.9,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12528] = {
		{
			12528,
			"Playing Along",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28095,
			"Tracker Gekgek",
			"Sholazar Basin",
			50.5,
			76.59999999999999,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12464] = {
		{
			12464,
			"[73] [73G3] My Old Enemy [Group]",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27784,
			"Commander Eligor Dawnbringer",
			"Dragonblight",
			76.7,
			47.3,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28807] = {
		{
			28807,
			"Expert Opinion",
			84,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			44293,
			"Anduin Wrynn",
			"Stormwind City",
			80.2,
			62.1,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10239] = {
		{
			10239,
			"Potential Energy Source",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19489,
			"Lieutenant-Sorcerer Morran",
			"Netherstorm",
			57.6,
			86.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12272] = {
		{
			12272,
			"[72] [72] The Bleeding Ore",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27159,
			"Siege Engineer Quarterflash",
			"Dragonblight",
			77.8,
			50.3,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28133] = {
		{
			28133,
			"Fury Unbound",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47417,
			"Zaela",
			"Twilight Highlands",
			54.4,
			43.9,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27621] = {
		{
			27621,
			"Firebeard's Patrol",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45172,
			"Thordun Hammerblow",
			"Twilight Highlands",
			79.2,
			78.3,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11637] = {
		{
			11637,
			"Kaganishu",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25425,
			"Farseer Grimwalker's Spirit",
			"Borean Tundra",
			56.2,
			9.1,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24455] = {
		{
			24455,
			"Rapid Deployment",
			16,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36749,
			"Commander Molotov",
			"Azshara",
			60.6,
			50.6,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24583] = {
		{
			24583,
			"Patchwerk Must Die! [Raid]",
			80,
			"Naxxramas",
			5,
		},
		{
			1075,
		},
		{
			20735,
			"Archmage Lan'dalock",
			"Dalaran",
			57.9,
			66.8,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24711] = {
		{
			24711,
			"Frostmourne [Dungeon]",
			80,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			38188,
			"Lady Jaina Proudmoore",
			"Pit of Saron",
			46.8,
			19.9,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8325] = {
		{
			8325,
			"Reclaiming Sunstrider Isle",
			1,
			"Sunstrider Isle",
			1,
		},
		{
			40,
		},
		{
			15278,
			"Magistrix Erona",
			"Eversong Woods",
			0,
			0,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24967] = {
		{
			24967,
			"Stab!",
			3,
			"Rogue",
			1,
		},
		{
			2007,
		},
		{
			2122,
			"David Trias",
			"Tirisfal Glades",
			32.6,
			65.59999999999999,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25095] = {
		{
			25095,
			"Thunderdrome: Sarinexx! [Group]",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39034,
			"Dr. Dealwell",
			"Tanaris",
			51.8,
			28,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25223] = {
		{
			25223,
			"Trial By Fire",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39442,
			"Condenna the Pitiless",
			"Mount Hyjal",
			76.90000000000001,
			62.1,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14388] = {
		{
			14388,
			"Azsharite Experiment Number Two",
			14,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36077,
			"Assistant Greely",
			"Azshara",
			50.3,
			74.3,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25479] = {
		{
			25479,
			"To New Thalanaar",
			40,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			40345,
			"Thyssiana",
			"Dustwallow Marsh",
			41.8,
			73.90000000000001,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25607] = {
		{
			25607,
			"Ze Gnomecorder",
			25,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			40895,
			"Professor Xakxak Gyromate",
			"Ashenvale",
			35.4,
			71.2,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25735] = {
		{
			25735,
			"Incendicite Ore",
			21,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41128,
			"Dunlor Marblebeard",
			"Wetlands",
			57.8,
			71.5,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25863] = {
		{
			25863,
			"Chosen Burden",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			nil,
			nil,
			"Shimmering Expanse",
			57.2,
			89.90000000000001,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25991] = {
		{
			25991,
			"We Are Not Alone",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41531,
			"Earthmender Duarn",
			"Shimmering Expanse",
			51.6,
			52.3,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9397] = {
		{
			9397,
			"Birds of a Feather",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16790,
			"Falconer Drenna Riverwind",
			"Hellfire Peninsula",
			27.7,
			60.4,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26247] = {
		{
			26247,
			"Diplomacy First",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43065,
			"Maruut Stonebinder",
			"Deepholm",
			49.6,
			53,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26375] = {
		{
			26375,
			"Loose Stones",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42899,
			"Quartz Stonetender",
			"Deepholm",
			56.5,
			40.9,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26503] = {
		{
			26503,
			"Still Assessing the Threat",
			15,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			464,
			"Watch Captain Parker",
			"Redridge Mountains",
			15.3,
			64.7,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26631] = {
		{
			26631,
			"Your First Day as a Pirate",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43504,
			"Yancey Grillsen",
			"The Cape of Stranglethorn",
			43.9,
			56.4,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14292] = {
		{
			14292,
			"The Enemy of Our Enemy",
			32,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35773,
			"Cenarion Researcher Korrah",
			"Desolace",
			38.9,
			27.1,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26887] = {
		{
			26887,
			"Filling Our Pockets",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38704,
			"Kelsey Steelspark",
			"Tanaris",
			72.09999999999999,
			45.4,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27015] = {
		{
			27015,
			"Consecrated Note",
			3,
			"Paladin",
			1,
		},
		{
			2005,
		},
		{
			44927,
			"Rohaku Stonehoof",
			"Mulgore",
			46.2,
			82.5,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27143] = {
		{
			27143,
			"Barov Family Fortune [Dungeon]",
			43,
			"Scholomance",
			1,
		},
		{
			1011,
		},
		{
			45109,
			"Weldon Barov",
			"Scholomance",
			29.4,
			33.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27271] = {
		{
			27271,
			"Journey to the Wizard's Sanctum",
			20,
			"Mage",
			1,
		},
		{
			2004,
		},
		{
			16749,
			"Edirah",
			"The Exodar",
			46.8,
			62.3,
			471,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27399] = {
		{
			27399,
			"The Battle Is Won, The War Goes On",
			82,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			40772,
			"Commander Jarod Shadowsong",
			"Mount Hyjal",
			72.09999999999999,
			74.09999999999999,
			606,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27527] = {
		{
			27527,
			"Journey's End",
			45,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45730,
			"Gidwin Goldbraids",
			"Eastern Plaguelands",
			28.4,
			26,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27655] = {
		{
			27655,
			"Bring the Hammer Down",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45675,
			"Garona Halforcen",
			"Twilight Highlands",
			36.4,
			66.09999999999999,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27783] = {
		{
			27783,
			"Garona Needs You",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46243,
			"Initiate Goldmine",
			"Twilight Highlands",
			37.6,
			88.7,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27911] = {
		{
			27911,
			"With Dying Breath",
			55,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			47041,
			"Neeka Bloodscar",
			"Swamp of Sorrows",
			21.2,
			51.9,
			38,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9925] = {
		{
			9925,
			"Matters of Security",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18276,
			"Zerid",
			"Nagrand",
			30.8,
			58.2,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28167] = {
		{
			28167,
			"Report to Carvo Blastbolt",
			1,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			45966,
			"Nevin Twistwrench",
			"Dun Morogh",
			25.8,
			31.9,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28295] = {
		{
			28295,
			"Meetup with the Caravan",
			83,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			44238,
			"Harrison Jones",
			"Stormwind City",
			85.7,
			25.9,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28423] = {
		{
			28423,
			"Warlocks Have the Neatest Stuff",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			14437,
			"Gorzeeki Wildeyes",
			"Burning Steppes",
			0,
			0,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28551] = {
		{
			28551,
			"Hero's Call: Southern Barrens!",
			30,
			"Southern Barrens",
			4,
		},
		{
			20,
		},
		{
			nil,
			nil,
			"Stormwind City",
			62.9,
			71.7,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28679] = {
		{
			28679,
			"Rattling Their Cages",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48360,
			"3rd Officer Kronkar",
			"Tol Barad Peninsula",
			55.3,
			81.2,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10309] = {
		{
			10309,
			"It's a Fel Reaver, But with Heart [Group]",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19690,
			"N. D. Meancamp",
			"Netherstorm",
			26.9,
			77,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24584] = {
		{
			24584,
			"Malygos Must Die! [Raid]",
			80,
			"The Eye of Eternity",
			5,
		},
		{
			1082,
		},
		{
			nil,
			nil,
			"Stormwind City",
			27.3,
			25.7,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10437] = {
		{
			10437,
			"Recipe for Destruction",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20907,
			"Professor Dabiri",
			"Netherstorm",
			60.1,
			31.8,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25352] = {
		{
			25352,
			"Sweeping the Shelf",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39433,
			"Ian Duran",
			"Mount Hyjal",
			28.2,
			29.9,
			606,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10565] = {
		{
			10565,
			"The Stones of Vekh'nir",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21496,
			"Dertrok",
			"Blade's Edge Mountains",
			75.2,
			62.1,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10629] = {
		{
			10629,
			"Shizz Work",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16915,
			"Foreman Razelcraz",
			"Hellfire Peninsula",
			51.4,
			30.5,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26120] = {
		{
			26120,
			"The Crazed Dragonmaw",
			25,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41612,
			"Huntress Iczelia",
			"Wetlands",
			56.4,
			39.7,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26632] = {
		{
			26632,
			"Close Escort",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			45043,
			"Peak Grindstone",
			"Deepholm",
			20.7,
			61.6,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10821] = {
		{
			10821,
			"You're Fired! [Group]",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			nil,
			nil,
			"Blade's Edge Mountains",
			73.3,
			40.1,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10885] = {
		{
			10885,
			"Trial of the Naaru: Strength [Heroic]",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			18481,
			"A'dal",
			"Shattrath City",
			54,
			45.2,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9813] = {
		{
			9813,
			"Meeting the Warchief",
			21,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			10181,
			"Lady Sylvanas Windrunner",
			"Undercity",
			57.7,
			91.90000000000001,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11013] = {
		{
			11013,
			"In Service of the Illidari",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22113,
			"Mordenai",
			"Shadowmoon Valley",
			59.4,
			58.7,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11077] = {
		{
			11077,
			"Dragons are the Least of Our Problems",
			70,
			"Shadowmoon Valley",
			3,
		},
		{
			73,
		},
		{
			23376,
			"Dragonmaw Foreman",
			"Shadowmoon Valley",
			64.3,
			86.7,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13507] = {
		{
			13507,
			"Denying Manpower",
			13,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32965,
			"Sentinel Tysha Moonblade",
			"Darkshore",
			58.9,
			19.4,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13765] = {
		{
			13765,
			"A Valiant's Field Training",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33405,
			"Akinos",
			"Icecrown",
			0,
			0,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11269] = {
		{
			11269,
			"Down to the Wire",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24139,
			"Gil Grisert",
			"Howling Fjord",
			62.5,
			16.8,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11333] = {
		{
			11333,
			"Into the World of Spirits",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23975,
			"Thoralius the Wise",
			"Howling Fjord",
			59.8,
			61.6,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11397] = {
		{
			11397,
			"And You Thought Murlocs Smelled Bad!",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24359,
			"Apothecary Anastasia",
			"Howling Fjord",
			26,
			24.7,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9156] = {
		{
			9156,
			"Wanted: Knucklerot and Luzran [Group]",
			21,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16224,
			"Rathis Tomber",
			"Ghostlands",
			48.3,
			31.7,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11525] = {
		{
			11525,
			"Further Conversions",
			70,
			"Isle of Quel'Danas",
			3,
		},
		{
			44,
		},
		{
			24965,
			"Vindicator Xayann",
			"Isle of Quel'Danas",
			47.2,
			30.7,
			499,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9557] = {
		{
			9557,
			"Deciphering the Book",
			16,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			nil,
			nil,
			"Bloodmyst Isle",
			61.2,
			41.8,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11653] = {
		{
			11653,
			"[71] [71] Hah... You're Not So Big Now!",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25477,
			"Crafty Wobblesprocket",
			"Borean Tundra",
			57.6,
			18.9,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11717] = {
		{
			11717,
			"Pollen from the Source",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25381,
			"Bloodmage Laurith",
			"Borean Tundra",
			52.1,
			52.4,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13556] = {
		{
			13556,
			"Eggs for Dubra'Jin",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			33025,
			"Ha'wana",
			"Zul'Drak",
			70.09999999999999,
			21,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25216] = {
		{
			25216,
			"The Great Sambino",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39876,
			"Felora Firewreath",
			"Shimmering Expanse",
			49.5,
			42.4,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11909] = {
		{
			11909,
			"Defeat the Gearmaster",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25602,
			"Greatmother Taiga",
			"Borean Tundra",
			77.3,
			37,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11973] = {
		{
			11973,
			"Prisoner of War [Dungeon]",
			71,
			"The Nexus",
			1,
		},
		{
			1049,
		},
		{
			26117,
			"Raelorasz",
			"Borean Tundra",
			33.3,
			34.5,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12037] = {
		{
			12037,
			"Search and Rescue [Dungeon]",
			74,
			"Drak'Tharon Keep",
			1,
		},
		{
			1044,
		},
		{
			26604,
			"Mack Fearsen",
			"Grizzly Hills",
			16.6,
			48.3,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12101] = {
		{
			12101,
			"The Good Doctor...",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26504,
			"Soar Hawkfury",
			"Dragonblight",
			37.1,
			48.6,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12165] = {
		{
			12165,
			"An Intriguing Plan",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27221,
			"Tormak the Scarred",
			"Grizzly Hills",
			65.3,
			47.5,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24456] = {
		{
			24456,
			"Thunderhorn Cleansing",
			8,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			2948,
			"Mull Thunderhorn",
			"Mulgore",
			48.5,
			59.8,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12293] = {
		{
			12293,
			"Close the Deal",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26875,
			"Lieutenant Dumont",
			"Grizzly Hills",
			31.8,
			60.2,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24712] = {
		{
			24712,
			"Deliverance from the Pit [Dungeon]",
			80,
			"Pit of Saron",
			1,
		},
		{
			1047,
		},
		{
			37592,
			"Gorkun Ironskull",
			"Pit of Saron",
			65.5,
			54.8,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12852] = {
		{
			12852,
			"The Admiral Revealed [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29560,
			"Lord-Commander Arete",
			"Icecrown",
			9.6,
			46.5,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24968] = {
		{
			24968,
			"Dark Deeds",
			3,
			"Warlock",
			1,
		},
		{
			2009,
		},
		{
			2126,
			"Maximillion",
			"Tirisfal Glades",
			30.9,
			66.3,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12549] = {
		{
			12549,
			"Dreadsaber Mastery: Becoming a Predator",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28031,
			"Buck Cantwell",
			"Sholazar Basin",
			26.7,
			59.1,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25224] = {
		{
			25224,
			"In Bloom",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39442,
			"Condenna the Pitiless",
			"Mount Hyjal",
			76.90000000000001,
			62.1,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12677] = {
		{
			12677,
			"Hazardous Materials",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28518,
			"Stefan Vadu",
			"Zul'Drak",
			26.1,
			48,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12741] = {
		{
			12741,
			"Strength of the Tempest",
			80,
			"Sholazar Basin",
			3,
		},
		{
			85,
		},
		{
			29043,
			"Rejek",
			"Sholazar Basin",
			55.7,
			69.5,
			493,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25608] = {
		{
			25608,
			"Slash and Burn",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40772,
			"Commander Jarod Shadowsong",
			"Mount Hyjal",
			72.2,
			74.59999999999999,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25736] = {
		{
			25736,
			"The Floodsurge Core",
			20,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			nil,
			nil,
			"Wetlands",
			47.5,
			65.90000000000001,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25864] = {
		{
			25864,
			"Dinosaur Crisis",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41415,
			"Shilah Slabchisel",
			"Wetlands",
			26.9,
			26.1,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25992] = {
		{
			25992,
			"Hopelessly Gearless",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41811,
			"Captain Vilethorn",
			"Shimmering Expanse",
			60.2,
			63.6,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13061] = {
		{
			13061,
			"[79] Prepare for Glory",
			79,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29839,
			"Astrid Bjornrittar",
			"The Storm Peaks",
			49.8,
			71.90000000000001,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26248] = {
		{
			26248,
			"All Our Friends Are Dead",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42684,
			"Stormcaller Mylra",
			"Deepholm",
			62.3,
			50.9,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26376] = {
		{
			26376,
			"Hatred Runs Deep",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42467,
			"Diamant the Patient",
			"Deepholm",
			56.5,
			42.7,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26504] = {
		{
			26504,
			"Wanted: Redridge Gnolls",
			15,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			nil,
			nil,
			"Redridge Mountains",
			16.1,
			64.59999999999999,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[1665] = {
		{
			1665,
			"Bartleby's Mug",
			18,
			"Warrior",
			1,
		},
		{
			2010,
		},
		{
			6090,
			"Bartleby",
			"Stormwind City",
			75.8,
			52.9,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26760] = {
		{
			26760,
			"Cry For The Moon",
			24,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			nil,
			nil,
			"Duskwood",
			18.4,
			57.6,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26888] = {
		{
			26888,
			"Nightmare of the Deeps [Dungeon]",
			27,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			12736,
			"Je'neu Sancrea",
			"Blackfathom Deeps",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27016] = {
		{
			27016,
			"The Joy of Boar Hunting",
			16,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1187,
			"Daryl the Youngling",
			"Loch Modan",
			83.40000000000001,
			65.3,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27144] = {
		{
			27144,
			"The Reckoning",
			40,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			nil,
			nil,
			"Western Plaguelands",
			49,
			63.7,
			22,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[208] = {
		{
			208,
			"Big Game Hunter",
			29,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			715,
			"Hemet Nesingwary Jr.",
			"Northern Stranglethorn",
			44,
			23.2,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27400] = {
		{
			27400,
			"Mastering the Arcane [Dungeon]",
			20,
			"Mage",
			1,
		},
		{
			2004,
		},
		{
			47246,
			"Ureda",
			"Orgrimmar",
			48.5,
			62.7,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27528] = {
		{
			27528,
			"Scourged Mass",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45831,
			"Crusader Kevin Frost",
			"Eastern Plaguelands",
			27.6,
			21,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27656] = {
		{
			27656,
			"Croc-Out",
			52,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			45786,
			"Trade Baron Silversnap",
			"Swamp of Sorrows",
			73.09999999999999,
			14.8,
			38,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27784] = {
		{
			27784,
			"The Hammer of Twilight",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45796,
			"Master Mathias Shaw",
			"Twilight Highlands",
			36.3,
			66.09999999999999,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27912] = {
		{
			27912,
			"The Titans' Trove",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			nil,
			nil,
			"Badlands",
			50.5,
			51.8,
			17,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14021] = {
		{
			14021,
			"Miner Troubles",
			6,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			35769,
			"Foreman Dampwick",
			"The Lost Isles",
			31.2,
			79.3,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28168] = {
		{
			28168,
			"Trouble at the Sludge Fields",
			21,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			47554,
			"Captain Keyton",
			"Hillsbrad Foothills",
			33.3,
			73.5,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28296] = {
		{
			28296,
			"Meetup with the Caravan",
			83,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			47571,
			"Belloc Brightblade",
			"Orgrimmar",
			49,
			70.59999999999999,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28424] = {
		{
			28424,
			"Shadow Boxing",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			14437,
			"Gorzeeki Wildeyes",
			"Burning Steppes",
			8.4,
			35.7,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28552] = {
		{
			28552,
			"Hero's Call: Dustwallow Marsh!",
			35,
			"Southern Barrens",
			4,
		},
		{
			20,
		},
		{
			nil,
			nil,
			"Stormwind City",
			62.9,
			71.5,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14341] = {
		{
			14341,
			"Smeed's Harnesses",
			32,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			11259,
			"Nataka Longhorn",
			"Desolace",
			55.4,
			55.7,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14405] = {
		{
			14405,
			"[7] Escape By Sea",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36456,
			"Sebastian Hayward",
			"Gilneas",
			36.9,
			84.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14469] = {
		{
			14469,
			"Hand-me-downs",
			13,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36749,
			"Commander Molotov",
			"Azshara",
			29.4,
			57.8,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12930] = {
		{
			12930,
			"Rare Earth",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29801,
			"Bouldercrag the Rockshaper",
			"The Storm Peaks",
			31.4,
			38,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10243] = {
		{
			10243,
			"Naaru Technology",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19467,
			"Anchorite Karja",
			"Netherstorm",
			32,
			64.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13076] = {
		{
			13076,
			"Time Yet Remains",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30562,
			"Crusader Bridenbrad",
			"Icecrown",
			79.90000000000001,
			30.9,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13044] = {
		{
			13044,
			"If There Are Survivors...",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30223,
			"Crusade Commander Entari",
			"Icecrown",
			87.09999999999999,
			75.90000000000001,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12290] = {
		{
			12290,
			"The Murkweed Elixir",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27347,
			"Orik Trueheart",
			"Dragonblight",
			87.09999999999999,
			57.4,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12916] = {
		{
			12916,
			"Our Only Hope",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			29688,
			"Engineer Reed",
			"Zul'Drak",
			25.3,
			63.9,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12756] = {
		{
			12756,
			"The Scarlet Onslaught Emerges",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			29077,
			"High General Abbendis",
			"Plaguelands: The Scarlet Enclave",
			65.59999999999999,
			83.90000000000001,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[197] = {
		{
			197,
			"Raptor Mastery",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			715,
			"Hemet Nesingwary Jr.",
			"Northern Stranglethorn",
			44.1,
			23.2,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12532] = {
		{
			12532,
			"Flown the Coop!",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28138,
			"Elder Harkek",
			"Sholazar Basin",
			55.5,
			69.59999999999999,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12468] = {
		{
			12468,
			"The Conqueror's Task",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26860,
			"Conqueror Krenna",
			"Grizzly Hills",
			20.7,
			64.2,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27126] = {
		{
			27126,
			"Rush Delivery",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43169,
			"Clay Mudaxle",
			"Deepholm",
			24.7,
			62.2,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10288] = {
		{
			10288,
			"Arrival in Outland",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19229,
			"Commander Duron",
			"Hellfire Peninsula",
			87.40000000000001,
			50.7,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28637] = {
		{
			28637,
			"A Taste for Bear",
			53,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			49436,
			"Francis Morcott",
			"Winterspring",
			55.9,
			28.2,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10160] = {
		{
			10160,
			"Know your Enemy",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16819,
			"Force Commander Danath Trollbane",
			"Hellfire Peninsula",
			56.6,
			66.59999999999999,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10096] = {
		{
			10096,
			"Saving the Sporeloks",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17909,
			"Lauranna Thar'well",
			"Zangarmarsh",
			80.40000000000001,
			64.2,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[186] = {
		{
			186,
			"Tiger Stalking",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			nil,
			nil,
			"Northern Stranglethorn",
			42.6,
			27.4,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9968] = {
		{
			9968,
			"Strange Energy",
			63,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18446,
			"Earthbinder Tavgren",
			"Terokkar Forest",
			44.3,
			26.3,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9904] = {
		{
			9904,
			"Pursuing Terrorclaw",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18018,
			"Zurjaya",
			"Zangarmarsh",
			32.3,
			49.5,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13182] = {
		{
			13182,
			"[74] [74D] Don't Forget the Eggs! [Dungeon]",
			74,
			"Azjol-Nerub",
			1,
		},
		{
			1040,
		},
		{
			26653,
			"Kilix the Unraveler",
			"Dragonblight",
			26.2,
			50.7,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10228] = {
		{
			10228,
			"[67] Ezekiel",
			67,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			19417,
			"Ramdor the Mad",
			"Terokkar Forest",
			35.2,
			66.2,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[7907] = {
		{
			7907,
			"Darkmoon Beast Deck",
			80,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			45661,
			"Zerit",
			"Orgrimmar",
			38.3,
			78.59999999999999,
			321,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28789] = {
		{
			28789,
			"Join the Battle!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			911,
			"Llane Beshere",
			"Elwynn Forest",
			50.2,
			42.2,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27485] = {
		{
			27485,
			"Warm Welcome",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48265,
			"Lauriel Trueblade",
			"Twilight Highlands",
			44,
			10.6,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9584] = {
		{
			9584,
			"The Second Sample",
			14,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17423,
			"Harbinger Mikolaas",
			"Bloodmyst Isle",
			52.7,
			53.3,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10004] = {
		{
			10004,
			"Patience and Understanding [Group]",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18417,
			"Altruis the Sufferer",
			"Nagrand",
			27.3,
			43,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9456] = {
		{
			9456,
			"Nightstalker Clean Up, Isle 2...",
			8,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17116,
			"Exarch Menelaous",
			"Azuremyst Isle",
			47.2,
			50.6,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13971] = {
		{
			13971,
			"The Kodo's Return",
			12,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			nil,
			nil,
			"Northern Barrens",
			58.1,
			49.2,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26845] = {
		{
			26845,
			"Who's In Charge Here?",
			13,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1343,
			"Mountaineer Stormpike",
			"Loch Modan",
			25.5,
			17.9,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24457] = {
		{
			24457,
			"Rite of Vision",
			6,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			2948,
			"Mull Thunderhorn",
			"Mulgore",
			48.6,
			59.7,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24585] = {
		{
			24585,
			"Flame Leviathan Must Die! [Raid]",
			80,
			"Ulduar",
			5,
		},
		{
			1084,
		},
		{
			20735,
			"Archmage Lan'dalock",
			"Dalaran",
			68.0,
			65.4,
			504,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24713] = {
		{
			24713,
			"Frostmourne [Dungeon]",
			80,
			"Halls of Reflection",
			1,
		},
		{
			1046,
		},
		{
			38189,
			"Lady Sylvanas Windrunner",
			"Pit of Saron",
			47.4,
			19.4,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[8326] = {
		{
			8326,
			"Unfortunate Measures",
			3,
			"Sunstrider Isle",
			1,
		},
		{
			40,
		},
		{
			15278,
			"Magistrix Erona",
			"Eversong Woods",
			38,
			21,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9748] = {
		{
			9748,
			"Don't Drink the Water",
			18,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17844,
			"Vindicator Aesom",
			"Bloodmyst Isle",
			55.6,
			55.3,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[2158] = {
		{
			2158,
			"Rest and Relaxation",
			5,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			6774,
			"Falkhaan Isenstrider",
			"Elwynn Forest",
			45.6,
			47.8,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26230] = {
		{
			26230,
			"Feast or Famine",
			12,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			42497,
			"Mama Celeste",
			"Westfall",
			49.5,
			19.2,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25353] = {
		{
			25353,
			"Lightning in a Bottle",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39433,
			"Ian Duran",
			"Mount Hyjal",
			28.2,
			29.9,
			606,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25481] = {
		{
			25481,
			"To New Thalanaar",
			40,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			40369,
			"Falfindel Waywarder",
			"Feralas",
			77.2,
			56.5,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25609] = {
		{
			25609,
			"Sunken Treasure",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40885,
			"Wizzle Brassbolts",
			"Thousand Needles",
			91.59999999999999,
			78.59999999999999,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9588] = {
		{
			9588,
			"Dark Tidings [Dungeon]",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			nil,
			nil,
			"Hellfire Ramparts",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25865] = {
		{
			25865,
			"The Mosshide Job",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41415,
			"Shilah Slabchisel",
			"Wetlands",
			27,
			26.1,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25993] = {
		{
			25993,
			"Body Blows",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41810,
			"Legionnaire Nazgrim",
			"Shimmering Expanse",
			60.2,
			63.7,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9524] = {
		{
			9524,
			"Imprisoned in the Citadel [Heroic]",
			70,
			"Hellfire Citadel",
			1,
		},
		{
			99999,
		},
		{
			17288,
			"Randy Whizzlesprocket",
			"The Shattered Halls",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26249] = {
		{
			26249,
			"The Admiral's Cabin",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42684,
			"Stormcaller Mylra",
			"Deepholm",
			62.4,
			50.1,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26377] = {
		{
			26377,
			"Unsolid Ground",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42467,
			"Diamant the Patient",
			"Deepholm",
			56.5,
			42.7,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9158] = {
		{
			9158,
			"Bearers of the Plague",
			14,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16202,
			"Farstrider Sedina",
			"Ghostlands",
			72.5,
			32.1,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26633] = {
		{
			26633,
			"Swabbing Duty",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2548,
			"Captain Keelhaul",
			"The Cape of Stranglethorn",
			44.4,
			91.59999999999999,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26761] = {
		{
			26761,
			"Threat to the Kingdom",
			15,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			234,
			"Marshal Gryan Stoutmantle",
			"Westfall",
			56.4,
			49.6,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26889] = {
		{
			26889,
			"All Cheered Out",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38704,
			"Kelsey Steelspark",
			"Tanaris",
			72.09999999999999,
			45.2,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27017] = {
		{
			27017,
			"Memories from a Lost Past",
			38,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44458,
			"Del Gahrron",
			"Western Plaguelands",
			50.6,
			52.5,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27145] = {
		{
			27145,
			"Plagued Hatchlings...For Now [Dungeon]",
			42,
			"Scholomance",
			1,
		},
		{
			1011,
		},
		{
			45109,
			"Weldon Barov",
			"Scholomance",
			29.4,
			33.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9542] = {
		{
			9542,
			"Totem of Vark",
			10,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17363,
			"Totem of Yor",
			"Azuremyst Isle",
			63.1,
			67.7,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9606] = {
		{
			9606,
			"Return to Caregiver Chellan",
			7,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17555,
			"Stephanos",
			"The Exodar",
			54.3,
			36.4,
			471,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9670] = {
		{
			9670,
			"They're Alive! Maybe...",
			19,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17686,
			"Researcher Cornelius",
			"Bloodmyst Isle",
			24.8,
			34.5,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27657] = {
		{
			27657,
			"Help from the Earthcaller",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45796,
			"Master Mathias Shaw",
			"Twilight Highlands",
			36.4,
			66.09999999999999,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9798] = {
		{
			9798,
			"Blood Elf Plans",
			5,
			"Ammen Vale",
			1,
		},
		{
			5,
		},
		{
			nil,
			nil,
			"Azuremyst Isle",
			69.2,
			65.7,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9862] = {
		{
			9862,
			"Murkblood Corrupters",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18074,
			"Elementalist Morgh",
			"Nagrand",
			60.5,
			22.4,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28041] = {
		{
			28041,
			"Bait and Throttle",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46313,
			"Narkrall Rakeclaw",
			"Twilight Highlands",
			54.8,
			44.1,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9990] = {
		{
			9990,
			"Investigate Tuurem",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18484,
			"Wind Trader Lathrai",
			"Shattrath City",
			72.2,
			30.8,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28297] = {
		{
			28297,
			"Meet with Ormak Grimshot",
			50,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			39116,
			"Apolos",
			"Undercity",
			49.6,
			29.1,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10118] = {
		{
			10118,
			"Message to the Daggerfen",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18013,
			"Shadow Hunter Denjai",
			"Zangarmarsh",
			30.7,
			50.9,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10182] = {
		{
			10182,
			"Battle-Mage Dathric",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			nil,
			nil,
			"Netherstorm",
			60.5,
			87.7,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10246] = {
		{
			10246,
			"Attack on Manaforge Coruu",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19466,
			"Exarch Orelis",
			"Netherstorm",
			32,
			64.2,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10310] = {
		{
			10310,
			"Sabotage the Warp-Gate! [Group]",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20281,
			"Drijya",
			"Netherstorm",
			48.1,
			63.4,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13587] = {
		{
			13587,
			"The Waking Nightmare",
			17,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33166,
			"Thessera",
			"Darkshore",
			49.2,
			56.8,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10438] = {
		{
			10438,
			"[70] On Nethery Wings",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20907,
			"Professor Dabiri",
			"Netherstorm",
			60.1,
			31.8,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10502] = {
		{
			10502,
			"The Bloodmaul Ogres",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21158,
			"Commander Skyshadow",
			"Blade's Edge Mountains",
			36.3,
			66.3,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10566] = {
		{
			10566,
			"Trial and Error",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21496,
			"Dertrok",
			"Blade's Edge Mountains",
			75.2,
			62.1,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10630] = {
		{
			10630,
			"Beneath Thrallmar",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16915,
			"Foreman Razelcraz",
			"Hellfire Peninsula",
			51.3,
			30.5,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28658] = {
		{
			28658,
			"Swamp Bait",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48069,
			"Commander Zanoth",
			"Tol Barad",
			50.8,
			49.9,
			708,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9396] = {
		{
			9396,
			"Magic of the Arakkoa",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16792,
			"Arcanist Calesthris Dawnstar",
			"Hellfire Peninsula",
			27,
			59.7,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13395] = {
		{
			13395,
			"Army of the Damned",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			32404,
			"Matthias Lehner",
			"Icecrown",
			64.5,
			44.1,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10886] = {
		{
			10886,
			"Trial of the Naaru: Tenacity [Heroic]",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			18481,
			"A'dal",
			"Shattrath City",
			54.2,
			44.3,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10174] = {
		{
			10174,
			"Curse of the Violet Tower",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19217,
			"Ravandwyr",
			"Netherstorm",
			31.4,
			66.09999999999999,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11014] = {
		{
			11014,
			"Enter the Taskmaster",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23139,
			"Overlord Mor'ghor",
			"Shadowmoon Valley",
			66.2,
			85.7,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11078] = {
		{
			11078,
			"To Rule The Skies [Group]",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			23334,
			"Sky Commander Keller",
			"Blade's Edge Mountains",
			27.5,
			52.7,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13331] = {
		{
			13331,
			"",
			0,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			30824,
			"Sky-Reaver Korm Blackscar",
			"Icecrown",
			64.90000000000001,
			47.4,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10110] = {
		{
			10110,
			"Hellfire Fortifications [PvP]",
			60,
			"Hellfire Peninsula",
			3,
		},
		{
			70,
		},
		{
			18267,
			"Battlecryer Blackeye",
			"Hellfire Peninsula",
			55.9,
			39.2,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11270] = {
		{
			11270,
			"War is Hell",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23780,
			"High Executor Anselm",
			"Howling Fjord",
			78.59999999999999,
			31.2,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[88] = {
		{
			88,
			"Princess Must Die!",
			9,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			244,
			"Ma Stonefield",
			"Elwynn Forest",
			34.7,
			84.40000000000001,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11398] = {
		{
			11398,
			"It's a Scourge Device",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			nil,
			nil,
			"Howling Fjord",
			22.9,
			21.9,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12483] = {
		{
			12483,
			"Shimmercap Stew",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26519,
			"Prigmon",
			"Grizzly Hills",
			15.8,
			46.8,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11526] = {
		{
			11526,
			"The Missing Magistrix",
			70,
			"Isle of Quel'Danas",
			1,
		},
		{
			44,
		},
		{
			24967,
			"Captain Theris Dawnhearth",
			"Isle of Quel'Danas",
			47.4,
			30.6,
			499,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11590] = {
		{
			11590,
			"Abduction",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25262,
			"Librarian Donathan",
			"Borean Tundra",
			45.3,
			33.3,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11654] = {
		{
			11654,
			"The Spire of Blood",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			nil,
			nil,
			"Borean Tundra",
			87.3,
			21.4,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11718] = {
		{
			11718,
			"A Bot in Mammoth's Clothing",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25780,
			"Abner Fizzletorque",
			"Borean Tundra",
			57.1,
			20.1,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13949] = {
		{
			13949,
			"Crossroads Caravan Pickup",
			12,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34258,
			"Halga Bloodeye",
			"Northern Barrens",
			67.5,
			38.8,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13885] = {
		{
			13885,
			"In Defense of Darkshore",
			19,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			34301,
			"Kathrena Winterwisp",
			"Darkshore",
			45.2,
			74.7,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11910] = {
		{
			11910,
			"Secrets of the Ancients",
			71,
			"Coldarra",
			1,
		},
		{
			77,
		},
		{
			25314,
			"Archmage Berinand",
			"Borean Tundra",
			32.9,
			34.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[84] = {
		{
			84,
			"Back to Billy",
			6,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			246,
			"\"Auntie\" Bernice Stonefield",
			"Elwynn Forest",
			34.5,
			84.3,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12038] = {
		{
			12038,
			"Seared Scourge",
			72,
			"Grizzly Hills",
			3,
		},
		{
			81,
		},
		{
			26604,
			"Mack Fearsen",
			"Grizzly Hills",
			16.7,
			48.2,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12102] = {
		{
			12102,
			"In Search of the Ruby Lilac",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26505,
			"Doctor Sintar Malefious",
			"Dragonblight",
			36.1,
			48.8,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12166] = {
		{
			12166,
			"[72] [72] The Liquid Fire of Elune",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26973,
			"Warden Jodi Moonsong ",
			"Dragonblight",
			29.2,
			55.6,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12230] = {
		{
			12230,
			"Stealing from the Siegesmiths",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27320,
			"Deathguard Molder",
			"Dragonblight",
			76.90000000000001,
			62.4,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12294] = {
		{
			12294,
			"A Tentative Pact",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27469,
			"Ivan",
			"Grizzly Hills",
			34.8,
			55.5,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[3090] = {
		{
			3090,
			"Tainted Parchment",
			3,
			"Warlock",
			1,
		},
		{
			2009,
		},
		{
			3143,
			"Gornek",
			"Durotar",
			43.3,
			68.2,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12422] = {
		{
			12422,
			"Tactical Clemency",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27102,
			"Gorgonna",
			"Grizzly Hills",
			20.9,
			64.09999999999999,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12486] = {
		{
			12486,
			"To Bor'gorok Outpost, Quickly!",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25272,
			"Sauranok the Mystic",
			"Borean Tundra",
			41.2,
			53.5,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12550] = {
		{
			12550,
			"Dreadsaber Mastery: Stalking the Prey",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28031,
			"Buck Cantwell",
			"Sholazar Basin",
			26.7,
			59.1,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12614] = {
		{
			12614,
			"Post-partum Aggression",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28376,
			"Dorian Drakestalker",
			"Sholazar Basin",
			42.3,
			28.8,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12678] = {
		{
			12678,
			"If Chaos Drives, Let Suffering Hold The Reins",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28377,
			"Prince Valanar",
			"Plaguelands: The Scarlet Enclave",
			52.3,
			34,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12742] = {
		{
			12742,
			"A Special Surprise",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			29053,
			"Knight Commander Plaguefist",
			"Plaguelands: The Scarlet Enclave",
			53,
			81.90000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12806] = {
		{
			12806,
			"[80] To the Rise with all Due Haste!",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29343,
			"Baron Sliver",
			"Icecrown",
			42.8,
			25,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12870] = {
		{
			12870,
			"Ancient Relics",
			78,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29744,
			"Rork Sharpchin",
			"The Storm Peaks",
			28.8,
			74.2,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12934] = {
		{
			12934,
			"",
			0,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			30009,
			"Wodin the Troll-Servant",
			"Zul'Drak",
			48.1,
			56.6,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12998] = {
		{
			12998,
			"The Heart of the Storm",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29801,
			"Bouldercrag the Rockshaper",
			"The Storm Peaks",
			31.4,
			38.1,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13062] = {
		{
			13062,
			"[80] Lok'lira's Parting Gift",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29975,
			"Lok'lira the Crone",
			"The Storm Peaks",
			47.5,
			69,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13126] = {
		{
			13126,
			"A Unified Front [Dungeon]",
			80,
			"The Oculus",
			1,
		},
		{
			1050,
		},
		{
			27658,
			"Belgaristrasz",
			"The Oculus",
			49.6,
			81.2,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13190] = {
		{
			13190,
			"All Things in Good Time [Heroic]",
			80,
			"Ahn'kahet: The Old Kingdom",
			3,
		},
		{
			1039,
		},
		{
			26653,
			"Kilix the Unraveler",
			"Dragonblight",
			26.2,
			50.7,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26506] = {
		{
			26506,
			"Franks and Beans",
			16,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			379,
			"Darcy Parker",
			"Redridge Mountains",
			15.7,
			65.3,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13318] = {
		{
			13318,
			"Drag and Drop",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29799,
			"Thassarian",
			"Icecrown",
			57.6,
			39.6,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13382] = {
		{
			13382,
			"Putting the Hertz: The Valley of Lost Hope",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			32444,
			"Kibli Killohertz",
			"Icecrown",
			54,
			42.9,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26890] = {
		{
			26890,
			"The Essence of Aku'Mai",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34303,
			"Dagrun Ragehammer",
			"Ashenvale",
			11.6,
			35.5,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13510] = {
		{
			13510,
			"Timely Arrival",
			13,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32964,
			"Sentinel Aynasha",
			"Darkshore",
			64.5,
			5.4,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27146] = {
		{
			27146,
			"Doctor Theolen Krastinov, the Butcher [Dungeon]",
			43,
			"Scholomance",
			1,
		},
		{
			1011,
		},
		{
			45107,
			"Eva Sarkhoff",
			"Scholomance",
			29.5,
			32.9,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27274] = {
		{
			27274,
			"The Chief Surgeon",
			20,
			"Priest",
			1,
		},
		{
			2006,
		},
		{
			11406,
			"High Priest Rohan",
			"Ironforge",
			23.5,
			7,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27402] = {
		{
			27402,
			"Token of Power [Dungeon]",
			20,
			"Warlock",
			1,
		},
		{
			2009,
		},
		{
			3326,
			"Zevrost",
			"Orgrimmar",
			54.3,
			35.9,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13766] = {
		{
			13766,
			"Closure is Only Natural",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			17310,
			"Gnarl",
			"Ashenvale",
			83.8,
			63,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13830] = {
		{
			13830,
			"The Ghostfish",
			80,
			"Un'Goro Crater",
			3,
		},
		{
			28,
		},
		{
			28742,
			"Marcia Chase",
			"Dalaran",
			52.8,
			65.09999999999999,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27786] = {
		{
			27786,
			"The Hammer of Twilight",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45675,
			"Garona Halforcen",
			"Twilight Highlands",
			36.4,
			66.09999999999999,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27914] = {
		{
			27914,
			"Blessing of the Green Dragonflight",
			54,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			nil,
			nil,
			"The Temple of Atal'Hakkar",
			54,
			79.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28042] = {
		{
			28042,
			"Special Delivery for Brivelthwerp",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40727,
			"Griznak",
			"Thousand Needles",
			78.2,
			73.59999999999999,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28170] = {
		{
			28170,
			"Night Terrors",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47751,
			"Buunu",
			"Twilight Highlands",
			36.4,
			38.1,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13366] = {
		{
			13366,
			"Need More Info [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			69.3,
			27,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14214] = {
		{
			14214,
			"Message to Greymane",
			4,
			"Gilneas City",
			1,
		},
		{
			50,
		},
		{
			35378,
			"Lorna Crowley",
			"Gilneas City",
			56.9,
			81.2,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14278] = {
		{
			14278,
			"Seek the Sister",
			2,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35840,
			"Gwen Armstead",
			"Gilneas City",
			70.7,
			55.2,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14342] = {
		{
			14342,
			"Infernal Encroachment",
			35,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			5395,
			"Felgur Twocuts",
			"Desolace",
			56.2,
			59.5,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14406] = {
		{
			14406,
			"[7] The Crowley Orchard",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36452,
			"Gwen Armstead",
			"Gilneas",
			37.5,
			65.3,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14470] = {
		{
			14470,
			"Military Breakthrough",
			13,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36744,
			"Glix Grindlock",
			"Azshara",
			29.4,
			57.7,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28793] = {
		{
			28793,
			"They Sent Assassins",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.7,
			38.4,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10115] = {
		{
			10115,
			"Daggerfen Deviance",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18008,
			"Ikuti",
			"Zangarmarsh",
			42,
			27.2,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10162] = {
		{
			10162,
			"Mission: The Abyssal Shelf",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19273,
			"Forward Commander To'arch",
			"Hellfire Peninsula",
			65.8,
			43.6,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27763] = {
		{
			27763,
			"To Fuselight Proper",
			45,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46650,
			"Eddie Flofizzle",
			"Badlands",
			92.59999999999999,
			38.9,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14001] = {
		{
			14001,
			"Goblin Escape Pods",
			6,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			36600,
			"Geargrinder Gizmo",
			"The Lost Isles",
			24.6,
			77.90000000000001,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13364] = {
		{
			13364,
			"Tirion's Gambit",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			31044,
			"Highlord Tirion Fordring",
			"Icecrown",
			79.8,
			71.8,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[218] = {
		{
			218,
			"Ice and Fire",
			5,
			"Coldridge Valley",
			1,
		},
		{
			36,
		},
		{
			786,
			"Grelin Whitebeard",
			"Dun Morogh",
			32.1,
			74.3,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12860] = {
		{
			12860,
			"Data Mining",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29579,
			"Brann Bronzebeard",
			"The Storm Peaks",
			40.6,
			84.90000000000001,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26871] = {
		{
			26871,
			"A Rock Amongst Many",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44259,
			"Gorged Gyreworm",
			"Deepholm",
			66.5,
			20.6,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12542] = {
		{
			12542,
			"The Call Of The Crusade",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27348,
			"Tilda Darathan",
			"Dragonblight",
			87.3,
			57.3,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13876] = {
		{
			13876,
			"Too Far Gone",
			24,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34251,
			"Vear Darksnout",
			"Ashenvale",
			38,
			30.2,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26985] = {
		{
			26985,
			"Pitting Madness Against Madness",
			38,
			"Scarlet Monastery",
			1,
		},
		{
			1010,
		},
		{
			3936,
			"Shandris Feathermoon",
			"Feralas",
			46,
			49.1,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[54] = {
		{
			54,
			"Report to Goldshire",
			5,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27892] = {
		{
			27892,
			"Jurrix the Striker",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			47024,
			"Jurrix Whitemane",
			"Badlands",
			18.7,
			42.8,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13943] = {
		{
			13943,
			"Breathing Room",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34359,
			"Captain Goggath",
			"Ashenvale",
			38.1,
			43.8,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13111] = {
		{
			13111,
			"One of a Kind [Dungeon]",
			78,
			"Gundrak",
			1,
		},
		{
			1045,
		},
		{
			30676,
			"Chronicler Bah'Kini",
			"Zul'Drak",
			70,
			21,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25706] = {
		{
			25706,
			"Neptool's Revenge",
			57,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			41354,
			"Neptool",
			"Blasted Lands",
			71,
			60,
			19,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13056] = {
		{
			13056,
			"There's Always Time for Revenge",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30469,
			"Tracker Val'zij",
			"The Storm Peaks",
			48.5,
			54.3,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[3922] = {
		{
			3922,
			"Nugget Slugs",
			15,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			9316,
			"Wenikee Boltbucket",
			"Northern Barrens",
			44.3,
			24.9,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[190] = {
		{
			190,
			"Panther Hunting",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			718,
			"Sir S. J. Erlgadin",
			"Northern Stranglethorn",
			43.8,
			22.3,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25988] = {
		{
			25988,
			"Put It On",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			nil,
			nil,
			"Abyssal Depths",
			51.5,
			61.2,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14399] = {
		{
			14399,
			"[7] Grandma's Lost It Alright",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36458,
			"Grandma Wahl",
			"Gilneas",
			32.5,
			75.59999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[412] = {
		{
			412,
			"Operation Recombobulation",
			6,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			1269,
			"Razzle Sprysprocket",
			"Dun Morogh",
			53.3,
			51.9,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13432] = {
		{
			13432,
			"The Vials of Eternity [Raid]",
			70,
			"Caverns of Time",
			1,
		},
		{
			1024,
		},
		{
			nil,
			nil,
			"Netherstorm",
			68.59999999999999,
			66.5,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9863] = {
		{
			9863,
			"Vile Idolatry",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18066,
			"Farseer Kurkush",
			"Nagrand",
			54.8,
			39.5,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12229] = {
		{
			12229,
			"A Possible Link",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27262,
			"Windseer Grayhorn",
			"Grizzly Hills",
			22.5,
			63,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9147] = {
		{
			9147,
			"The Fallen Courier",
			10,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16196,
			"Apothecary Thedra",
			"Eversong Woods",
			49,
			89.09999999999999,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[83] = {
		{
			83,
			"Fine Linen Goods",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			278,
			"Sara Timberlain",
			"Elwynn Forest",
			79.5,
			68.59999999999999,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24459] = {
		{
			24459,
			"Morin Cloudstalker",
			8,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			36644,
			"Ahmo Thunderhorn",
			"Mulgore",
			47.7,
			59.7,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24587] = {
		{
			24587,
			"Ignis the Furnace Master Must Die! [Raid]",
			80,
			"Ulduar",
			5,
		},
		{
			1084,
		},
		{
			20735,
			"Archmage Lan'dalock",
			"Dalaran",
			57.7,
			66.5,
			504,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24715] = {
		{
			24715,
			"Repairing A-Me 01",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9623,
			"A-Me 01",
			"Un'Goro Crater",
			63.7,
			19.8,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8327] = {
		{
			8327,
			"Report to Lanthan Perilon",
			3,
			"Sunstrider Isle",
			1,
		},
		{
			40,
		},
		{
			15278,
			"Magistrix Erona",
			"Eversong Woods",
			38.1,
			20.9,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24971] = {
		{
			24971,
			"Assault on the Rotbrain Encampment",
			5,
			"Deathknell",
			1,
		},
		{
			60,
		},
		{
			49425,
			"Darnell",
			"Tirisfal Glades",
			35.7,
			62.2,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25099] = {
		{
			25099,
			"Borrow Bastia",
			9,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38935,
			"Thrall",
			"The Lost Isles",
			36.8,
			43.2,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25227] = {
		{
			25227,
			"Thonk",
			8,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			39423,
			"Gail Nozzywig",
			"Durotar",
			53.1,
			43.2,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25355] = {
		{
			25355,
			"Lightning in a Bottle",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39432,
			"Takrik Ragehowl",
			"Mount Hyjal",
			28.4,
			30,
			606,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28263] = {
		{
			28263,
			"Meet with Maginor Dumas",
			50,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			5146,
			"Nittlebur Sparkfizzle",
			"Ironforge",
			26.4,
			6.2,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8711] = {
		{
			8711,
			"Blade of Eternal Justice [Raid]",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			15499,
			"Warden Haro",
			"Ahn'Qiraj: The Fallen Kingdom",
			59.4,
			14,
			772,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25739] = {
		{
			25739,
			"If the Horde Don't Get You...",
			27,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			40897,
			"Northwatch Captain Kosak",
			"Stonetalon Mountains",
			59.5,
			57,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25867] = {
		{
			25867,
			"Gnoll Escape",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41415,
			"Shilah Slabchisel",
			"Wetlands",
			26.9,
			26.1,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25995] = {
		{
			25995,
			"Overseer Idra'kess",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41810,
			"Legionnaire Nazgrim",
			"Shimmering Expanse",
			60.3,
			63.7,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27367] = {
		{
			27367,
			"Gidwin Goldbraids",
			40,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45417,
			"Fiona",
			"Eastern Plaguelands",
			9.1,
			66.40000000000001,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26251] = {
		{
			26251,
			"Take No Prisoners",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42684,
			"Stormcaller Mylra",
			"Deepholm",
			62.9,
			40.7,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12474] = {
		{
			12474,
			"To Fordragon Hold!",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27136,
			"High Commander Halford Wyrmbane",
			"Dragonblight",
			78.5,
			48.3,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9159] = {
		{
			9159,
			"Curbing the Plague",
			15,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16202,
			"Farstrider Sedina",
			"Ghostlands",
			72.59999999999999,
			32.1,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26635] = {
		{
			26635,
			"Cannonball Swim",
			33,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2545,
			"\"Pretty Boy\" Duncan",
			"The Cape of Stranglethorn",
			44.6,
			93.40000000000001,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26763] = {
		{
			26763,
			"Venture Company Mining",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			773,
			"Krazek",
			"Northern Stranglethorn",
			43.7,
			23.1,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9351] = {
		{
			9351,
			"Voidwalkers Gone Wild",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19367,
			"\"Screaming\" Screed Luckheed",
			"Hellfire Peninsula",
			49.1,
			74.8,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9415] = {
		{
			9415,
			"Report to Marshal Bluewall",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			17082,
			"Rifleman Torrig",
			"Silithus",
			54.5,
			32.9,
			261,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27147] = {
		{
			27147,
			"Kirtonos the Herald [Dungeon]",
			43,
			"Scholomance",
			1,
		},
		{
			1011,
		},
		{
			45107,
			"Eva Sarkhoff",
			"Scholomance",
			29.5,
			32.9,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9543] = {
		{
			9543,
			"Atonement",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16834,
			"Anchorite Obadei",
			"Hellfire Peninsula",
			23.1,
			40.4,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9607] = {
		{
			9607,
			"Heart of Rage [Dungeon]",
			63,
			"The Blood Furnace",
			1,
		},
		{
			1032,
		},
		{
			17479,
			"Gunny",
			"Hellfire Peninsula",
			56.4,
			66.59999999999999,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27531] = {
		{
			27531,
			"Counter-Plague Research",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45828,
			"Argent Apothecary Judkins",
			"Eastern Plaguelands",
			17.8,
			28,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27659] = {
		{
			27659,
			"Portal Overload",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46242,
			"Earthcaller Yevaa",
			"Twilight Highlands",
			37.5,
			88.59999999999999,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9799] = {
		{
			9799,
			"Botanical Legwork",
			3,
			"Ammen Vale",
			1,
		},
		{
			5,
		},
		{
			20233,
			"Apprentice Vishael",
			"Azuremyst Isle",
			79.09999999999999,
			46.5,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27915] = {
		{
			27915,
			"The Heart of the Temple",
			54,
			"Sunken Temple",
			1,
		},
		{
			1014,
		},
		{
			46071,
			"Lord Itharius",
			"The Temple of Atal'Hakkar",
			54,
			79.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9927] = {
		{
			9927,
			"Ruthless Cunning",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18261,
			"Lantresor of the Blade",
			"Nagrand",
			73.8,
			62.6,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9991] = {
		{
			9991,
			"Survey the Land [Group]",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18417,
			"Altruis the Sufferer",
			"Nagrand",
			27.4,
			43.2,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10055] = {
		{
			10055,
			"Waste Not, Want Not",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			21209,
			"Dumphry",
			"Hellfire Peninsula",
			51.2,
			59.9,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10119] = {
		{
			10119,
			"Through the Dark Portal",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16841,
			"Watch Commander Relthorn Netherwane",
			"Blasted Lands",
			54.7,
			50.2,
			19,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10183] = {
		{
			10183,
			"Off To Area 52",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19569,
			"Netherologist Coppernickels",
			"Netherstorm",
			21.3,
			55.7,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10247] = {
		{
			10247,
			"Doctor Vomisa, Ph.T. [Group]",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19570,
			"Rocket-Chief Fuselage",
			"Netherstorm",
			32.7,
			64.40000000000001,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10311] = {
		{
			10311,
			"Drijya Needs Your Help",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20066,
			"Gahruj",
			"Netherstorm",
			46.7,
			56.9,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28764] = {
		{
			28764,
			"Beating them Back!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10439] = {
		{
			10439,
			"Dimensius the All-Devouring [Group]",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20907,
			"Professor Dabiri",
			"Netherstorm",
			60.1,
			31.8,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10503] = {
		{
			10503,
			"The Bladespire Threat",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21147,
			"Tor'chunk Twoclaws",
			"Blade's Edge Mountains",
			51.9,
			58.4,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10567] = {
		{
			10567,
			"Creating the Pendant",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21782,
			"Timeon",
			"Blade's Edge Mountains",
			62.2,
			39.2,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9363] = {
		{
			9363,
			"Warning Fairbreeze Village",
			11,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15399,
			"Lieutenant Dawnrunner",
			"Eversong Woods",
			60.3,
			62.7,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28508] = {
		{
			28508,
			"The Battle for Andorhal",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			42898,
			"Darkcleric Marnal",
			"The Hinterlands",
			32,
			58.3,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10759] = {
		{
			10759,
			"[69] Find the Deserter",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22042,
			"Gryphonrider Kieran",
			"Shadowmoon Valley",
			38.8,
			54.2,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28380] = {
		{
			28380,
			"Pikwik in Peril",
			49,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			48127,
			"Darla Drilldozer",
			"Felwood",
			56.3,
			8.300000000000001,
			182,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10887] = {
		{
			10887,
			"Escaping the Tomb",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22377,
			"Akuno",
			"Terokkar Forest",
			30.7,
			49,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28252] = {
		{
			28252,
			"The Kodocaller's Horn",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48085,
			"Quartermaster Kaoshin",
			"Burning Steppes",
			45.2,
			51.7,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11015] = {
		{
			11015,
			"Netherwing Crystals",
			70,
			"Shadowmoon Valley",
			3,
		},
		{
			73,
		},
		{
			23140,
			"Taskmaster Varkule Dragonbreath",
			"Shadowmoon Valley",
			66.09999999999999,
			86.40000000000001,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11079] = {
		{
			11079,
			"A Fel Whip For Gahk [Group]",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			23300,
			"Gahk",
			"Blade's Edge Mountains",
			28.4,
			58,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14063] = {
		{
			14063,
			"Mutiny, Mon!",
			17,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34749,
			"Tony Two-Tusk",
			"Northern Barrens",
			77.3,
			91.3,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13999] = {
		{
			13999,
			"Who's Shroomin' Who?",
			14,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3390,
			"Apothecary Helbrim",
			"Northern Barrens",
			48.7,
			58.4,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11271] = {
		{
			11271,
			"Hasty Preparations",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24127,
			"Ahota Whitefrost",
			"Howling Fjord",
			48.4,
			11,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27868] = {
		{
			27868,
			"The Crucible of Carnage: The Twilight Terror! [Group]",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			0,
			"Avataur",
			"Twilight Highlands",
			50.7,
			58.3,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11399] = {
		{
			11399,
			"Bring Down Those Shields",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24359,
			"Apothecary Anastasia",
			"Howling Fjord",
			26.1,
			24.5,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13871] = {
		{
			13871,
			"Security!",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			17304,
			"Overseer Gorthak",
			"Ashenvale",
			90.90000000000001,
			58.1,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11527] = {
		{
			11527,
			"Mutiny on the Mercy",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24910,
			"Captain Ellis",
			"Howling Fjord",
			37.1,
			74.8,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11591] = {
		{
			11591,
			"Report to Steeljaw's Caravan",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25326,
			"Overlord Bor'gorok",
			"Borean Tundra",
			49.7,
			10.6,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11655] = {
		{
			11655,
			"Into the Mist",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25476,
			"Waltor of Pal'ea",
			"Borean Tundra",
			32.3,
			54.2,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11719] = {
		{
			11719,
			"A Suitable Test Subject",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25381,
			"Bloodmage Laurith",
			"Borean Tundra",
			52,
			52.5,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[5892] = {
		{
			5892,
			"Irondeep Supplies [PvP]",
			81,
			"Alterac Valley",
			1,
		},
		{
			5002,
		},
		{
			12096,
			"Stormpike Quartermaster",
			"Alterac Valley",
			43.1,
			17.6,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[1639] = {
		{
			1639,
			"Bartleby the Drunk",
			18,
			"Warrior",
			1,
		},
		{
			2010,
		},
		{
			6089,
			"Harry Burlguard",
			"Stormwind City",
			76.2,
			53.5,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11911] = {
		{
			11911,
			"Quickening [Dungeon]",
			71,
			"The Nexus",
			1,
		},
		{
			1049,
		},
		{
			25314,
			"Archmage Berinand",
			"Borean Tundra",
			33,
			34.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13743] = {
		{
			13743,
			"The Edge Of Winter",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33312,
			"Lana Stouthammer",
			"Icecrown",
			76.59999999999999,
			19.5,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12039] = {
		{
			12039,
			"Black Blood of Yogg-Saron",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26564,
			"Borus Ironbender",
			"Dragonblight",
			36.6,
			47.1,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27356] = {
		{
			27356,
			"The Circle's Future [Dungeon]",
			20,
			"Druid",
			1,
		},
		{
			2002,
		},
		{
			12042,
			"Loganaar",
			"Moonglade",
			52.5,
			40.6,
			241,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12167] = {
		{
			12167,
			"[72] [72] Kill the Cultists",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26973,
			"Warden Jodi Moonsong ",
			"Dragonblight",
			29.2,
			55.5,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12231] = {
		{
			12231,
			"The Bear God's Offspring",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27262,
			"Windseer Grayhorn",
			"Grizzly Hills",
			22.5,
			63,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12295] = {
		{
			12295,
			"An Exercise in Diplomacy",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26875,
			"Lieutenant Dumont",
			"Grizzly Hills",
			31.9,
			60.2,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27228] = {
		{
			27228,
			"Man Against Abomination",
			50,
			"Stratholme",
			1,
		},
		{
			1013,
		},
		{
			45329,
			"Crusade Commander Eligor Dawnbringer",
			"Stratholme",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12423] = {
		{
			12423,
			"Mikhail's Journal",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			nil,
			nil,
			"Grizzly Hills",
			35.4,
			67,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12487] = {
		{
			12487,
			"To Conquest Hold, But Be Careful!",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27243,
			"High Executor Wroth",
			"Dragonblight",
			76.8,
			63.2,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12551] = {
		{
			12551,
			"Crocolisk Mastery: The Trial",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28032,
			"Debaar",
			"Sholazar Basin",
			27.2,
			59.8,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12615] = {
		{
			12615,
			"The Blessing of Zim'Torga",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28479,
			"Witch Doctor Khufu",
			"Zul'Drak",
			59.5,
			58,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25356] = {
		{
			25356,
			"To the Summit",
			40,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			39893,
			"Jawn Highmesa",
			"Feralas",
			74.59999999999999,
			42.9,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14017] = {
		{
			14017,
			"The Black Knight's Fate",
			80,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			33417,
			"Crusader Rhydalla",
			"Icecrown",
			69.40000000000001,
			23,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25612] = {
		{
			25612,
			"Return from the Firelands",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40834,
			"Jordan Olafson",
			"Mount Hyjal",
			26.2,
			41.8,
			606,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25740] = {
		{
			25740,
			"Fact-Finding Mission",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40997,
			"Skylord Omnuron",
			"Mount Hyjal",
			43.5,
			45.8,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12935] = {
		{
			12935,
			"",
			0,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			30009,
			"Wodin the Troll-Servant",
			"Zul'Drak",
			48,
			56.7,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12999] = {
		{
			12999,
			"The Bone Witch",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30074,
			"The Leaper",
			"Icecrown",
			43.6,
			24.6,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26124] = {
		{
			26124,
			"Secure Seabrush",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			nil,
			nil,
			"Abyssal Depths",
			51.5,
			42.2,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13127] = {
		{
			13127,
			"Mage-Lord Urom [Dungeon]",
			80,
			"The Oculus",
			1,
		},
		{
			1050,
		},
		{
			28012,
			"Image of Belgaristrasz",
			"The Oculus",
			46,
			19.9,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26380] = {
		{
			26380,
			"Bound for Kharanos",
			5,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			42933,
			"Ciara Deepstone",
			"Dun Morogh",
			49.9,
			45,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26508] = {
		{
			26508,
			"Nida's Necklace",
			16,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			8965,
			"Shawn",
			"Redridge Mountains",
			28.3,
			48.8,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26636] = {
		{
			26636,
			"Bravo Company Field Kit: Camouflage",
			18,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			43461,
			"Krakauer",
			"Redridge Mountains",
			52.4,
			55.4,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13383] = {
		{
			13383,
			"Killohertz",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30345,
			"Chief Engineer Boltwrench",
			"Icecrown",
			57.6,
			37.7,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26892] = {
		{
			26892,
			"Deep in the Deeps",
			26,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			44375,
			"Zeya",
			"Blackfathom Deeps",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13511] = {
		{
			13511,
			"One Bitter Wish",
			13,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33055,
			"Alanndarian Nightsong",
			"Darkshore",
			63.8,
			6,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13575] = {
		{
			13575,
			"The Land Is in Their Blood",
			15,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33091,
			"Malfurion Stormrage",
			"Darkshore",
			43.7,
			53.4,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13639] = {
		{
			13639,
			"Resupplying the Excavation",
			16,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1105,
			"Jern Hornhelm",
			"Loch Modan",
			37.2,
			47.5,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13703] = {
		{
			13703,
			"Valiant Of Ironforge",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33312,
			"Lana Stouthammer",
			"Icecrown",
			76.59999999999999,
			19.5,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27532] = {
		{
			27532,
			"The Plaguewood Tower",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45451,
			"Argus Highbeacon",
			"Eastern Plaguelands",
			50.8,
			20.4,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13831] = {
		{
			13831,
			"A Troubling Prescription",
			11,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			nil,
			nil,
			"Darkshore",
			57.4,
			33.8,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13895] = {
		{
			13895,
			"The Slumbering Ancients",
			19,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33072,
			"Onu",
			"Darkshore",
			45.4,
			74.90000000000001,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27916] = {
		{
			27916,
			"Ruag's Report",
			55,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			47041,
			"Neeka Bloodscar",
			"Swamp of Sorrows",
			21.3,
			51.7,
			38,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28044] = {
		{
			28044,
			"Touch the Untouchable",
			46,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47366,
			"Impsy",
			"Felwood",
			41.9,
			71.90000000000001,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28172] = {
		{
			28172,
			"Done Nothing Wrong",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			47779,
			"Mouton Flamestar",
			"Burning Steppes",
			16.9,
			51.4,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28300] = {
		{
			28300,
			"[50] Meet with Ureda",
			50,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			16653,
			"Inethven",
			"Silvermoon City",
			59.1,
			19.6,
			480,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14215] = {
		{
			14215,
			"Memories of the Dead",
			12,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35087,
			"Malynea Skyreaver",
			"Azshara",
			29.7,
			66.90000000000001,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14279] = {
		{
			14279,
			"Flash Heal",
			2,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35870,
			"Sister Almyra",
			"Gilneas City",
			70.5,
			65.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14343] = {
		{
			14343,
			"Maurin's Concoction",
			34,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			4498,
			"Maurin Bonesplitter",
			"Desolace",
			52.3,
			53.6,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14407] = {
		{
			14407,
			"Azshara Blues",
			17,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36999,
			"Teemo",
			"Azshara",
			59.5,
			50.8,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14471] = {
		{
			14471,
			"First Degree Mortar",
			13,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36746,
			"Xiz \"The Eye\" Salvoblast",
			"Azshara",
			29.2,
			57.8,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12690] = {
		{
			12690,
			"Fuel for the Fire",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28503,
			"Overlord Drakuru",
			"Zul'Drak",
			27.1,
			46.1,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26844] = {
		{
			26844,
			"Kobold and Kobolder",
			13,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1343,
			"Mountaineer Stormpike",
			"Loch Modan",
			25.5,
			17.9,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9406] = {
		{
			9406,
			"The Mag'har",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16845,
			"Gorkan Bloodfist",
			"Hellfire Peninsula",
			32,
			27.9,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13295] = {
		{
			13295,
			"Basic Chemistry [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29799,
			"Thassarian",
			"Icecrown",
			58.9,
			42.9,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13373] = {
		{
			13373,
			"Fringe Science Benefits",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			32430,
			"Fringe Engineer Tezzla",
			"Icecrown",
			54,
			36.7,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26332] = {
		{
			26332,
			"Skullsplitter Mojo",
			26,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			nil,
			nil,
			"Northern Stranglethorn",
			38.5,
			48.6,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26204] = {
		{
			26204,
			"The Arts of a Warrior",
			3,
			"Chill Breeze Valley",
			1,
		},
		{
			36,
		},
		{
			42324,
			"Drill Sergeant Steamcrank",
			"Dun Morogh",
			34.3,
			37.5,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26076] = {
		{
			26076,
			"Spy Infestation",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			42033,
			"Jibbly Rakit",
			"Stonetalon Mountains",
			52.9,
			39.2,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12975] = {
		{
			12975,
			"[80] In Memoriam",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30105,
			"King Jokkum",
			"The Storm Peaks",
			65.40000000000001,
			60.1,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28524] = {
		{
			28524,
			"Delivery for Donova",
			50,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			11556,
			"Salfa",
			"Winterspring",
			21.1,
			46.2,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25692] = {
		{
			25692,
			"The Vile Blood of Demons",
			56,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			41159,
			"Watcher Wazzik",
			"Blasted Lands",
			54.3,
			49.9,
			19,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28812] = {
		{
			28812,
			"Fear No Evil",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			951,
			"Brother Paxton",
			"Elwynn Forest",
			48.5,
			38.2,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12719] = {
		{
			12719,
			"Nowhere To Run And Nowhere To Hide",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28911,
			"Prince Keleseth",
			"Plaguelands: The Scarlet Enclave",
			54.3,
			57.4,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25308] = {
		{
			25308,
			"Seeds of Discord",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			nil,
			nil,
			"Mount Hyjal",
			88.40000000000001,
			58.4,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13752] = {
		{
			13752,
			"A Blade Fit For A Champion",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33593,
			"Colosos",
			"Icecrown",
			76.09999999999999,
			19.2,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25052] = {
		{
			25052,
			"Dead Man's Chest",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38704,
			"Kelsey Steelspark",
			"Tanaris",
			72.2,
			45.2,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24924] = {
		{
			24924,
			"Oomlot Village",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38387,
			"Sassy Hardwrench",
			"The Lost Isles",
			45.2,
			64.90000000000001,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9861] = {
		{
			9861,
			"The Howling Wind",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			nil,
			nil,
			"Nagrand",
			60.8,
			39.2,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26214] = {
		{
			26214,
			"Hot On the Trail: Murlocs",
			11,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			42308,
			"Lieutenant Horatio Laine",
			"Westfall",
			60,
			19.2,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24540] = {
		{
			24540,
			"War Dance",
			10,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			36648,
			"Baine Bloodhoof",
			"Thunder Bluff",
			59.7,
			51.7,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[85] = {
		{
			85,
			"Lost Necklace",
			6,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			246,
			"\"Auntie\" Bernice Stonefield",
			"Elwynn Forest",
			34.6,
			84.3,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9937] = {
		{
			9937,
			"Wanted: Durn the Hungerer [Group]",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18407,
			"Warden Bullrok",
			"Nagrand",
			55.9,
			37.9,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28680] = {
		{
			28680,
			"Boosting Morale",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48360,
			"3rd Officer Kronkar",
			"Tol Barad Peninsula",
			55.3,
			81,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[40] = {
		{
			40,
			"A Fishy Peril",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			241,
			"Remy \"Two Times\"",
			"Elwynn Forest",
			42.2,
			67.09999999999999,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14337] = {
		{
			14337,
			"Shadowprey Village",
			34,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			36034,
			"Karnum Marshweaver",
			"Desolace",
			57.4,
			47.7,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28830] = {
		{
			28830,
			"Chips off the Old Block",
			54,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			50263,
			"Jadrag the Slicer",
			"Winterspring",
			61.9,
			74.59999999999999,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9856] = {
		{
			9856,
			"Windroc Mastery [Group]",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18200,
			"Shado 'Fitz' Farstrider",
			"Nagrand",
			71.5,
			40.6,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[194] = {
		{
			194,
			"Raptor Hunting",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			715,
			"Hemet Nesingwary Jr.",
			"Northern Stranglethorn",
			44.1,
			23,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28135] = {
		{
			28135,
			"Al'Akir's Vengeance",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47684,
			"King Phaoris",
			"Uldum",
			54.9,
			32.8,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24589] = {
		{
			24589,
			"Lord Jaraxxus Must Die! [Raid]",
			80,
			"Trial of the Crusader",
			5,
		},
		{
			1069,
		},
		{
			20735,
			"Archmage Lan'dalock",
			"Dalaran",
			57.5,
			66.3,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24717] = {
		{
			24717,
			"The Apes of Un'Goro",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38275,
			"Gremix",
			"Un'Goro Crater",
			43.2,
			41.1,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8328] = {
		{
			8328,
			"Mage Training",
			3,
			"Mage",
			1,
		},
		{
			2004,
		},
		{
			15278,
			"Magistrix Erona",
			"Eversong Woods",
			38,
			21.1,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24973] = {
		{
			24973,
			"Night Web's Hollow",
			4,
			"Deathknell",
			1,
		},
		{
			60,
		},
		{
			1570,
			"Executor Arren",
			"Tirisfal Glades",
			33,
			61.1,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[6622] = {
		{
			6622,
			"Triage",
			80,
			"First Aid",
			1,
		},
		{
			3006,
		},
		{
			12920,
			"Doctor Gregory Victor",
			"Arathi Highlands",
			68.5,
			37.7,
			16,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[1640] = {
		{
			1640,
			"Beat Bartleby",
			18,
			"Warrior",
			1,
		},
		{
			2010,
		},
		{
			6090,
			"Bartleby",
			"Stormwind City",
			75.90000000000001,
			53,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25357] = {
		{
			25357,
			"Buy Us Some Time",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			39887,
			"Captain Taylor",
			"Kelp'thar Forest",
			44.8,
			22.5,
			610,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28190] = {
		{
			28190,
			"The Tainted Ooze",
			47,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47692,
			"Altsoba Ragetotem",
			"Felwood",
			41.3,
			49.9,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25613] = {
		{
			25613,
			"Do Yourself a Favor",
			25,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			40894,
			"Gnombus the X-Terminator",
			"Ashenvale",
			35.4,
			71.3,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25741] = {
		{
			25741,
			"Preparations for the Future",
			27,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			40898,
			"Alithia Fallowmere",
			"Stonetalon Mountains",
			59,
			56.4,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25869] = {
		{
			25869,
			"Grimtotem in the Post",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			41392,
			"Quentin",
			"Thousand Needles",
			46.4,
			57.9,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25997] = {
		{
			25997,
			"Dark Iron Scheming",
			10,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41786,
			"Sergeant Bahrum",
			"Dun Morogh",
			82.8,
			48.4,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9728] = {
		{
			9728,
			"A Warm Welcome",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17858,
			"Warden Hamoot",
			"Zangarmarsh",
			79.2,
			65.09999999999999,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9727] = {
		{
			9727,
			"Now That We're Still Friends...",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17856,
			"Gzhun'tt",
			"Zangarmarsh",
			19.6,
			50.2,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26381] = {
		{
			26381,
			"The Eye of Shadra",
			34,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42898,
			"Darkcleric Marnal",
			"The Hinterlands",
			32,
			58.3,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9160] = {
		{
			9160,
			"Investigate An'daroth",
			11,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16231,
			"Dame Auriferous",
			"Ghostlands",
			44.9,
			32.5,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26637] = {
		{
			26637,
			"Bravo Company Field Kit: Chloroform",
			18,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			43459,
			"Messner",
			"Redridge Mountains",
			52.5,
			55.5,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26765] = {
		{
			26765,
			"Return to Corporal Kaleb",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			773,
			"Krazek",
			"Northern Stranglethorn",
			43.7,
			23,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9352] = {
		{
			9352,
			"Darnassian Intrusions",
			6,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15403,
			"Aeldon Sunbrand",
			"Eversong Woods",
			48.2,
			46,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9416] = {
		{
			9416,
			"Report to General Kirika",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			17081,
			"Scout Bloodfist",
			"Silithus",
			53.1,
			34.6,
			261,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9923] = {
		{
			9923,
			"HELP!",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18369,
			"Corki",
			"Nagrand",
			72.59999999999999,
			70.8,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27277] = {
		{
			27277,
			"[20] An Audience with Ureda",
			20,
			"Mage",
			1,
		},
		{
			2004,
		},
		{
			16653,
			"Inethven",
			"Silvermoon City",
			59.1,
			19.6,
			480,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9608] = {
		{
			9608,
			"Heart of Rage [Dungeon]",
			63,
			"The Blood Furnace",
			1,
		},
		{
			1032,
		},
		{
			17558,
			"Caza'rez",
			"Hellfire Peninsula",
			54.9,
			36.1,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27533] = {
		{
			27533,
			"A Fate Worse Than Butchery",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			12384,
			"Augustus the Touched",
			"Eastern Plaguelands",
			11.4,
			28.7,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27661] = {
		{
			27661,
			"Fire the Cannon",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46413,
			"Countess Verrall",
			"Twilight Highlands",
			27.6,
			63.9,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9800] = {
		{
			9800,
			"A Rare Bean",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18073,
			"Elementalist Lo'ap",
			"Nagrand",
			60.8,
			22.3,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9864] = {
		{
			9864,
			"The Missing War Party",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18067,
			"Farseer Corhuk",
			"Nagrand",
			54.8,
			39.8,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9928] = {
		{
			9928,
			"Armaments for Deception",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18261,
			"Lantresor of the Blade",
			"Nagrand",
			73.8,
			62.6,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9992] = {
		{
			9992,
			"[63] Olemba Seeds",
			63,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18390,
			"Ros'eleth",
			"Terokkar Forest",
			57.4,
			55.3,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28301] = {
		{
			28301,
			"Meet with Kardris Dreamseeker",
			50,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			3032,
			"Beram Skychaser",
			"Thunder Bluff",
			35.2,
			22.4,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10120] = {
		{
			10120,
			"Arrival in Outland",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19253,
			"Lieutenant General Orion",
			"Hellfire Peninsula",
			87.40000000000001,
			49.7,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10184] = {
		{
			10184,
			"Malevolent Remnants",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19488,
			"Custodian Dieworth",
			"Netherstorm",
			57.5,
			86.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10248] = {
		{
			10248,
			"You, Robot [Group]",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19832,
			"Doctor Vomisa, Ph.T.",
			"Netherstorm",
			37.3,
			63.8,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10312] = {
		{
			10312,
			"The Annals of Kirin'Var",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19488,
			"Custodian Dieworth",
			"Netherstorm",
			57.5,
			86.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27934] = {
		{
			27934,
			"One With the Ground",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			47195,
			"Slate Quicksand",
			"Deepholm",
			30.7,
			77.8,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10440] = {
		{
			10440,
			"Success!",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20913,
			"Tashar",
			"Netherstorm",
			44.6,
			14.5,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10504] = {
		{
			10504,
			"The Bladespire Ogres",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21158,
			"Commander Skyshadow",
			"Blade's Edge Mountains",
			36.3,
			66.3,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10568] = {
		{
			10568,
			"Tablets of Baa'ri",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21402,
			"Anchorite Ceyla",
			"Shadowmoon Valley",
			62.5,
			28.5,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10632] = {
		{
			10632,
			"Cutting Your Teeth",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21118,
			"Razak Ironsides",
			"Blade's Edge Mountains",
			60.3,
			69.2,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28134] = {
		{
			28134,
			"Impending Retribution",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47684,
			"King Phaoris",
			"Uldum",
			54.9,
			32.8,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10760] = {
		{
			10760,
			"The Sketh'lon Wreckage",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22043,
			"Sergeant Kargrul",
			"Shadowmoon Valley",
			31,
			29.8,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9810] = {
		{
			9810,
			"The Spirit Polluted",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18073,
			"Elementalist Lo'ap",
			"Nagrand",
			60.8,
			22.4,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12858] = {
		{
			12858,
			"Pieces to the Puzzle",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29579,
			"Brann Bronzebeard",
			"The Storm Peaks",
			48.4,
			60.8,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12853] = {
		{
			12853,
			"Luxurious Getaway!",
			78,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30490,
			"Rin Duoctane",
			"Dalaran",
			0,
			0,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11016] = {
		{
			11016,
			"Nethermine Flayer Hide",
			70,
			"Shadowmoon Valley",
			3,
		},
		{
			73,
		},
		{
			23140,
			"Taskmaster Varkule Dragonbreath",
			"Shadowmoon Valley",
			66.09999999999999,
			86.3,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11080] = {
		{
			11080,
			"The Relic's Emanation",
			70,
			"Blade's Edge Mountains",
			3,
		},
		{
			69,
		},
		{
			23233,
			"Chu'a'lor",
			"Blade's Edge Mountains",
			28.8,
			57.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13585] = {
		{
			13585,
			"Sworn to Protect",
			17,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33112,
			"Selenn",
			"Darkshore",
			44.5,
			56.7,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11208] = {
		{
			11208,
			"Delivery for Drazzit",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23797,
			"Moxie Steelgrille",
			"Dustwallow Marsh",
			53.5,
			57,
			141,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11272] = {
		{
			11272,
			"A Score to Settle [Dungeon]",
			71,
			"Utgarde Keep",
			1,
		},
		{
			1054,
		},
		{
			23961,
			"Dragonflayer Ironhelm",
			"Utgarde Keep",
			67.59999999999999,
			66.09999999999999,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[74] = {
		{
			74,
			"The Legend of Stalvan",
			28,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			nil,
			nil,
			"Stormwind City",
			42.7,
			72.09999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13521] = {
		{
			13521,
			"Buzzbox 413",
			10,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32977,
			"Wizbang Cranktoggle",
			"Darkshore",
			51.2,
			19.6,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11464] = {
		{
			11464,
			"Gambling Debt",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24541,
			"Taruk",
			"Howling Fjord",
			36.3,
			80.40000000000001,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27530] = {
		{
			27530,
			"The Corpsebeasts",
			45,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45831,
			"Crusader Kevin Frost",
			"Eastern Plaguelands",
			27.6,
			20.9,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11592] = {
		{
			11592,
			"We Strike!",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25335,
			"Longrunner Proudhoof",
			"Borean Tundra",
			48.3,
			19.8,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11656] = {
		{
			11656,
			"Burn in Effigy",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25476,
			"Waltor of Pal'ea",
			"Borean Tundra",
			32.3,
			54.3,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11720] = {
		{
			11720,
			"The Invasion of Gammoth",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25381,
			"Bloodmage Laurith",
			"Borean Tundra",
			52,
			52.5,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13397] = {
		{
			13397,
			"Sindragosa's Fall",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29799,
			"Thassarian",
			"Icecrown",
			62.6,
			51.6,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13117] = {
		{
			13117,
			"Where Are They Coming From?",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30631,
			"Darkrider Arly",
			"Icecrown",
			35.4,
			66.40000000000001,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11912] = {
		{
			11912,
			"Nuts for Berries",
			71,
			"Coldarra",
			1,
		},
		{
			77,
		},
		{
			26110,
			"Librarian Serrah",
			"Borean Tundra",
			33.5,
			34.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9170] = {
		{
			9170,
			"Dar'Khan's Lieutenants",
			20,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16204,
			"Magister Idonis",
			"Ghostlands",
			54.9,
			48.4,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12040] = {
		{
			12040,
			"An Enemy in Arthas",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26653,
			"Kilix the Unraveler",
			"Dragonblight",
			26.2,
			50.7,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12104] = {
		{
			12104,
			"Return to Soar",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26505,
			"Doctor Sintar Malefious",
			"Dragonblight",
			36.1,
			48.8,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12168] = {
		{
			12168,
			"[72] [72] The Favor of Zangus",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			nil,
			nil,
			"Dragonblight",
			26.1,
			43.8,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12232] = {
		{
			12232,
			"Bombard the Ballistae",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27320,
			"Deathguard Molder",
			"Dragonblight",
			76.59999999999999,
			62.6,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12296] = {
		{
			12296,
			"Life or Death",
			74,
			"Grizzly Hills",
			3,
		},
		{
			81,
		},
		{
			27484,
			"Rheanna",
			"Grizzly Hills",
			40.5,
			42.6,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24718] = {
		{
			24718,
			"The Mighty U'cha",
			53,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			nil,
			nil,
			"Un'Goro Crater",
			64.8,
			16.6,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12424] = {
		{
			12424,
			"Gorgonna",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26860,
			"Conqueror Krenna",
			"Grizzly Hills",
			20.7,
			64.2,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12488] = {
		{
			12488,
			"The High Executor Needs You",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26415,
			"Senior Sergeant Juktok",
			"Dragonblight",
			36.7,
			46.6,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12552] = {
		{
			12552,
			"Death to the Necromagi",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28283,
			"Sergeant Moonshard",
			"Zul'Drak",
			58.1,
			72.09999999999999,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25230] = {
		{
			25230,
			"More Than Illness",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39377,
			"Konu Runetotem",
			"Feralas",
			41.4,
			15.4,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12680] = {
		{
			12680,
			"Grand Theft Palomino",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28653,
			"Salanar the Horseman",
			"Plaguelands: The Scarlet Enclave",
			52.7,
			34.1,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25486] = {
		{
			25486,
			"The Grimtotem are Coming",
			40,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39946,
			"Caryssia Moonhunter",
			"Feralas",
			86.09999999999999,
			45.2,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25614] = {
		{
			25614,
			"The Only Way Down is in a Body Bag",
			25,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			39256,
			"Kalen Trueshot",
			"Stonetalon Mountains",
			71.8,
			45.6,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12872] = {
		{
			12872,
			"Norgannon's Shell",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			nil,
			nil,
			"The Storm Peaks",
			37.5,
			46.8,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12936] = {
		{
			12936,
			"",
			0,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			30009,
			"Wodin the Troll-Servant",
			"Zul'Drak",
			48,
			56.7,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13000] = {
		{
			13000,
			"Emergency Measures",
			79,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30247,
			"Bloodguard Lorga",
			"The Storm Peaks",
			36.5,
			49.1,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13064] = {
		{
			13064,
			"[80] Sibling Rivalry",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29445,
			"Thorim",
			"The Storm Peaks",
			33.5,
			58.1,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13128] = {
		{
			13128,
			"A Wing and a Prayer [Dungeon]",
			80,
			"The Oculus",
			1,
		},
		{
			1050,
		},
		{
			28012,
			"Image of Belgaristrasz",
			"The Oculus",
			36.2,
			39.3,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26382] = {
		{
			26382,
			"Can't Make An Omelette Without...",
			34,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42896,
			"Apothecary Surlis",
			"The Hinterlands",
			31.9,
			58.4,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26510] = {
		{
			26510,
			"We Must Prepare!",
			16,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			344,
			"Magistrate Solomon",
			"Redridge Mountains",
			28.9,
			41,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13320] = {
		{
			13320,
			"Cannot Reproduce",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29799,
			"Thassarian",
			"Icecrown",
			57.5,
			39.3,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26766] = {
		{
			26766,
			"Big Game, Big Bait",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44010,
			"Stormcaller Mylra",
			"Deepholm",
			64.5,
			82.3,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26894] = {
		{
			26894,
			"Blackfathom Deeps",
			24,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			34122,
			"Commander Grimfang",
			"Ashenvale",
			12,
			33.8,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13512] = {
		{
			13512,
			"Strategic Strikes",
			14,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32963,
			"Lieutenant Morra Starbreeze",
			"Darkshore",
			58.9,
			19.5,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13576] = {
		{
			13576,
			"Mutual Aid",
			15,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33117,
			"Elder Brownpaw",
			"Darkshore",
			41,
			56.5,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13640] = {
		{
			13640,
			"Management Material",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33421,
			"Gorka",
			"Ashenvale",
			72.90000000000001,
			80.40000000000001,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27406] = {
		{
			27406,
			"A Man Named Godfrey",
			16,
			"Ruins of Gilneas",
			1,
		},
		{
			49,
		},
		{
			nil,
			nil,
			"Ruins of Gilneas",
			72.90000000000001,
			30.3,
			684,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13768] = {
		{
			13768,
			"A Blade Fit For A Champion",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33372,
			"Zul'tore",
			"Icecrown",
			76,
			24.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27662] = {
		{
			27662,
			"Unbinding",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46243,
			"Initiate Goldmine",
			"Twilight Highlands",
			37.5,
			88.59999999999999,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27790] = {
		{
			27790,
			"The Defias Kingpin",
			17,
			"The Deadmines",
			1,
		},
		{
			1015,
		},
		{
			nil,
			nil,
			"The Deadmines",
			59.3,
			37.1,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27918] = {
		{
			27918,
			"The Harborage",
			55,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			18221,
			"Holaaru",
			"Swamp of Sorrows",
			69.8,
			36.6,
			38,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28046] = {
		{
			28046,
			"Finish The Job",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48250,
			"Lieutenant Farnsworth",
			"Tol Barad Peninsula",
			74.59999999999999,
			59.5,
			709,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28174] = {
		{
			28174,
			"Burning Vengeance",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			47811,
			"John J. Keeshan",
			"Burning Steppes",
			17.3,
			52,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14152] = {
		{
			14152,
			"Rescue at Sea",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34880,
			"Narasi Snowdawn",
			"Icecrown",
			76.2,
			19.6,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28430] = {
		{
			28430,
			"A Perfect Costume",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48001,
			"Thelaron Direneedle",
			"Burning Steppes",
			45.5,
			46.2,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28558] = {
		{
			28558,
			"Hero's Call: Uldum!",
			84,
			"Ruins of Uldum",
			4,
		},
		{
			27,
		},
		{
			nil,
			nil,
			"Stormwind City",
			63,
			71.40000000000001,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14344] = {
		{
			14344,
			"Jugkar's Undoing",
			35,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Desolace",
			52,
			70.40000000000001,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14408] = {
		{
			14408,
			"Nine's Plan",
			14,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36500,
			"Subject Nine",
			"Azshara",
			42.2,
			76,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14472] = {
		{
			14472,
			"In The Face!",
			13,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36744,
			"Glix Grindlock",
			"Azshara",
			29.3,
			57.7,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13756] = {
		{
			13756,
			"The Grand Melee",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33656,
			"Ranii",
			"Icecrown",
			76.09999999999999,
			19.1,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[6661] = {
		{
			6661,
			"Deeprun Rat Roundup",
			12,
			"Ironforge",
			1,
		},
		{
			43,
		},
		{
			12997,
			"Monty",
			"Deeprun Tram",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13205] = {
		{
			13205,
			"Disarmament [Dungeon]",
			71,
			"Utgarde Keep",
			1,
		},
		{
			1054,
		},
		{
			24111,
			"Defender Mordun",
			"Howling Fjord",
			59.5,
			48.9,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28763] = {
		{
			28763,
			"Beating them Back!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10223] = {
		{
			10223,
			"Down With Daellis",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19488,
			"Custodian Dieworth",
			"Netherstorm",
			57.5,
			86.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28507] = {
		{
			28507,
			"Hero's Call: Tanaris!",
			45,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			nil,
			nil,
			"Darnassus",
			45.1,
			49.9,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28379] = {
		{
			28379,
			"Ogre Bashin'",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48472,
			"Colin Thundermar",
			"Twilight Highlands",
			38.2,
			34.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28251] = {
		{
			28251,
			"Trouble at Southshore",
			22,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			47900,
			"Master Apothecary Lydon",
			"Hillsbrad Foothills",
			36.7,
			61.2,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28123] = {
		{
			28123,
			"The Demon Chain",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47417,
			"Zaela",
			"Twilight Highlands",
			54.4,
			43.8,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9903] = {
		{
			9903,
			"The Biggest of Them All",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18018,
			"Zurjaya",
			"Zangarmarsh",
			32.2,
			49.6,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9839] = {
		{
			9839,
			"Overlord Gorefist",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18008,
			"Ikuti",
			"Zangarmarsh",
			42,
			27.2,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9775] = {
		{
			9775,
			"Report to Shadow Hunter Denjai",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18011,
			"Zurai",
			"Zangarmarsh",
			85.3,
			54.7,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27611] = {
		{
			27611,
			"Blood on the Sand",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46089,
			"Rok'tar",
			"Twilight Highlands",
			78.2,
			62.6,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27483] = {
		{
			27483,
			"Practical Vengeance",
			18,
			"Alterac Mountains",
			1,
		},
		{
			42,
		},
		{
			1938,
			"Dalar Dawnweaver",
			"Silverpine Forest",
			47,
			43.2,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[193] = {
		{
			193,
			"Panther Mastery",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			718,
			"Sir S. J. Erlgadin",
			"Northern Stranglethorn",
			43.8,
			22.4,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24606] = {
		{
			24606,
			"Blood of the Barrens",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			nil,
			nil,
			"Southern Barrens",
			44.1,
			82.5,
			607,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9455] = {
		{
			9455,
			"Strange Findings",
			7,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			nil,
			nil,
			"Azuremyst Isle",
			55.2,
			41.7,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9391] = {
		{
			9391,
			"Marking the Path",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16789,
			"Ranger Captain Venn'ren",
			"Hellfire Peninsula",
			28.5,
			60.3,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26843] = {
		{
			26843,
			"A Tiny, Clever Commander",
			13,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1343,
			"Mountaineer Stormpike",
			"Loch Modan",
			25.4,
			18.1,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28560] = {
		{
			28560,
			"Warchief's Command: Ghostlands!",
			10,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			49750,
			"Warchief's Herald",
			"Silvermoon City",
			62.3,
			60,
			480,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26587] = {
		{
			26587,
			"Breaking Out is Hard to Do",
			17,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			43270,
			"Messner",
			"Redridge Mountains",
			47.6,
			41.9,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9731] = {
		{
			9731,
			"Drain Schematics",
			63,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			nil,
			nil,
			"Zangarmarsh",
			61.9,
			40.7,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12227] = {
		{
			12227,
			"Doing Your Duty",
			73,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27277,
			"Master Woodsman Anderhol",
			"Grizzly Hills",
			32.1,
			60,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25122] = {
		{
			25122,
			"Morale Boost",
			9,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			39199,
			"Assistant Greely",
			"The Lost Isles",
			53.1,
			36.5,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10036] = {
		{
			10036,
			"Torgos! [Group]",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18705,
			"Mawg Grimshot",
			"Terokkar Forest",
			49.3,
			45.9,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9854] = {
		{
			9854,
			"Windroc Mastery",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18200,
			"Shado 'Fitz' Farstrider",
			"Nagrand",
			71.5,
			40.5,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27037] = {
		{
			27037,
			"Vyrin's Revenge",
			16,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1187,
			"Daryl the Youngling",
			"Loch Modan",
			83.5,
			65.5,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13776] = {
		{
			13776,
			"A Valiant's Field Training",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33403,
			"Runok Wildmane",
			"Icecrown",
			76.2,
			24.6,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24463] = {
		{
			24463,
			"Probing into Ashenvale",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36728,
			"Kroum",
			"Azshara",
			14.3,
			65.09999999999999,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24591] = {
		{
			24591,
			"Changing of the Gar'dul",
			33,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37811,
			"Warlord Gar'dul",
			"Southern Barrens",
			41.7,
			69.8,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24719] = {
		{
			24719,
			"Claws of White",
			51,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38274,
			"Garl Stormclaw",
			"Un'Goro Crater",
			70.5,
			76.8,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27405] = {
		{
			27405,
			"Fall Back!",
			15,
			"Ruins of Gilneas",
			1,
		},
		{
			49,
		},
		{
			nil,
			nil,
			"Ruins of Gilneas",
			54.7,
			44.5,
			684,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24975] = {
		{
			24975,
			"Fields of Grief",
			6,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1518,
			"Apothecary Johaan",
			"Tirisfal Glades",
			44.6,
			53.6,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25103] = {
		{
			25103,
			"Bootlegger Outpost",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38703,
			"Megs Dreadshredder",
			"Tanaris",
			71.90000000000001,
			45.4,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13833] = {
		{
			13833,
			"Blood Is Thicker",
			80,
			"Fishing",
			3,
		},
		{
			3007,
		},
		{
			28742,
			"Marcia Chase",
			"Dalaran",
			52.6,
			64.8,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25359] = {
		{
			25359,
			"Toshe's Vengeance",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39876,
			"Felora Firewreath",
			"Shimmering Expanse",
			49.5,
			42.4,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25487] = {
		{
			25487,
			"The Grimtotem are Coming",
			40,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			39895,
			"Kanati Greycloud",
			"Thousand Needles",
			11.1,
			11.3,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25615] = {
		{
			25615,
			"Return to Stardust",
			25,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			39256,
			"Kalen Trueshot",
			"Stonetalon Mountains",
			71.8,
			45.7,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25743] = {
		{
			25743,
			"Decisions, Decisions",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			46458,
			"Budd",
			"Kelp'thar Forest",
			58.3,
			48.7,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25871] = {
		{
			25871,
			"Save the Sentinel",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			41444,
			"Brienna Starglow",
			"Thousand Needles",
			46.8,
			56.1,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25999] = {
		{
			25999,
			"Barrier to Entry",
			26,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			34341,
			"Saurboz",
			"Stonetalon Mountains",
			74.3,
			47.7,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26127] = {
		{
			26127,
			"The Twilight's Hammer Revealed",
			25,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			42160,
			"Thargas Anvilmar",
			"Wetlands",
			49.5,
			17.3,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26255] = {
		{
			26255,
			"Return to the Temple of Earth",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42684,
			"Stormcaller Mylra",
			"Deepholm",
			64.2,
			53.7,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26383] = {
		{
			26383,
			"Breaking Waves of Change",
			10,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			42936,
			"Sentinel Cordressa Briarbow",
			"Darnassus",
			44,
			76.2,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9161] = {
		{
			9161,
			"The Traitor's Shadow",
			16,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16203,
			"Ranger Vynna",
			"Ghostlands",
			71.90000000000001,
			32.7,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26639] = {
		{
			26639,
			"Point of Contact: Brubaker",
			18,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			43458,
			"John J. Keeshan",
			"Redridge Mountains",
			52.5,
			55.4,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25488] = {
		{
			25488,
			"Two If By Boat",
			40,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			39992,
			"Rendow",
			"Feralas",
			88.40000000000001,
			44.5,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26895] = {
		{
			26895,
			"The Thunderdrome!",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38578,
			"Flinn",
			"Tanaris",
			40.2,
			77.09999999999999,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9417] = {
		{
			9417,
			"The Arakkoa Threat",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16850,
			"Gremni Longbeard",
			"Hellfire Peninsula",
			23.9,
			72.09999999999999,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27151] = {
		{
			27151,
			"Taelan Fordring's Legacy",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			45147,
			"Daria L'Rayne",
			"Western Plaguelands",
			42.1,
			14.9,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9545] = {
		{
			9545,
			"The Seer's Relic",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16796,
			"Amaan the Wise",
			"Hellfire Peninsula",
			23.4,
			36.4,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27407] = {
		{
			27407,
			"[39] [39] Bloodfen Feathers",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23579,
			"Brogg",
			"Dustwallow Marsh",
			41.8,
			73.90000000000001,
			141,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27535] = {
		{
			27535,
			"Just a Little Touched",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45828,
			"Argent Apothecary Judkins",
			"Eastern Plaguelands",
			17.8,
			27.9,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27663] = {
		{
			27663,
			"Tastes Like Strider",
			52,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			46182,
			"Pierre Fishflay",
			"Swamp of Sorrows",
			74.2,
			12.4,
			38,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27791] = {
		{
			27791,
			"Dustwind Dig",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46664,
			"Dr. Hieronymus Blam",
			"Badlands",
			47.2,
			56.5,
			17,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9865] = {
		{
			9865,
			"Once Were Warriors",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18229,
			"Saurfang the Younger",
			"Nagrand",
			32.4,
			36,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28047] = {
		{
			28047,
			"[41] [41] Freezing the Pipes",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47383,
			"Brivelthwerp",
			"Thousand Needles",
			69.90000000000001,
			85.09999999999999,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9993] = {
		{
			9993,
			"Olemba Seed Oil",
			63,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18385,
			"Rakoria",
			"Terokkar Forest",
			50.1,
			44.9,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10057] = {
		{
			10057,
			"Looking to the Leadership",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16827,
			"Honor Guard Wesilow",
			"Hellfire Peninsula",
			50.9,
			60.3,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10121] = {
		{
			10121,
			"Eradicate the Burning Legion",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			3230,
			"Nazgrel",
			"Hellfire Peninsula",
			55,
			35.9,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10185] = {
		{
			10185,
			"A Fate Worse Than Death",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19488,
			"Custodian Dieworth",
			"Netherstorm",
			57.5,
			86.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10249] = {
		{
			10249,
			"Back to the Chief!",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19832,
			"Doctor Vomisa, Ph.T.",
			"Netherstorm",
			37.3,
			63.8,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10313] = {
		{
			10313,
			"Measuring Warp Energies",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19466,
			"Exarch Orelis",
			"Netherstorm",
			32.1,
			64.2,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[5763] = {
		{
			5763,
			"Hunting in Stranglethorn",
			31,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			11877,
			"Roon Wildmane",
			"Desolace",
			25.1,
			72.2,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14288] = {
		{
			14288,
			"Safety in Numbers",
			3,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35872,
			"Myriam Spellwaker",
			"Gilneas City",
			68,
			64.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10505] = {
		{
			10505,
			"The Bloodmaul Ogres",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21147,
			"Tor'chunk Twoclaws",
			"Blade's Edge Mountains",
			51.9,
			58.5,
			475,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10569] = {
		{
			10569,
			"[69] The Sketh'lon Wreckage",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22042,
			"Gryphonrider Kieran",
			"Shadowmoon Valley",
			38.7,
			54.1,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10633] = {
		{
			10633,
			"Teron Gorefiend - Lore and Legend",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21772,
			"Chief Apothecary Hildagard",
			"Shadowmoon Valley",
			29.9,
			27.7,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9994] = {
		{
			9994,
			"What Are These Things?",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18446,
			"Earthbinder Tavgren",
			"Terokkar Forest",
			44.4,
			26.3,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10761] = {
		{
			10761,
			"Find the Deserter",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			22043,
			"Sergeant Kargrul",
			"Shadowmoon Valley",
			31,
			29.9,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10825] = {
		{
			10825,
			"The Truth Unorbed",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			nil,
			nil,
			"Blade's Edge Mountains",
			41.4,
			21.2,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10889] = {
		{
			10889,
			"Return to Shattrath",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22272,
			"Kirrik the Awakened",
			"Terokkar Forest",
			37.5,
			51.2,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28305] = {
		{
			28305,
			"The Fate of Bloodvenom Post",
			48,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47617,
			"Farlus Wildheart",
			"Felwood",
			44.1,
			61.8,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11017] = {
		{
			11017,
			"Netherdust Pollen",
			70,
			"Shadowmoon Valley",
			3,
		},
		{
			73,
		},
		{
			23140,
			"Taskmaster Varkule Dragonbreath",
			"Shadowmoon Valley",
			66.09999999999999,
			86.40000000000001,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11081] = {
		{
			11081,
			"The Great Murkblood Revolt",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			nil,
			nil,
			"Shadowmoon Valley",
			66.09999999999999,
			84.40000000000001,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27751] = {
		{
			27751,
			"Crushing the Wildhammer",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46313,
			"Narkrall Rakeclaw",
			"Twilight Highlands",
			54.8,
			44.1,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28188] = {
		{
			28188,
			"Prison Revolt",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48074,
			"Marshal Fallows",
			"Tol Barad",
			51.4,
			49.4,
			708,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11273] = {
		{
			11273,
			"The Human League",
			70,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23548,
			"Beltrand McSorf",
			"Howling Fjord",
			60.2,
			61,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12746] = {
		{
			12746,
			"A Special Surprise",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			29053,
			"Knight Commander Plaguefist",
			"Plaguelands: The Scarlet Enclave",
			53,
			81.90000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12810] = {
		{
			12810,
			"[80] Blood in the Water",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29344,
			"Lord-Commander Arete",
			"Icecrown",
			19.6,
			48.1,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11465] = {
		{
			11465,
			"The Ransacked Caravan",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24750,
			"Hidalgo the Master Falconer",
			"Howling Fjord",
			75.3,
			64.90000000000001,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11529] = {
		{
			11529,
			"Sorlof's Booty",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24910,
			"Captain Ellis",
			"Howling Fjord",
			45.7,
			82.90000000000001,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11593] = {
		{
			11593,
			"The Honored Dead",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25336,
			"Grunt Ragefist",
			"Borean Tundra",
			48.5,
			19.7,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25746] = {
		{
			25746,
			"Sethria's Brood",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			41006,
			"Thisalee Crow",
			"Mount Hyjal",
			32.8,
			70.7,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11721] = {
		{
			11721,
			"Gammothra the Tormentor",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25380,
			"Primal Mighthorn",
			"Borean Tundra",
			52.2,
			52.8,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[5893] = {
		{
			5893,
			"Coldtooth Supplies [PvP]",
			85,
			"Alterac Valley",
			1,
		},
		{
			5002,
		},
		{
			12097,
			"Frostwolf Quartermaster",
			"Alterac Valley",
			46.7,
			84.09999999999999,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13642] = {
		{
			13642,
			"Bathed in Light",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3847,
			"Orendil Broadleaf",
			"Ashenvale",
			26.9,
			36.6,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11913] = {
		{
			11913,
			"Take No Chances",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			26085,
			"Wendy Darren",
			"Borean Tundra",
			58.3,
			62.7,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11977] = {
		{
			11977,
			"A Tauren Among Taunka",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26156,
			"Wartook Iceborn",
			"Dragonblight",
			12.8,
			51.7,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12041] = {
		{
			12041,
			"The Lost Empire",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26653,
			"Kilix the Unraveler",
			"Dragonblight",
			26.2,
			50.7,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12105] = {
		{
			12105,
			"Descent into Darkness",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			nil,
			nil,
			"Grizzly Hills",
			36.1,
			67.7,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12169] = {
		{
			12169,
			"[72] [72] The High Cultist",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26973,
			"Warden Jodi Moonsong ",
			"Dragonblight",
			29.2,
			55.6,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13706] = {
		{
			13706,
			"Valiant Of Darnassus",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33592,
			"Jaelyne Evensong",
			"Icecrown",
			76.3,
			19.1,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12297] = {
		{
			12297,
			"Of Traitors and Treason",
			72,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23749,
			"Captain Adams",
			"Howling Fjord",
			28.8,
			44.1,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24720] = {
		{
			24720,
			"Crystals of Power",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9117,
			"J.D. Collie",
			"Un'Goro Crater",
			54.2,
			62.4,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12425] = {
		{
			12425,
			"Ruuna the Blind",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27102,
			"Gorgonna",
			"Grizzly Hills",
			20.9,
			64.09999999999999,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24976] = {
		{
			24976,
			"Variety is the Spice of Death",
			6,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1518,
			"Apothecary Johaan",
			"Tirisfal Glades",
			44.6,
			53.7,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25104] = {
		{
			25104,
			"Digsite Status",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39118,
			"General Twinbraid",
			"Southern Barrens",
			43.6,
			78.3,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12617] = {
		{
			12617,
			"Exterminate the Intruders",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27801,
			"Avatar of Freya",
			"Sholazar Basin",
			64.7,
			48.7,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[6341] = {
		{
			6341,
			"To Darnassus",
			7,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			40553,
			"Fidelio",
			"Teldrassil",
			55.5,
			50.5,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12745] = {
		{
			12745,
			"A Special Surprise",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			29053,
			"Knight Commander Plaguefist",
			"Plaguelands: The Scarlet Enclave",
			53,
			82.09999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25616] = {
		{
			25616,
			"Hellscream's Legacy",
			26,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			34354,
			"Huntress Jalin",
			"Ashenvale",
			35.1,
			71.59999999999999,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25744] = {
		{
			25744,
			"[41] [41] Negotiations",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40027,
			"Fizzle Brassbolts",
			"Thousand Needles",
			75.90000000000001,
			74.59999999999999,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25872] = {
		{
			25872,
			"The Brave and the Bold",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			41421,
			"Rau Cliffrunner",
			"Thousand Needles",
			46.8,
			56,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26000] = {
		{
			26000,
			"Spelunking",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			40105,
			"Erunak Stonespeaker",
			"Kelp'thar Forest",
			46.4,
			46.8,
			610,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26128] = {
		{
			26128,
			"The Battle of Thandol Span",
			25,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			42160,
			"Thargas Anvilmar",
			"Wetlands",
			49.4,
			17.1,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26256] = {
		{
			26256,
			"Bleed the Bloodshaper",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			nil,
			nil,
			"Deepholm",
			60.1,
			57.8,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26384] = {
		{
			26384,
			"Darkcleric Marnal",
			34,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42622,
			"Eliza Darkgrin",
			"The Hinterlands",
			67.7,
			66.59999999999999,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26512] = {
		{
			26512,
			"Tuning the Gnomecorder",
			16,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			344,
			"Magistrate Solomon",
			"Redridge Mountains",
			28.9,
			41,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26640] = {
		{
			26640,
			"Unspeakable Atrocities",
			18,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			43508,
			"Brubaker",
			"Redridge Mountains",
			53.1,
			67.8,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26768] = {
		{
			26768,
			"To Catch a Dragon",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44010,
			"Stormcaller Mylra",
			"Deepholm",
			64.5,
			82.3,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26896] = {
		{
			26896,
			"The Thunderdrome!",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			44374,
			"Sherm",
			"Tanaris",
			33.2,
			76.90000000000001,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27024] = {
		{
			27024,
			"Partners in Crime",
			44,
			"Razorfen Downs",
			1,
		},
		{
			1008,
		},
		{
			44837,
			"Koristrasza",
			"Razorfen Downs",
			48.9,
			30.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27152] = {
		{
			27152,
			"Unusual Behavior... Even For Gnolls",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			nil,
			nil,
			"Western Plaguelands",
			55,
			23.3,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27280] = {
		{
			27280,
			"The Dreamseeker Calls",
			20,
			"Shaman",
			1,
		},
		{
			2008,
		},
		{
			3032,
			"Beram Skychaser",
			"Thunder Bluff",
			35.2,
			22.4,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27408] = {
		{
			27408,
			"Banner of the Stonemaul",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23579,
			"Brogg",
			"Dustwallow Marsh",
			41.9,
			73.8,
			141,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13769] = {
		{
			13769,
			"A Worthy Weapon",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33372,
			"Zul'tore",
			"Icecrown",
			76,
			24.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27664] = {
		{
			27664,
			"Darkmoon Volcanic Deck",
			85,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			nil,
			nil,
			"Orgrimmar",
			50.4,
			80.5,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13897] = {
		{
			13897,
			"The Battle for Darkshore",
			19,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			34422,
			"Malfurion Stormrage",
			"Darkshore",
			32.8,
			84.3,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13961] = {
		{
			13961,
			"Drag it Out of Them",
			12,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34513,
			"Togrik",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28048] = {
		{
			28048,
			"[42] [42] That Smart One's Gotta Go",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47383,
			"Brivelthwerp",
			"Thousand Needles",
			69.90000000000001,
			85.09999999999999,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[7045] = {
		{
			7045,
			"A Smokywood Pastures' Thank You!",
			85,
			"Winter Veil",
			1,
		},
		{
			4013,
		},
		{
			13433,
			"Wulmort Jinglepocket",
			"Ironforge",
			33.3,
			67.2,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14153] = {
		{
			14153,
			"Life of the Party",
			3,
			"Kezan",
			1,
		},
		{
			90,
		},
		{
			35054,
			"Chip Endale",
			"Kezan",
			56.4,
			76.59999999999999,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28432] = {
		{
			28432,
			"Into the Black Tooth Hovel",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48568,
			"Eitrigg",
			"Burning Steppes",
			44.6,
			44.5,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14281] = {
		{
			14281,
			"Arcane Missiles",
			2,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35872,
			"Myriam Spellwaker",
			"Gilneas City",
			68,
			64.90000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14345] = {
		{
			14345,
			"Wash Out",
			17,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35142,
			"Ergll",
			"Azshara",
			70.3,
			36.1,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28816] = {
		{
			28816,
			"To the Depths",
			80,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			45244,
			"Farseer Krogar",
			"Orgrimmar",
			50.3,
			38.4,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14473] = {
		{
			14473,
			"It's Our Problem Now",
			6,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			35786,
			"Maxx Avalanche",
			"The Lost Isles",
			27.8,
			74.40000000000001,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25232] = {
		{
			25232,
			"The Burning Blade",
			10,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			3142,
			"Orgnil Soulscar",
			"Durotar",
			52.2,
			43.1,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[334] = {
		{
			334,
			"Package for Thurman",
			2,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			1428,
			"Rema Schneider",
			"Stormwind City",
			57.9,
			67.09999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9544] = {
		{
			9544,
			"The Prophecy of Akida",
			10,
			"Azuremyst Isle",
			1,
		},
		{
			5,
		},
		{
			17364,
			"Totem of Vark",
			"Azuremyst Isle",
			28.1,
			62.3,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27020] = {
		{
			27020,
			"The First Lesson",
			3,
			"Warrior",
			1,
		},
		{
			2010,
		},
		{
			3059,
			"Harutt Thunderhorn",
			"Mulgore",
			45,
			75.59999999999999,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26515] = {
		{
			26515,
			"Ongo'longo's Revenge",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43157,
			"Doran Steelwing",
			"The Hinterlands",
			63.9,
			59.9,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9931] = {
		{
			9931,
			"Returning the Favor",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18261,
			"Lantresor of the Blade",
			"Nagrand",
			73.8,
			62.7,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28179] = {
		{
			28179,
			"Mud Hunter",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			47811,
			"John J. Keeshan",
			"Burning Steppes",
			17.3,
			52.2,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26012] = {
		{
			26012,
			"Trouble at Wyrmrest [Raid]",
			82,
			"The Ruby Sanctum",
			1,
		},
		{
			1087,
		},
		{
			16128,
			"Rhonin",
			"Dalaran",
			0,
			0,
			504,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13832] = {
		{
			13832,
			"Jewel Of The Sewers",
			80,
			"Fishing",
			3,
		},
		{
			3007,
		},
		{
			28742,
			"Marcia Chase",
			"Dalaran",
			52.9,
			65,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13755] = {
		{
			13755,
			"A Valiant's Field Training",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33655,
			"Saandos",
			"Icecrown",
			76.09999999999999,
			19.2,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27239] = {
		{
			27239,
			"Survey Alcaz Island",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4968,
			"Lady Jaina Proudmoore",
			"Dustwallow Marsh",
			66.3,
			49.2,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13048] = {
		{
			13048,
			"Where Time Went Wrong",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30381,
			"Xarantaur",
			"The Storm Peaks",
			65.7,
			51.4,
			495,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28786] = {
		{
			28786,
			"Join the Battle!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			375,
			"Priestess Anetta",
			"Elwynn Forest",
			49.7,
			39.5,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14261] = {
		{
			14261,
			"Ice Cold",
			19,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			37064,
			"Feno Blastnoggin",
			"Azshara",
			66.5,
			19.6,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25748] = {
		{
			25748,
			"Clear Goals",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40643,
			"Admiral Dvorek",
			"Shimmering Expanse",
			33,
			67.8,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13387] = {
		{
			13387,
			"Securing the Perimeter",
			80,
			"Icecrown Citadel",
			1,
		},
		{
			1072,
		},
		{
			31444,
			"Captain Kendall",
			"Icecrown",
			51.8,
			86.7,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[7781] = {
		{
			7781,
			"The Lord of Blackrock",
			60,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			11583,
			"Nefarian",
			"Blackwing Lair",
			72.09999999999999,
			70.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13963] = {
		{
			13963,
			"By Hook Or By Crook",
			12,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34513,
			"Togrik",
			"Northern Barrens",
			56.6,
			40.3,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28180] = {
		{
			28180,
			"The Sand, the Cider, and the Orb",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			47811,
			"John J. Keeshan",
			"Burning Steppes",
			17.3,
			51.9,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14272] = {
		{
			14272,
			"Eviscerate",
			2,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35871,
			"Loren the Fence",
			"Gilneas City",
			71.2,
			65.5,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[7142] = {
		{
			7142,
			"The Battle for Alterac [PvP]",
			57,
			"Alterac Valley",
			1,
		},
		{
			5002,
		},
		{
			13817,
			"Voggah Deathgrip",
			"Hillsbrad Foothills",
			58.6,
			34.2,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25] = {
		{
			25,
			"Simmer Down Now",
			25,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			34559,
			"Captain Tarkan",
			"Ashenvale",
			50.2,
			67.40000000000001,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27285] = {
		{
			27285,
			"The Black Shield",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4941,
			"Caz Twosprocket",
			"Dustwallow Marsh",
			64.7,
			50.5,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24] = {
		{
			24,
			"Shadumbra's Head",
			24,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			nil,
			nil,
			"Ashenvale",
			61.2,
			51.6,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25366] = {
		{
			25366,
			"The Battle Plans",
			39,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			5255,
			"Woodpaw Reaver",
			"Feralas",
			71.59999999999999,
			56,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13196] = {
		{
			13196,
			"Bones and Arrows [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31052,
			"Bowyer Randolph",
			"Wintergrasp",
			72.5,
			31.1,
			501,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14382] = {
		{
			14382,
			"Two By Sea",
			6,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36290,
			"Lord Godfrey",
			"Gilneas",
			28.8,
			63.9,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28634] = {
		{
			28634,
			"Extinction",
			25,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			49201,
			"Nils Beerot",
			"Hillsbrad Foothills",
			60,
			63.4,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28506] = {
		{
			28506,
			"March of the Stormpike",
			23,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			nil,
			nil,
			"Hillsbrad Foothills",
			57,
			46.2,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24593] = {
		{
			24593,
			"[9] Neither Human Nor Beast",
			9,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			37195,
			"Lord Darius Crowley",
			"Gilneas",
			68.7,
			73.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24721] = {
		{
			24721,
			"The Eastern Pylon",
			53,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38263,
			"Ithis Moonwarden",
			"Un'Goro Crater",
			76.90000000000001,
			49.2,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8330] = {
		{
			8330,
			"Solanian's Belongings",
			4,
			"Sunstrider Isle",
			1,
		},
		{
			40,
		},
		{
			15295,
			"Well Watcher Solanian",
			"Eversong Woods",
			39,
			20.2,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24977] = {
		{
			24977,
			"Johaan's Experiment",
			6,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1518,
			"Apothecary Johaan",
			"Tirisfal Glades",
			44.6,
			53.6,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25105] = {
		{
			25105,
			"Nibbler!  No!",
			83,
			"Jewelcrafting",
			3,
		},
		{
			3010,
		},
		{
			50480,
			"Isabel Jones",
			"Stormwind City",
			63.6,
			61.5,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25233] = {
		{
			25233,
			"End of the Supply Line",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39427,
			"Jadi Falaryn",
			"Mount Hyjal",
			35.7,
			19.6,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25361] = {
		{
			25361,
			"A New Cloak's Sheen",
			38,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			4544,
			"Krueg Skullsplitter",
			"Feralas",
			75,
			43.1,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25489] = {
		{
			25489,
			"Two If By Boat",
			40,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			39963,
			"Motega Firemane",
			"Thousand Needles",
			10.6,
			8.5,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25617] = {
		{
			25617,
			"Into the Maw!",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39622,
			"Spirit of Lo'Gosh",
			"Mount Hyjal",
			26.1,
			36.9,
			606,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25745] = {
		{
			25745,
			"Negotiations",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40028,
			"Pozzik",
			"Thousand Needles",
			76,
			74.59999999999999,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25873] = {
		{
			25873,
			"Horn of the Traitor",
			43,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			45271,
			"Montarr",
			"Thousand Needles",
			44.6,
			50,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26001] = {
		{
			26001,
			"The Missing Blastgineer",
			26,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			34341,
			"Saurboz",
			"Stonetalon Mountains",
			74.3,
			47.7,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26129] = {
		{
			26129,
			"Brothers In Arms",
			3,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35077,
			"Lord Darius Crowley",
			"Gilneas City",
			55.1,
			63.3,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26257] = {
		{
			26257,
			"It's Alive!",
			13,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			233,
			"Farmer Saldean",
			"Westfall",
			56,
			31.3,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26385] = {
		{
			26385,
			"Breaking Waves of Change",
			10,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			48736,
			"Genn Greymane",
			"Darnassus",
			48.2,
			14.7,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9162] = {
		{
			9162,
			"Hints of the Past",
			16,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			nil,
			nil,
			"Ghostlands",
			79.7,
			17.7,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26641] = {
		{
			26641,
			"Can't Make An Omelette Without...",
			34,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43200,
			"Gilda Cloudcaller",
			"The Hinterlands",
			30.7,
			47.2,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26769] = {
		{
			26769,
			"Raging River Ride",
			16,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3391,
			"Gazlowe",
			"Northern Barrens",
			68.40000000000001,
			69.2,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26897] = {
		{
			26897,
			"Blackfathom Deeps",
			24,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			3846,
			"Talen",
			"Ashenvale",
			18.3,
			20.5,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9418] = {
		{
			9418,
			"Avruu's Orb",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			nil,
			nil,
			"Hellfire Peninsula",
			25.7,
			76.90000000000001,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27153] = {
		{
			27153,
			"The Good People of Hearthglen",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			nil,
			nil,
			"Western Plaguelands",
			57.5,
			35.8,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27281] = {
		{
			27281,
			"Grezz Ragefist",
			20,
			"Warrior",
			1,
		},
		{
			2010,
		},
		{
			4593,
			"Christoph Walker",
			"Undercity",
			47.1,
			15.9,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27409] = {
		{
			27409,
			"The Essence of Enmity",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23579,
			"Brogg",
			"Dustwallow Marsh",
			41.9,
			73.8,
			141,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9674] = {
		{
			9674,
			"The Bloodcursed Naga",
			18,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17712,
			"Captain Edward Hanes",
			"Bloodmyst Isle",
			79.09999999999999,
			22.8,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9738] = {
		{
			9738,
			"Lost in Action [Dungeon]",
			65,
			"Coilfang Reservoir",
			1,
		},
		{
			1027,
		},
		{
			17884,
			"Watcher Jhang",
			"Zangarmarsh",
			52.3,
			36.1,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9802] = {
		{
			9802,
			"Plants of Zangarmarsh",
			63,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17909,
			"Lauranna Thar'well",
			"Zangarmarsh",
			80.40000000000001,
			64.2,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9866] = {
		{
			9866,
			"He Will Walk The Earth...",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18229,
			"Saurfang the Younger",
			"Nagrand",
			32.4,
			36.1,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28049] = {
		{
			28049,
			"See the Invisible",
			46,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			nil,
			nil,
			"Felwood",
			41.9,
			72,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28177] = {
		{
			28177,
			"Stocking Up",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			47811,
			"John J. Keeshan",
			"Burning Steppes",
			17.3,
			52.2,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10058] = {
		{
			10058,
			"An Old Gift",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16825,
			"Father Malgor Devidicus",
			"Hellfire Peninsula",
			54.3,
			63.5,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28433] = {
		{
			28433,
			"Grunt Work",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48085,
			"Quartermaster Kaoshin",
			"Burning Steppes",
			45.3,
			51.5,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10186] = {
		{
			10186,
			"You're Hired!",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19570,
			"Rocket-Chief Fuselage",
			"Netherstorm",
			32.7,
			64.90000000000001,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10250] = {
		{
			10250,
			"Bloody Vengeance",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19736,
			"Althen the Historian",
			"Hellfire Peninsula",
			61.7,
			81.7,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28817] = {
		{
			28817,
			"The Rear is Clear",
			4,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.3,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28378] = {
		{
			28378,
			"Find Fanny",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48472,
			"Colin Thundermar",
			"Twilight Highlands",
			38.2,
			34.5,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10442] = {
		{
			10442,
			"Helping the Cenarion Post",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16790,
			"Falconer Drenna Riverwind",
			"Hellfire Peninsula",
			27.7,
			60.4,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10506] = {
		{
			10506,
			"A Dire Situation",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21066,
			"Rina Moonspring",
			"Blade's Edge Mountains",
			36.3,
			67.3,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10570] = {
		{
			10570,
			"To Catch A Thistlehead",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21293,
			"Borak, Son of Oronok",
			"Shadowmoon Valley",
			47.5,
			57.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10634] = {
		{
			10634,
			"Divination: Gorefiend's Armor [Group]",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21797,
			"Ancient Shadowmoon Spirit",
			"Shadowmoon Valley",
			58.2,
			70.7,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14126] = {
		{
			14126,
			"Life Savings",
			5,
			"Kezan",
			1,
		},
		{
			90,
		},
		{
			34668,
			"Sassy Hardwrench",
			"Kezan",
			59.6,
			77.09999999999999,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28173] = {
		{
			28173,
			"Blackout",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47902,
			"Lirastrasza",
			"Twilight Highlands",
			59.1,
			69.8,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10826] = {
		{
			10826,
			"Marks of Sargeras",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			22214,
			"Harbinger Saronen",
			"Shadowmoon Valley",
			62.5,
			28.5,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13998] = {
		{
			13998,
			"In Fungus We Trust",
			14,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			nil,
			nil,
			"Northern Barrens",
			48.6,
			58.3,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28425] = {
		{
			28425,
			"Return to Ariok",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			14437,
			"Gorzeeki Wildeyes",
			"Burning Steppes",
			8.300000000000001,
			35.9,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11018] = {
		{
			11018,
			"Nethercite Ore",
			70,
			"Shadowmoon Valley",
			3,
		},
		{
			73,
		},
		{
			23140,
			"Taskmaster Varkule Dragonbreath",
			"Shadowmoon Valley",
			66.09999999999999,
			86.40000000000001,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11082] = {
		{
			11082,
			"Seeker of Truth",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23149,
			"Mistress of the Mines",
			"Shadowmoon Valley",
			65.40000000000001,
			90.2,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27738] = {
		{
			27738,
			"The Pit of Scales",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46425,
			"Ramkahen Prisoner",
			"Uldum",
			71.2,
			73.7,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27610] = {
		{
			27610,
			"Scouting the Shore",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46089,
			"Rok'tar",
			"Twilight Highlands",
			78.2,
			62.6,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11274] = {
		{
			11274,
			"Zedd's Probably Dead",
			70,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24122,
			"Pulroy the Archaeologist",
			"Howling Fjord",
			59.1,
			54.5,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27482] = {
		{
			27482,
			"Into the Flames",
			43,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			nil,
			nil,
			"Eastern Plaguelands",
			67,
			9.6,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27354] = {
		{
			27354,
			"Mastering the Arcane [Dungeon]",
			20,
			"Mage",
			1,
		},
		{
			2004,
		},
		{
			331,
			"Maginor Dumas",
			"Stormwind City",
			49.2,
			87.59999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11466] = {
		{
			11466,
			"Jack Likes His Drink",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24541,
			"Taruk",
			"Howling Fjord",
			36.3,
			80.5,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11530] = {
		{
			11530,
			"The Shield of the Aesirites",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24910,
			"Captain Ellis",
			"Howling Fjord",
			41.1,
			76.2,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11594] = {
		{
			11594,
			"Put Them to Rest",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25336,
			"Grunt Ragefist",
			"Borean Tundra",
			48.5,
			19.7,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11658] = {
		{
			11658,
			"[71] [71] Plan B",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25477,
			"Crafty Wobblesprocket",
			"Borean Tundra",
			57.6,
			18.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11722] = {
		{
			11722,
			"Trophies of Gammoth",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25380,
			"Primal Mighthorn",
			"Borean Tundra",
			52.2,
			52.9,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[2947] = {
		{
			2947,
			"Return of the Ring [Dungeon]",
			34,
			"New Tinkertown",
			2,
		},
		{
			99999,
		},
		{
			nil,
			nil,
			"Gnomeregan",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[106] = {
		{
			106,
			"Young Lovers",
			6,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			251,
			"Maybell Maclure",
			"Elwynn Forest",
			43.1,
			89.59999999999999,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11914] = {
		{
			11914,
			"Keep the Secret Safe",
			71,
			"Coldarra",
			1,
		},
		{
			77,
		},
		{
			26110,
			"Librarian Serrah",
			"Borean Tundra",
			33.4,
			34.4,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11978] = {
		{
			11978,
			"Into the Fold",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26181,
			"Emissary Brighthoof",
			"Dragonblight",
			12.9,
			49.1,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12042] = {
		{
			12042,
			"Heart of the Ancients",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26543,
			"Image of Drakuru",
			"Grizzly Hills",
			17.5,
			36.4,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12106] = {
		{
			12106,
			"Search Indu'le Village",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26471,
			"Image of Archmage Aethas Sunreaver",
			"Dragonblight",
			38,
			46.3,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12170] = {
		{
			12170,
			"Blackriver Brawl",
			74,
			"Grizzly Hills",
			3,
		},
		{
			81,
		},
		{
			27120,
			"Raider Captain Kronn",
			"Grizzly Hills",
			26.4,
			65.8,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12234] = {
		{
			12234,
			"Need to Know",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27337,
			"Spy Mistress Repine",
			"Dragonblight",
			76.8,
			63,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12298] = {
		{
			12298,
			"High Commander Halford Wyrmbane",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			23859,
			"Greer Orehammer",
			"Howling Fjord",
			31.2,
			44,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24722] = {
		{
			24722,
			"The Northern Pylon",
			53,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38275,
			"Gremix",
			"Un'Goro Crater",
			43.1,
			41.5,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[3107] = {
		{
			3107,
			"Consecrated Rune",
			3,
			"Paladin",
			1,
		},
		{
			2005,
		},
		{
			37087,
			"Jona Ironstock",
			"Dun Morogh",
			35.7,
			66.40000000000001,
			27,
			nil,
			0,
		},
		{
			1,
			4,
			2,
		},
		{
		},
	},
	[24978] = {
		{
			24978,
			"Reaping the Reapers",
			6,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1519,
			"Deathguard Simmer",
			"Tirisfal Glades",
			44.7,
			53.6,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25106] = {
		{
			25106,
			"Hands Off Me Dig!",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39155,
			"Marley Twinbraid",
			"Southern Barrens",
			47.2,
			88.5,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25234] = {
		{
			25234,
			"In the Rear With the Gear",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39427,
			"Jadi Falaryn",
			"Mount Hyjal",
			35.7,
			19.6,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25362] = {
		{
			25362,
			"A Grim Discovery",
			38,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			4544,
			"Krueg Skullsplitter",
			"Feralas",
			74.8,
			43.4,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25490] = {
		{
			25490,
			"Smashing Through Ashes",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39932,
			"Keeper Taldros",
			"Mount Hyjal",
			13.7,
			32.8,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25618] = {
		{
			25618,
			"Into the Maw!",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39627,
			"Spirit of Goldrinn",
			"Mount Hyjal",
			29.4,
			38.7,
			606,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12874] = {
		{
			12874,
			"Fervor of the Frostborn",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29593,
			"Yorg Stormheart",
			"The Storm Peaks",
			30.2,
			74.7,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12938] = {
		{
			12938,
			"The Duke",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29343,
			"Baron Sliver",
			"Icecrown",
			42.8,
			25,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26002] = {
		{
			26002,
			"Alliance Attack Plans",
			26,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			40901,
			"Blastgineer Fuzzwhistle",
			"Stonetalon Mountains",
			73.3,
			56.6,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26130] = {
		{
			26130,
			"Unplug L'ghorek",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41600,
			"Erunak Stonespeaker",
			"Abyssal Depths",
			42.6,
			37.9,
			614,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26258] = {
		{
			26258,
			"Deathwing's Fall",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43065,
			"Maruut Stonebinder",
			"Deepholm",
			49.6,
			53,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26386] = {
		{
			26386,
			"Surkhan",
			29,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42812,
			"Priestess Hu'rala",
			"Northern Stranglethorn",
			63.4,
			39.1,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13258] = {
		{
			13258,
			"Opportunity",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			62.5,
			30.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13322] = {
		{
			13322,
			"Retest Now",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			30345,
			"Chief Engineer Boltwrench",
			"Icecrown",
			60.1,
			43.9,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26770] = {
		{
			26770,
			"Mystic Masters",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43898,
			"Flint Oremantle",
			"Deepholm",
			22.8,
			52.2,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26898] = {
		{
			26898,
			"Blackfathom Deeps",
			24,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			3691,
			"Raene Wolfrunner",
			"Ashenvale",
			36.6,
			49.6,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13514] = {
		{
			13514,
			"The Ancients' Ire",
			14,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33176,
			"Kerlonian Evershade",
			"Darkshore",
			69.09999999999999,
			19.2,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27154] = {
		{
			27154,
			"Bagging Bisp",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			45149,
			"Outfitter Mendelev",
			"Western Plaguelands",
			44.9,
			12.5,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27282] = {
		{
			27282,
			"Zevrost's Behest",
			20,
			"Warlock",
			1,
		},
		{
			2009,
		},
		{
			16648,
			"Zanien",
			"Silvermoon City",
			73.3,
			45.1,
			480,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27410] = {
		{
			27410,
			"Spirits of Stonemaul Hold",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23579,
			"Brogg",
			"Dustwallow Marsh",
			41.8,
			73.90000000000001,
			141,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27538] = {
		{
			27538,
			"The Perfect Poultice",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45172,
			"Thordun Hammerblow",
			"Twilight Highlands",
			79.3,
			78.3,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13834] = {
		{
			13834,
			"Dangerously Delicious",
			80,
			"Fishing",
			3,
		},
		{
			3007,
		},
		{
			28742,
			"Marcia Chase",
			"Dalaran",
			53,
			65.2,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27794] = {
		{
			27794,
			"Return to Blam",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			nil,
			nil,
			"Badlands",
			50.2,
			53.2,
			17,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27922] = {
		{
			27922,
			"Traitors!",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46872,
			"Prince Nadun",
			"Uldum",
			59.6,
			72,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28050] = {
		{
			28050,
			"Shark Tank [Group]",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48255,
			"Camp Coordinator Brack",
			"Tol Barad Peninsula",
			73.7,
			57.8,
			709,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28178] = {
		{
			28178,
			"A Future Project",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			47811,
			"John J. Keeshan",
			"Burning Steppes",
			17.3,
			52.2,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28306] = {
		{
			28306,
			"Whisperwind Grove",
			47,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			47696,
			"Kelnir Leafsong",
			"Felwood",
			41.3,
			50,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28434] = {
		{
			28434,
			"Strategic Cuts",
			0,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48085,
			"Quartermaster Kaoshin",
			"Burning Steppes",
			45.3,
			51.6,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28562] = {
		{
			28562,
			"Hero's Call: Westfall!",
			10,
			"Westfall",
			4,
		},
		{
			67,
		},
		{
			nil,
			nil,
			"Stormwind City",
			62.7,
			71.8,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14346] = {
		{
			14346,
			"Cleansing Our Crevasse",
			34,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			36034,
			"Karnum Marshweaver",
			"Desolace",
			57.4,
			47.7,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28818] = {
		{
			28818,
			"The Rear is Clear",
			4,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.4,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14474] = {
		{
			14474,
			"Goblin Escape Pods",
			6,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			36600,
			"Geargrinder Gizmo",
			"The Lost Isles",
			24.6,
			77.90000000000001,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[3635] = {
		{
			3635,
			"Gnome Engineering",
			42,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			4586,
			"Graham Van Talen",
			"Undercity",
			75.7,
			73.40000000000001,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[192] = {
		{
			192,
			"Panther Prowess",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			718,
			"Sir S. J. Erlgadin",
			"Northern Stranglethorn",
			43.8,
			22.5,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28570] = {
		{
			28570,
			"The Bogpaddle Bullet",
			52,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			10260,
			"Kibler",
			"Burning Steppes",
			54.9,
			22.7,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13422] = {
		{
			13422,
			"Maintaining Discipline",
			79,
			"The Storm Peaks",
			3,
		},
		{
			86,
		},
		{
			29796,
			"Gretta the Arbiter",
			"The Storm Peaks",
			50.9,
			65.59999999999999,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26714] = {
		{
			26714,
			"Darkblaze, Brood of the Worldbreaker",
			20,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			nil,
			nil,
			"Redridge Mountains",
			59.5,
			54.8,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13294] = {
		{
			13294,
			"Against the Giants [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29799,
			"Thassarian",
			"Icecrown",
			58.1,
			41.2,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28150] = {
		{
			28150,
			"An Arcane Ally",
			46,
			"Felwood",
			1,
		},
		{
			12,
		},
		{
			10923,
			"Tenell Leafrunner",
			"Felwood",
			51.2,
			80.5,
			182,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13166] = {
		{
			13166,
			"The Battle For The Ebon Hold",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			31084,
			"Highlord Darion Mograine",
			"Eastern Plaguelands",
			83.40000000000001,
			49.5,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13102] = {
		{
			13102,
			"Sewer Stew",
			80,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			28705,
			"Katherine Lee",
			"Dalaran",
			40.4,
			66,
			504,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26074] = {
		{
			26074,
			"Beginning of the End",
			30,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41023,
			"Overlord Krom'gar",
			"Stonetalon Mountains",
			66.09999999999999,
			63.8,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12974] = {
		{
			12974,
			"The Champion's Call! [Group]",
			0,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			30007,
			"Gurgthock",
			"Zul'Drak",
			48.3,
			56.5,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25818] = {
		{
			25818,
			"Lifting the Curse",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41307,
			"First Mate Snellig",
			"Wetlands",
			15.3,
			29.3,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25690] = {
		{
			25690,
			"A Bloodmage's Gotta Eat Too",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			7505,
			"Bloodmage Drazial",
			"Blasted Lands",
			39.2,
			36.2,
			19,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27785] = {
		{
			27785,
			"The Admiral",
			16,
			"The Deadmines",
			1,
		},
		{
			1015,
		},
		{
			nil,
			nil,
			"The Deadmines",
			33.6,
			49.5,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13839] = {
		{
			13839,
			"Mastery Of The Charge",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33658,
			"Amariel Sunsworn",
			"Icecrown",
			76.3,
			24.3,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13775] = {
		{
			13775,
			"The Edge Of Winter",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33403,
			"Runok Wildmane",
			"Icecrown",
			76.2,
			24.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24440] = {
		{
			24440,
			"Winterhoof Cleansing",
			6,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			2948,
			"Mull Thunderhorn",
			"Mulgore",
			48.3,
			59.9,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25050] = {
		{
			25050,
			"Rocket Rescue",
			45,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38535,
			"Kelsey Steelspark",
			"Tanaris",
			51.2,
			29.9,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12462] = {
		{
			12462,
			"Breaking Off A Piece",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27319,
			"Yord \"Calamity\" Icebeard",
			"Dragonblight",
			85.90000000000001,
			51,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24794] = {
		{
			24794,
			"Speak With Spraggle",
			53,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			10302,
			"Krakle",
			"Un'Goro Crater",
			55.2,
			62.4,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26378] = {
		{
			26378,
			"Hero's Call: Westfall!",
			10,
			"Westfall",
			4,
		},
		{
			67,
		},
		{
			240,
			"Marshal Dughan",
			"Elwynn Forest",
			42.1,
			65.90000000000001,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24592] = {
		{
			24592,
			"Betrayal at Tempest's Reach",
			10,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			37874,
			"Krennan Aranas",
			"Gilneas",
			72.7,
			80.2,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9360] = {
		{
			9360,
			"Amani Invasion",
			11,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			nil,
			nil,
			"Ghostlands",
			36.8,
			62.3,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27891] = {
		{
			27891,
			"Amakkar, Jack of All Trades",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			47011,
			"Amakkar",
			"Badlands",
			18.8,
			42.8,
			17,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14223] = {
		{
			14223,
			"Peace of Mind",
			30,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35298,
			"Sorrem",
			"Desolace",
			44.8,
			29.6,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13199] = {
		{
			13199,
			"Bones and Arrows [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31102,
			"Vieron Blazefeather",
			"Wintergrasp",
			22.6,
			34.7,
			501,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12498] = {
		{
			12498,
			"On Ruby Wings",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26949,
			"Torastrasza",
			"Dragonblight",
			59.6,
			53.3,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27924] = {
		{
			27924,
			"Budd's Plan",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46875,
			"Budd",
			"Uldum",
			59.7,
			72,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24467] = {
		{
			24467,
			"Fade to Black",
			19,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35867,
			"Kalec",
			"Azshara",
			66.5,
			20.4,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13325] = {
		{
			13325,
			"Darkmoon Chaos Deck",
			80,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			14847,
			"Professor Thaddeus Paleo",
			"Elwynn Forest",
			41.4,
			69.90000000000001,
			30,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24723] = {
		{
			24723,
			"The Western Pylon",
			55,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9272,
			"Spark Nilminer",
			"Un'Goro Crater",
			31.9,
			50.3,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9741] = {
		{
			9741,
			"Critters of the Void",
			18,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17926,
			"Scout Loryi",
			"Bloodmyst Isle",
			30.3,
			46,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24979] = {
		{
			24979,
			"A Scarlet Letter",
			6,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			nil,
			nil,
			"Tirisfal Glades",
			33.8,
			47.9,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25107] = {
		{
			25107,
			"The Grand Tablet",
			49,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			nil,
			nil,
			"Tanaris",
			37.7,
			79,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25235] = {
		{
			25235,
			"Vulgar Vul'Gol",
			22,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			888,
			"Watcher Dodds",
			"Duskwood",
			45.2,
			66.90000000000001,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25363] = {
		{
			25363,
			"War on the Woodpaw",
			38,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			7875,
			"Hadoken Swiftstrider",
			"Feralas",
			74.90000000000001,
			42.5,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25491] = {
		{
			25491,
			"Durable Seeds",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39858,
			"Arch Druid Hamuul Runetotem",
			"Mount Hyjal",
			27.1,
			62.7,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25619] = {
		{
			25619,
			"Reoccupation",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40978,
			"Fathom-Stalker Azjentus",
			"Shimmering Expanse",
			40.5,
			75.3,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25747] = {
		{
			25747,
			"Looking Forward",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39881,
			"Wavespeaker Valoren",
			"Shimmering Expanse",
			40.6,
			75.09999999999999,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25875] = {
		{
			25875,
			"[28] Gnome on the Inside",
			28,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41233,
			"Scout Commander Barus",
			"Stonetalon Mountains",
			48.4,
			51.8,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26003] = {
		{
			26003,
			"Lessons from the Lost Isles",
			26,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			40926,
			"Kilag Gorefang",
			"Stonetalon Mountains",
			74.40000000000001,
			47.6,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26131] = {
		{
			26131,
			"Reinforcements for Loch Modan",
			10,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			1959,
			"Mountaineer Barleybrew",
			"Ironforge",
			41.9,
			52,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26259] = {
		{
			26259,
			"Blood of the Earthwarder",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43397,
			"Seer Kormo",
			"Deepholm",
			49.7,
			53,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26387] = {
		{
			26387,
			"Starvation Diet",
			34,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42896,
			"Apothecary Surlis",
			"The Hinterlands",
			31.9,
			58.5,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9163] = {
		{
			9163,
			"Into Occupied Territory",
			14,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16231,
			"Dame Auriferous",
			"Ghostlands",
			44.9,
			32.4,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26643] = {
		{
			26643,
			"Starvation Diet",
			34,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43200,
			"Gilda Cloudcaller",
			"The Hinterlands",
			30.8,
			47.1,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26771] = {
		{
			26771,
			"Testing the Trap",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44010,
			"Stormcaller Mylra",
			"Deepholm",
			64.40000000000001,
			82.2,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26899] = {
		{
			26899,
			"The Enemy of My Enemy [Dungeon]",
			28,
			"Blackfathom Deeps",
			1,
		},
		{
			1001,
		},
		{
			44387,
			"Flaming Eradicator",
			"Blackfathom Deeps",
			31.5,
			66.59999999999999,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27027] = {
		{
			27027,
			"Primal Strike",
			3,
			"Shaman",
			1,
		},
		{
			2008,
		},
		{
			3062,
			"Meela Dawnstrider",
			"Mulgore",
			45,
			75.2,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27155] = {
		{
			27155,
			"Turning Yourself In",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			nil,
			nil,
			"Western Plaguelands",
			45.9,
			18.4,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27283] = {
		{
			27283,
			"A Journey to Moonglade",
			20,
			"Druid",
			1,
		},
		{
			2002,
		},
		{
			44978,
			"Sesebi",
			"Orgrimmar",
			34.9,
			67.8,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27411] = {
		{
			27411,
			"Challenge to the Black Flight",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23579,
			"Brogg",
			"Dustwallow Marsh",
			41.8,
			73.8,
			141,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27539] = {
		{
			27539,
			"Add 'em to the Pile",
			44,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45831,
			"Crusader Kevin Frost",
			"Eastern Plaguelands",
			27.6,
			21,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9739] = {
		{
			9739,
			"The Sporelings' Plight",
			63,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17923,
			"Fahssn",
			"Zangarmarsh",
			19,
			63.4,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27795] = {
		{
			27795,
			"Tides of Darkness",
			54,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			46676,
			"Joanna Blueheart",
			"Swamp of Sorrows",
			68.09999999999999,
			36.3,
			38,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9867] = {
		{
			9867,
			"Murkblood Leaders...",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18068,
			"Farseer Margadesh",
			"Nagrand",
			54.6,
			39.9,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28051] = {
		{
			28051,
			"[41] [41] We All Scream for Ice Cream... and then Die!",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47383,
			"Brivelthwerp",
			"Thousand Needles",
			69.90000000000001,
			85.09999999999999,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9995] = {
		{
			9995,
			"What Are These Things?",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18446,
			"Earthbinder Tavgren",
			"Terokkar Forest",
			44.3,
			26.3,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28045] = {
		{
			28045,
			"The Greatest Flavor in the World!",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			47383,
			"Brivelthwerp",
			"Thousand Needles",
			70,
			85.2,
			61,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10123] = {
		{
			10123,
			"Felspark Ravine",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19256,
			"Sergeant Shatterskull",
			"Hellfire Peninsula",
			58.1,
			41.4,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28563] = {
		{
			28563,
			"Hero's Call: Redridge Mountains!",
			15,
			"Redridge Mountains",
			4,
		},
		{
			48,
		},
		{
			nil,
			nil,
			"Stormwind City",
			63,
			71.2,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10251] = {
		{
			10251,
			"The Master's Grand Design?",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			19720,
			"\"Dirty\" Larry",
			"Shattrath City",
			43.7,
			29.5,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10315] = {
		{
			10315,
			"Neutralizing the Nethermancers",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20341,
			"Nether-Stalker Oazul",
			"Netherstorm",
			34.6,
			37.9,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25882] = {
		{
			25882,
			"A Hand at the Ranch",
			8,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41298,
			"Slamp Wobblecog",
			"Dun Morogh",
			62.5,
			53.7,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10443] = {
		{
			10443,
			"Helping the Cenarion Post",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16796,
			"Amaan the Wise",
			"Hellfire Peninsula",
			23.4,
			36.6,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10507] = {
		{
			10507,
			"Turning Point [Group]",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			18530,
			"Voren'thal the Seer",
			"Shattrath City",
			42.7,
			91.7,
			481,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10571] = {
		{
			10571,
			"Oronu the Elder",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21402,
			"Anchorite Ceyla",
			"Shadowmoon Valley",
			62.6,
			28.5,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10635] = {
		{
			10635,
			"Divination: Gorefiend's Cloak",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21797,
			"Ancient Shadowmoon Spirit",
			"Shadowmoon Valley",
			58.2,
			70.7,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[6361] = {
		{
			6361,
			"A Bundle of Hides",
			7,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			3079,
			"Varg Windwhisper",
			"Mulgore",
			46.1,
			58.1,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10763] = {
		{
			10763,
			"Dumphry's Request",
			70,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			21209,
			"Dumphry",
			"Hellfire Peninsula",
			51.3,
			60.3,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12606] = {
		{
			12606,
			"Cocooned!",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28044,
			"Captain Rupert",
			"Zul'Drak",
			58.1,
			72.40000000000001,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25108] = {
		{
			25108,
			"Feegly the Exiled",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39155,
			"Marley Twinbraid",
			"Southern Barrens",
			47.2,
			88.5,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12557] = {
		{
			12557,
			"Lab Work",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28205,
			"Alchemist Finklestein",
			"Zul'Drak",
			35.1,
			52.2,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25370] = {
		{
			25370,
			"Inciting the Elements",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40278,
			"Tholo Whitehoof",
			"Mount Hyjal",
			64.09999999999999,
			22.5,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11083] = {
		{
			11083,
			"Crazed and Confused",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23166,
			"Ronag the Slave Driver",
			"Shadowmoon Valley",
			71.59999999999999,
			87.7,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27007] = {
		{
			27007,
			"Silvermarsh Rendezvous",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			nil,
			nil,
			"Deepholm",
			63.8,
			55.5,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11211] = {
		{
			11211,
			"Help for Mudsprocket",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			6546,
			"Tabetha",
			"Dustwallow Marsh",
			46,
			57.1,
			141,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11275] = {
		{
			11275,
			"Making the Horn",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24123,
			"Nokoma Snowseer",
			"Howling Fjord",
			49.3,
			11.9,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10106] = {
		{
			10106,
			"Hellfire Fortifications [PvP]",
			60,
			"Hellfire Peninsula",
			3,
		},
		{
			70,
		},
		{
			18266,
			"Warrant Officer Tracy Proudwell",
			"Hellfire Peninsula",
			56.3,
			62.8,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[1618] = {
		{
			1618,
			"Gearing Redridge",
			16,
			"Blacksmithing",
			1,
		},
		{
			3003,
		},
		{
			6031,
			"Tormus Deepforge",
			"Ironforge",
			48.8,
			42.5,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11467] = {
		{
			11467,
			"Dead Man's Debt",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24541,
			"Taruk",
			"Howling Fjord",
			36.2,
			80.5,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9617] = {
		{
			9617,
			"Seek the Farstriders",
			28,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			16271,
			"Telenus",
			"Eversong Woods",
			47.9,
			45.9,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26648] = {
		{
			26648,
			"Our Mortal Enemies",
			34,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			43556,
			"\"Dead-Eye\" Drederick McGumm",
			"The Cape of Stranglethorn",
			46.5,
			94.3,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11659] = {
		{
			11659,
			"Shatter the Orbs!",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25516,
			"Snow Tracker Grumm",
			"Borean Tundra",
			87.59999999999999,
			20.1,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11723] = {
		{
			11723,
			"Deploy the Shake-n-Quake!",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25780,
			"Abner Fizzletorque",
			"Borean Tundra",
			57,
			20.1,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9426] = {
		{
			9426,
			"The Pools of Aggonar",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16796,
			"Amaan the Wise",
			"Hellfire Peninsula",
			23.4,
			36.6,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9490] = {
		{
			9490,
			"The Rock Flayer Matriarch [Group]",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16799,
			"Ikan",
			"Hellfire Peninsula",
			23.1,
			40.3,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9811] = {
		{
			9811,
			"Friend of the Sin'dorei",
			21,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16239,
			"Magister Kaendris",
			"Ghostlands",
			55,
			49,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11979] = {
		{
			11979,
			"The Taunka and the Tauren",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26415,
			"Senior Sergeant Juktok",
			"Dragonblight",
			36.6,
			46.6,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12043] = {
		{
			12043,
			"Nozzlerust Defense",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26647,
			"Narf",
			"Dragonblight",
			54.5,
			23.7,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12107] = {
		{
			12107,
			"[72] [72] The End of the Line",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			21223,
			"Corrupted Rager",
			"Dragonblight",
			40.2,
			66.90000000000001,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12171] = {
		{
			12171,
			"Of Traitors and Treason",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27060,
			"Courier Lanson",
			"Dragonblight",
			28.9,
			56.1,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24468] = {
		{
			24468,
			"[8] Stranded at the Marsh",
			8,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			37065,
			"Prince Liam Greymane",
			"Gilneas",
			51.8,
			80.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12299] = {
		{
			12299,
			"Northern Hospitality",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27486,
			"Sergei",
			"Grizzly Hills",
			26.5,
			35.7,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27416] = {
		{
			27416,
			"The Brood of Onyxia",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4501,
			"Draz'Zilb",
			"Dustwallow Marsh",
			37.1,
			33.1,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24852] = {
		{
			24852,
			"Our Tribe, Imprisoned",
			2,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			2980,
			"Grull Hawkwind",
			"Mulgore",
			49,
			78.3,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24980] = {
		{
			24980,
			"The Scarlet Palisade",
			6,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1519,
			"Deathguard Simmer",
			"Tirisfal Glades",
			44.6,
			53.7,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12555] = {
		{
			12555,
			"A Tangled Skein",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28284,
			"Specialist Cogwheel",
			"Zul'Drak",
			58.2,
			72.09999999999999,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12619] = {
		{
			12619,
			"The Emblazoned Runeblade",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28357,
			"Instructor Razuvious",
			"Plaguelands: The Scarlet Enclave",
			47.6,
			28.9,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12683] = {
		{
			12683,
			"Burning to Help",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28771,
			"Colvin Norrington",
			"Sholazar Basin",
			42.1,
			28.6,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25492] = {
		{
			25492,
			"Firebreak",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40331,
			"Rayne Feathersong",
			"Mount Hyjal",
			27.1,
			62.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25620] = {
		{
			25620,
			"The Revered Lady",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40978,
			"Fathom-Stalker Azjentus",
			"Shimmering Expanse",
			40.6,
			75.2,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12875] = {
		{
			12875,
			"An Experienced Guide",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29593,
			"Yorg Stormheart",
			"The Storm Peaks",
			30.2,
			74.7,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25876] = {
		{
			25876,
			"[28] It's Up There!",
			28,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41434,
			"\"Goblin\" Pump Controller",
			"Stonetalon Mountains",
			53.6,
			42.4,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26004] = {
		{
			26004,
			"Krom'gar Fortress",
			26,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			34341,
			"Saurboz",
			"Stonetalon Mountains",
			74.3,
			47.8,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26132] = {
		{
			26132,
			"Fiends from the Netherworld",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41598,
			"Captain Taylor",
			"Abyssal Depths",
			42.8,
			37.8,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26260] = {
		{
			26260,
			"The Forgemaster's Log",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			nil,
			nil,
			"Deepholm",
			62.5,
			67.90000000000001,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26388] = {
		{
			26388,
			"Twilight Skies",
			84,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			50367,
			"Friz Groundspin",
			"Azshara",
			50.7,
			74,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26516] = {
		{
			26516,
			"It's Ours Now",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43157,
			"Doran Steelwing",
			"The Hinterlands",
			63.9,
			59.9,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26644] = {
		{
			26644,
			"Attracting Attention",
			34,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2548,
			"Captain Keelhaul",
			"The Cape of Stranglethorn",
			44.4,
			91.59999999999999,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26772] = {
		{
			26772,
			"Mind Vision",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			44017,
			"Priestess Thaalia",
			"Northern Stranglethorn",
			53.4,
			66.7,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9874] = {
		{
			9874,
			"Stopping the Spread",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18222,
			"Otonbu the Sage",
			"Nagrand",
			54.4,
			72.09999999999999,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13515] = {
		{
			13515,
			"Ending the Threat",
			14,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33178,
			"Huntress Sandrya Moonfall",
			"Darkshore",
			72.2,
			19.2,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27156] = {
		{
			27156,
			"It's About Time!",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			45157,
			"Lieutenant Myner",
			"Western Plaguelands",
			43.2,
			16,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27284] = {
		{
			27284,
			"The Black Shield",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4944,
			"Captain Garran Vimes",
			"Dustwallow Marsh",
			68.2,
			48.6,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27412] = {
		{
			27412,
			"WANTED: Goreclaw the Ravenous",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23572,
			"Drazzit Dripvalve",
			"Dustwallow Marsh",
			41.8,
			73,
			141,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13771] = {
		{
			13771,
			"A Valiant's Field Training",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33540,
			"Shadow Hunter Mezil-kree",
			"Icecrown",
			76,
			24.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27668] = {
		{
			27668,
			"Pay Attention!",
			81,
			"Vashj'ir",
			1,
		},
		{
			65,
		},
		{
			41711,
			"Legionnaire Nazgrim",
			"Kelp'thar Forest",
			38.9,
			32.1,
			610,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27796] = {
		{
			27796,
			"The Warden's Pawn",
			46,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46760,
			"Lead Prospector Durdin",
			"Badlands",
			49.4,
			37,
			17,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[6982] = {
		{
			6982,
			"Coldtooth Supplies [PvP]",
			81,
			"Alterac Valley",
			1,
		},
		{
			5002,
		},
		{
			12096,
			"Stormpike Quartermaster",
			"Alterac Valley",
			43.1,
			17.6,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28052] = {
		{
			28052,
			"Operation: Stir the Cauldron",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			14625,
			"Overseer Oilfist",
			"Searing Gorge",
			38.1,
			26.8,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14091] = {
		{
			14091,
			"Something's Amiss",
			2,
			"Gilneas City",
			1,
		},
		{
			50,
		},
		{
			34863,
			"Lieutenant Walden",
			"Gilneas City",
			55,
			16.8,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14155] = {
		{
			14155,
			"Arborcide",
			11,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			nil,
			nil,
			"Azshara",
			27,
			77.09999999999999,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28436] = {
		{
			28436,
			"Taking the Horn For Ourselves",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48111,
			"Blackrock War Kodo",
			"Burning Steppes",
			96.59999999999999,
			13.8,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28564] = {
		{
			28564,
			"Hero's Call: Duskwood!",
			20,
			"Duskwood",
			4,
		},
		{
			37,
		},
		{
			nil,
			nil,
			"Stormwind City",
			62.9,
			71.59999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14347] = {
		{
			14347,
			"Hold the Line",
			5,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36140,
			"Prince Liam Greymane",
			"Gilneas",
			36,
			66,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28820] = {
		{
			28820,
			"The Rear is Clear",
			4,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.3,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14475] = {
		{
			14475,
			"Grounded!",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36728,
			"Kroum",
			"Azshara",
			14.3,
			65,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28316] = {
		{
			28316,
			"A Deal With a Dragon",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48346,
			"John J. Keeshan",
			"Burning Steppes",
			73.59999999999999,
			67.09999999999999,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[6984] = {
		{
			6984,
			"A Smokywood Pastures' Thank You!",
			85,
			"Winter Veil",
			1,
		},
		{
			4013,
		},
		{
			13418,
			"Kaymard Copperpinch",
			"Orgrimmar",
			52.5,
			77.3,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28819] = {
		{
			28819,
			"The Rear is Clear",
			4,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.2,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12237] = {
		{
			12237,
			"[72] [72] Flight of the Wintergarde Defender",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27317,
			"Gryphon Commander Urik",
			"Dragonblight",
			77.09999999999999,
			50,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10258] = {
		{
			10258,
			"Honor the Fallen",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19736,
			"Althen the Historian",
			"Hellfire Peninsula",
			61.7,
			81.8,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9873] = {
		{
			9873,
			"Ortor My Old Friend...",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			23268,
			"Seer Jovar",
			"Nagrand",
			55.4,
			68.7,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10222] = {
		{
			10222,
			"The Sunfury Garrison",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19488,
			"Custodian Dieworth",
			"Netherstorm",
			57.5,
			86.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26342] = {
		{
			26342,
			"Paint it Black",
			5,
			"Chill Breeze Valley",
			1,
		},
		{
			36,
		},
		{
			42353,
			"Jarvi Shadowstep",
			"Dun Morogh",
			37.4,
			44,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28377] = {
		{
			28377,
			"Rescue at Glopgut's Hollow",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			48364,
			"Keegan Firebeard",
			"Twilight Highlands",
			54.4,
			16.8,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28249] = {
		{
			28249,
			"Crushblow",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47902,
			"Lirastrasza",
			"Twilight Highlands",
			59.1,
			69.90000000000001,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14393] = {
		{
			14393,
			"Into the Fray!",
			35,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			36398,
			"Khan Leh'Prah",
			"Desolace",
			72.2,
			67.40000000000001,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27993] = {
		{
			27993,
			"Take it to 'Em!",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47318,
			"Mack",
			"Uldum",
			49.6,
			39.1,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26480] = {
		{
			26480,
			"Dartol's Rod",
			25,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3691,
			"Raene Wolfrunner",
			"Ashenvale",
			36.6,
			49.6,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9774] = {
		{
			9774,
			"Thick Hydra Scales",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18011,
			"Zurai",
			"Zangarmarsh",
			85.3,
			54.7,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28057] = {
		{
			28057,
			"Kill 'em With Sleep Deprivation",
			50,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			14628,
			"Evonice Sootsmoker",
			"Searing Gorge",
			43.8,
			28.6,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27481] = {
		{
			27481,
			"Out of the Ziggurat",
			43,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45574,
			"Vex'tul",
			"Eastern Plaguelands",
			61.6,
			41.5,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[7782] = {
		{
			7782,
			"The Lord of Blackrock",
			60,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			29611,
			"King Varian Wrynn",
			"Stormwind City",
			85.7,
			31.9,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27353] = {
		{
			27353,
			"Blessings of the Elements [Dungeon]",
			20,
			"Shaman",
			1,
		},
		{
			2008,
		},
		{
			20407,
			"Farseer Umbrua",
			"Stormwind City",
			66,
			31.5,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27788] = {
		{
			27788,
			"Skullcrusher the Mountain",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46717,
			"The Hammer of Twilight",
			"Twilight Highlands",
			45.3,
			87.90000000000001,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27097] = {
		{
			27097,
			"Rise, Forsaken",
			13,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			44365,
			"Lady Sylvanas Windrunner",
			"Silverpine Forest",
			57.4,
			10.1,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9390] = {
		{
			9390,
			"In Search of Sedai",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16834,
			"Anchorite Obadei",
			"Hellfire Peninsula",
			23.1,
			40.3,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8338] = {
		{
			8338,
			"Tainted Arcane Sliver",
			4,
			"Sunstrider Isle",
			1,
		},
		{
			40,
		},
		{
			nil,
			nil,
			"Eversong Woods",
			31.7,
			29.4,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14395] = {
		{
			14395,
			"[6] Gasping for Breath",
			6,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36451,
			"Prince Liam Greymane",
			"Gilneas",
			29.1,
			65,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24859] = {
		{
			24859,
			"Naga Hide",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38381,
			"Brett \"Coins\" McQuid",
			"The Lost Isles",
			52.2,
			73.2,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26457] = {
		{
			26457,
			"Agents of Destruction",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			17287,
			"Sentinel Luciel Starwhisper",
			"Ashenvale",
			83.90000000000001,
			62.6,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[6625] = {
		{
			6625,
			"Alliance Trauma",
			45,
			"First Aid",
			1,
		},
		{
			3006,
		},
		{
			5150,
			"Nissa Firestone",
			"Ironforge",
			54.9,
			58.6,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13121] = {
		{
			13121,
			"Through the Eye",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30232,
			"The Bone Witch",
			"Icecrown",
			32.5,
			42.9,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28189] = {
		{
			28189,
			"Do the Right Thing",
			20,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			nil,
			nil,
			"Hillsbrad Foothills",
			39.6,
			62.8,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24469] = {
		{
			24469,
			"Hold the Line!",
			1,
			"Coldridge Valley",
			1,
		},
		{
			36,
		},
		{
			37081,
			"Joren Ironstock",
			"Dun Morogh",
			36.9,
			70.09999999999999,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26014] = {
		{
			26014,
			"The Brothers Digsong",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41662,
			"Captain Glovaal",
			"Abyssal Depths",
			54.5,
			72.90000000000001,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26008] = {
		{
			26008,
			"Decompression",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41347,
			"Moanah Stormhoof",
			"Kelp'thar Forest",
			63.9,
			59.6,
			610,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9872] = {
		{
			9872,
			"Murkblood Invaders",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			nil,
			nil,
			"Nagrand",
			45.8,
			32.8,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24981] = {
		{
			24981,
			"A Thorn in our Side",
			8,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1515,
			"Executor Zygand",
			"Tirisfal Glades",
			60.5,
			52,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25109] = {
		{
			25109,
			"The Gallywix Labor Mine",
			9,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38517,
			"Slinky Sharpshiv",
			"The Lost Isles",
			53.7,
			34.9,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25237] = {
		{
			25237,
			"Tears of Stone",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39377,
			"Konu Runetotem",
			"Feralas",
			41.4,
			15.4,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25365] = {
		{
			25365,
			"Woodpaw Investigation",
			38,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			7875,
			"Hadoken Swiftstrider",
			"Feralas",
			74.90000000000001,
			42.6,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25493] = {
		{
			25493,
			"Fresh Bait",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39858,
			"Arch Druid Hamuul Runetotem",
			"Mount Hyjal",
			27.1,
			62.7,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25621] = {
		{
			25621,
			"Field Test: Gnomecorder",
			26,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			40895,
			"Professor Xakxak Gyromate",
			"Ashenvale",
			35.3,
			71.2,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25749] = {
		{
			25749,
			"Not Entirely Unprepared",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40642,
			"Captain Taylor",
			"Shimmering Expanse",
			33.2,
			68.3,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25877] = {
		{
			25877,
			"[28] No Time for Goodbyes!",
			28,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41434,
			"\"Goblin\" Pump Controller",
			"Stonetalon Mountains",
			53.6,
			42.4,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26005] = {
		{
			26005,
			"A Breath of Fresh Air",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39881,
			"Wavespeaker Valoren",
			"Shimmering Expanse",
			49.4,
			57.6,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26133] = {
		{
			26133,
			"Fiends from the Netherworld",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41636,
			"Legionnaire Nazgrim",
			"Abyssal Depths",
			42.6,
			37.9,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26261] = {
		{
			26261,
			"Question the Slaves",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			nil,
			nil,
			"Deepholm",
			60.6,
			58.4,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26389] = {
		{
			26389,
			"Blackrock Invasion",
			4,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26517] = {
		{
			26517,
			"Summit of Fate",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43156,
			"Fraggar Thundermantle",
			"The Hinterlands",
			63.8,
			59.9,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26645] = {
		{
			26645,
			"The Night Watch",
			21,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			264,
			"Commander Althea Ebonlocke",
			"Duskwood",
			73.59999999999999,
			46.9,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26773] = {
		{
			26773,
			"See Raptor",
			27,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			44017,
			"Priestess Thaalia",
			"Northern Stranglethorn",
			53.4,
			66.8,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26901] = {
		{
			26901,
			"Going, Going, Guano! [Dungeon]",
			35,
			"Razorfen Kraul",
			1,
		},
		{
			1009,
		},
		{
			44402,
			"Auld Stonespire",
			"Razorfen Kraul",
			67.40000000000001,
			65.90000000000001,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9420] = {
		{
			9420,
			"The Finest Down",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16851,
			"Mirren Longbeard",
			"Hellfire Peninsula",
			24.1,
			72.3,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27157] = {
		{
			27157,
			"Drudges... <Sigh>",
			37,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			45157,
			"Lieutenant Myner",
			"Western Plaguelands",
			43.2,
			16,
			22,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9548] = {
		{
			9548,
			"Pilfered Equipment",
			17,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17421,
			"Clopper Wizbang",
			"Bloodmyst Isle",
			42.2,
			21.2,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27413] = {
		{
			27413,
			"Catch a Dragon by the Tail",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			23570,
			"Gizzix Grimegurgle",
			"Dustwallow Marsh",
			41.6,
			72.90000000000001,
			141,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27541] = {
		{
			27541,
			"Lessons From the Past",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			45874,
			"Schnottz Scout",
			"Uldum",
			63.5,
			32.5,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9740] = {
		{
			9740,
			"The Sun Gate",
			18,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17844,
			"Vindicator Aesom",
			"Bloodmyst Isle",
			55.6,
			55.3,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9804] = {
		{
			9804,
			"Agitated Spirits of Skysong",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18073,
			"Elementalist Lo'ap",
			"Nagrand",
			60.7,
			22.4,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9868] = {
		{
			9868,
			"The Totem of Kar'dash [Group]",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18210,
			"Mag'har Captive",
			"Nagrand",
			31.4,
			44.1,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9932] = {
		{
			9932,
			"Body of Evidence",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18261,
			"Lantresor of the Blade",
			"Nagrand",
			73.8,
			62.7,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28181] = {
		{
			28181,
			"Warlocks Have the Neatest Stuff",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			14437,
			"Gorzeeki Wildeyes",
			"Burning Steppes",
			8.300000000000001,
			35.7,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13326] = {
		{
			13326,
			"Darkmoon Nobles Deck",
			80,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			nil,
			nil,
			"Stormwind City",
			62,
			31.2,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10124] = {
		{
			10124,
			"Forward Base: Reaver's Fall",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19256,
			"Sergeant Shatterskull",
			"Hellfire Peninsula",
			58.2,
			41.3,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10188] = {
		{
			10188,
			"The Sigil of Krasus",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19644,
			"Image of Archmage Vargoth",
			"Netherstorm",
			31.4,
			66.2,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10252] = {
		{
			10252,
			"Vision of the Dead [Group]",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			19844,
			"Nitrin the Learned",
			"Nagrand",
			51.8,
			56.8,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28821] = {
		{
			28821,
			"The Rear is Clear",
			4,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.7,
			38.3,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10380] = {
		{
			10380,
			"A Dark Pact",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20780,
			"Kaylaan",
			"Netherstorm",
			34.8,
			38.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10444] = {
		{
			10444,
			"Report to the Allerian Post",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18459,
			"Jenai Starwhisper",
			"Terokkar Forest",
			57,
			53.5,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10508] = {
		{
			10508,
			"A Gift for Voren'thal [Group]",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19468,
			"Spymaster Thalodien",
			"Netherstorm",
			32,
			64.2,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10572] = {
		{
			10572,
			"[69] Setting Up the Bomb",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21357,
			"Wing Commander Nuainn",
			"Shadowmoon Valley",
			39.5,
			53.8,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10636] = {
		{
			10636,
			"Divination: Gorefiend's Truncheon [Group]",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21797,
			"Ancient Shadowmoon Spirit",
			"Shadowmoon Valley",
			58.2,
			70.7,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12814] = {
		{
			12814,
			"[80] You'll Need a Gryphon",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29344,
			"Lord-Commander Arete",
			"Icecrown",
			19.6,
			48.1,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10764] = {
		{
			10764,
			"Hotter than Hell [Group]",
			70,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			21209,
			"Dumphry",
			"Hellfire Peninsula",
			51.3,
			60.4,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28442] = {
		{
			28442,
			"Flame Crest",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48568,
			"Eitrigg",
			"Burning Steppes",
			44.6,
			44.4,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12476] = {
		{
			12476,
			"The Return of the Crusade?",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27155,
			"Commander Lynore Windstryke",
			"Dragonblight",
			78.59999999999999,
			48.1,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12302] = {
		{
			12302,
			"Words of Warning",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27497,
			"Captured Trapper",
			"Grizzly Hills",
			21.9,
			29.8,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11020] = {
		{
			11020,
			"A Slow Death",
			70,
			"Shadowmoon Valley",
			3,
		},
		{
			73,
		},
		{
			23141,
			"Yarzill the Merc",
			"Shadowmoon Valley",
			66,
			86.5,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11084] = {
		{
			11084,
			"Stand Tall, Captain!",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23140,
			"Taskmaster Varkule Dragonbreath",
			"Shadowmoon Valley",
			66.09999999999999,
			86.40000000000001,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28311] = {
		{
			28311,
			"Blackened Ashes",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48307,
			"Colonel Troteman",
			"Burning Steppes",
			73.5,
			67.3,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11212] = {
		{
			11212,
			"Tabetha's Farm",
			37,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			4921,
			"Guard Byron",
			"Dustwallow Marsh",
			66.09999999999999,
			46.1,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11276] = {
		{
			11276,
			"And Then There Were Two...",
			70,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24145,
			"Zedd",
			"Howling Fjord",
			56.7,
			52.4,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9293] = {
		{
			9293,
			"What Must Be Done...",
			2,
			"Ammen Vale",
			1,
		},
		{
			5,
		},
		{
			16514,
			"Botanist Taerix",
			"Azuremyst Isle",
			79.09999999999999,
			46.5,
			464,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27921] = {
		{
			27921,
			"Fighting Tooth and Claw",
			20,
			"Shadowfang Keep",
			1,
		},
		{
			1012,
		},
		{
			47006,
			"Packleader Ivar Bloodfang",
			"Shadowfang Keep",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11468] = {
		{
			11468,
			"Falcon Versus Hawk",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24750,
			"Hidalgo the Master Falconer",
			"Howling Fjord",
			75.3,
			65,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13261] = {
		{
			13261,
			"Volatility",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			30825,
			"Chief Engineer Copperclaw",
			"Icecrown",
			65.59999999999999,
			49,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11596] = {
		{
			11596,
			"The Defense of Warsong Hold",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25256,
			"High Overlord Saurfang",
			"Borean Tundra",
			41.4,
			53.7,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11660] = {
		{
			11660,
			"Horn of the Ancient Mariner",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25476,
			"Waltor of Pal'ea",
			"Borean Tundra",
			32.3,
			54.2,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11724] = {
		{
			11724,
			"Massive Moth Omelet?",
			71,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			nil,
			nil,
			"Borean Tundra",
			48.5,
			59,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11788] = {
		{
			11788,
			"Lefty Loosey, Righty Tighty",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25747,
			"Jinky Wingnut",
			"Borean Tundra",
			57.5,
			18.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27537] = {
		{
			27537,
			"Any Portal in a Storm",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45167,
			"Kurdran Wildhammer",
			"Twilight Highlands",
			79.09999999999999,
			78.3,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11916] = {
		{
			11916,
			"Hellscream's Champion",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25237,
			"Garrosh Hellscream",
			"Borean Tundra",
			41.4,
			53.6,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11980] = {
		{
			11980,
			"Pride of the Horde",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26180,
			"Blood Guard Roh'kill",
			"Dragonblight",
			14.3,
			49.8,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12044] = {
		{
			12044,
			"Stocking Up",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26660,
			"Xink",
			"Dragonblight",
			55,
			23.5,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12429] = {
		{
			12429,
			"The Conquest Pit: Blood and Metal [Group]",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27719,
			"Grennix Shivwiggle",
			"Grizzly Hills",
			22.4,
			63.9,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[761] = {
		{
			761,
			"Swoop Hunting",
			6,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			2947,
			"Harken Windtotem",
			"Mulgore",
			48.7,
			58.8,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24470] = {
		{
			24470,
			"Give 'em What-For",
			2,
			"Coldridge Valley",
			1,
		},
		{
			36,
		},
		{
			37081,
			"Joren Ironstock",
			"Dun Morogh",
			36.9,
			70,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[769] = {
		{
			769,
			"Kodo Hide Bag",
			10,
			"Thunder Bluff",
			1,
		},
		{
			26,
		},
		{
			3050,
			"Veren Tallstrider",
			"Thunder Bluff",
			44.1,
			44.5,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[773] = {
		{
			773,
			"Rite of Wisdom",
			10,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			3233,
			"Lorekeeper Raintotem",
			"Mulgore",
			49.5,
			17.2,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12428] = {
		{
			12428,
			"The Conquest Pit: Mad Furbolg Fighting [Group]",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27719,
			"Grennix Shivwiggle",
			"Grizzly Hills",
			22.4,
			63.9,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24982] = {
		{
			24982,
			"The New Forsaken",
			7,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1496,
			"Deathguard Dillinger",
			"Tirisfal Glades",
			52.5,
			54.9,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25110] = {
		{
			25110,
			"Kaja'Cola Gives You IDEAS! (TM)",
			9,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38124,
			"Assistant Greely",
			"The Lost Isles",
			53.1,
			36.6,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12620] = {
		{
			12620,
			"The Lifewarden's Wrath",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27801,
			"Avatar of Freya",
			"Sholazar Basin",
			64.5,
			48.5,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12684] = {
		{
			12684,
			"Blood of a Dead God",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28401,
			"Har'koa",
			"Zul'Drak",
			63.8,
			70.3,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25494] = {
		{
			25494,
			"A Champion's Collar",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39406,
			"Instructor Devoran",
			"Mount Hyjal",
			90.09999999999999,
			56.4,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25622] = {
		{
			25622,
			"Burn, Baby, Burn!",
			26,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			34353,
			"Krom'gar Incinerator",
			"Stonetalon Mountains",
			73.2,
			46.7,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12876] = {
		{
			12876,
			"Unwelcome Guests",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29732,
			"Fjorlin Frostbrow",
			"The Storm Peaks",
			29.8,
			75.7,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25878] = {
		{
			25878,
			"[28] Schemin' That Sabotage",
			28,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41441,
			"Scout Mistress Yvonia",
			"Stonetalon Mountains",
			48.5,
			52,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26006] = {
		{
			26006,
			"A Breath of Fresh Air",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40919,
			"Wavespeaker Tulra",
			"Shimmering Expanse",
			51.6,
			62.7,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13068] = {
		{
			13068,
			"A Tale of Valor",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			31044,
			"Highlord Tirion Fordring",
			"Icecrown",
			79.8,
			71.8,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13132] = {
		{
			13132,
			"Vengeance Be Mine! [Dungeon]",
			80,
			"Utgarde Pinnacle",
			1,
		},
		{
			1055,
		},
		{
			30871,
			"Brigg Smallshanks",
			"Utgarde Pinnacle",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26390] = {
		{
			26390,
			"Ending the Invasion!",
			5,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.2,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26518] = {
		{
			26518,
			"Heads Up",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43157,
			"Doran Steelwing",
			"The Hinterlands",
			63.9,
			59.8,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[833] = {
		{
			833,
			"A Sacred Burial",
			10,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			3233,
			"Lorekeeper Raintotem",
			"Mulgore",
			49.5,
			17.2,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13388] = {
		{
			13388,
			"Set it Off!",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			31444,
			"Captain Kendall",
			"Icecrown",
			51.7,
			86.59999999999999,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27025] = {
		{
			27025,
			"Thistle While You Work",
			16,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			44859,
			"Safety Warden Pipsy",
			"Loch Modan",
			82.8,
			63.7,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27030] = {
		{
			27030,
			"Foxtails By The Handful",
			16,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1154,
			"Marek Ironheart",
			"Loch Modan",
			81.8,
			61.8,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13580] = {
		{
			13580,
			"Soothing the Elements",
			17,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33117,
			"Elder Brownpaw",
			"Darkshore",
			40.9,
			56.5,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13644] = {
		{
			13644,
			"That Which Has Risen",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33443,
			"Keeper Heartwise",
			"Ashenvale",
			20.2,
			38.8,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27414] = {
		{
			27414,
			"Identifying the Brood",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4501,
			"Draz'Zilb",
			"Dustwallow Marsh",
			37.1,
			32.9,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13772] = {
		{
			13772,
			"The Grand Melee",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33545,
			"Gahju",
			"Icecrown",
			76,
			24.4,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27670] = {
		{
			27670,
			"Pinned Down",
			1,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			45966,
			"Nevin Twistwrench",
			"Dun Morogh",
			25.8,
			31.9,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[869] = {
		{
			869,
			"To Track a Thief",
			15,
			"Northern Barrens",
			5,
		},
		{
			17,
		},
		{
			nil,
			nil,
			"Northern Barrens",
			58.6,
			67,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13964] = {
		{
			13964,
			"To the Spire",
			25,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			4079,
			"Sentinel Thenysil",
			"Ashenvale",
			35,
			49.8,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[877] = {
		{
			877,
			"The Stagnant Oasis",
			16,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34626,
			"Jerrik Highmountain",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28182] = {
		{
			28182,
			"Shadow Boxing",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			14437,
			"Gorzeeki Wildeyes",
			"Burning Steppes",
			8.300000000000001,
			35.7,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28310] = {
		{
			28310,
			"Morgan's Vigil",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48110,
			"Colonel Troteman",
			"Burning Steppes",
			46.3,
			45.9,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28438] = {
		{
			28438,
			"Trial by Magma",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48133,
			"General Thorg'izog",
			"Burning Steppes",
			30.7,
			33.7,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14284] = {
		{
			14284,
			"A Revenant's Vengeance",
			32,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35902,
			"Lord Hydronis",
			"Desolace",
			29.1,
			8.300000000000001,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14348] = {
		{
			14348,
			"You Can't Take 'Em Alone",
			5,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36140,
			"Prince Liam Greymane",
			"Gilneas",
			36,
			66,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14412] = {
		{
			14412,
			"[7] Washed Up",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36456,
			"Sebastian Hayward",
			"Gilneas",
			37,
			84.09999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14476] = {
		{
			14476,
			"Rigged to Blow",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36785,
			"Bombardier Captain Smooks",
			"Azshara",
			14.5,
			75.59999999999999,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28534] = {
		{
			28534,
			"Descendants of the Highborne",
			51,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			48658,
			"Kaldorei Spirit",
			"Winterspring",
			50.7,
			54.9,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26513] = {
		{
			26513,
			"Like a Fart in the Wind",
			16,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			382,
			"Marshal Marris",
			"Redridge Mountains",
			31.8,
			44.9,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25115] = {
		{
			25115,
			"Blisterpaw Butchery",
			45,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39178,
			"Driz Plunkbow",
			"Tanaris",
			52.2,
			28.1,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9167] = {
		{
			9167,
			"The Traitor's Destruction [Group]",
			21,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			16239,
			"Magister Kaendris",
			"Ghostlands",
			55,
			48.9,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28440] = {
		{
			28440,
			"Abuse of Power",
			0,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48133,
			"General Thorg'izog",
			"Burning Steppes",
			30.8,
			33.8,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[929] = {
		{
			929,
			"[6] [6] Teldrassil: The Refusal of the Aspects",
			6,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			3515,
			"Corithras Moonrage",
			"Teldrassil",
			55.8,
			53.9,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[933] = {
		{
			933,
			"Teldrassil: The Coming Dawn",
			9,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			3515,
			"Corithras Moonrage",
			"Teldrassil",
			41,
			45.6,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[937] = {
		{
			937,
			"The Enchanted Glade",
			10,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			3519,
			"Sentinel Arynia Cloudsbreak",
			"Teldrassil",
			39.5,
			29.8,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13390] = {
		{
			13390,
			"A Voice in the Dark",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			nil,
			nil,
			"Icecrown",
			54,
			87.3,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9871] = {
		{
			9871,
			"Murkblood Invaders",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18073,
			"Elementalist Lo'ap",
			"Nagrand",
			60.5,
			24,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28187] = {
		{
			28187,
			"Missed Me By Zhat Much!",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47940,
			"Commander Schnottz",
			"Uldum",
			24.4,
			64.09999999999999,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13965] = {
		{
			13965,
			"Check in on the Edunes",
			25,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3996,
			"Faldreas Goeth'Shael",
			"Ashenvale",
			35.7,
			49.1,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13260] = {
		{
			13260,
			"Takes One to Know One",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30824,
			"Sky-Reaver Korm Blackscar",
			"Icecrown",
			69.5,
			35.6,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28688] = {
		{
			28688,
			"Warchief's Command: Northern Stranglethorn Vale!",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			nil,
			nil,
			"Undercity",
			65.90000000000001,
			49.8,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14282] = {
		{
			14282,
			"Mystery Solved",
			32,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Desolace",
			30,
			15.9,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27158] = {
		{
			27158,
			"The Battle for Andorhal",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			nil,
			nil,
			"Western Plaguelands",
			42.7,
			84,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9549] = {
		{
			9549,
			"Artifacts of the Blacksilt",
			17,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			nil,
			nil,
			"Bloodmyst Isle",
			42.1,
			21.2,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12303] = {
		{
			12303,
			"Funding the War Effort",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27267,
			"Quartermaster Bartlett",
			"Dragonblight",
			76,
			63.2,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24988] = {
		{
			24988,
			"The Chill of Death",
			8,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1521,
			"Gretchen Dedmar",
			"Tirisfal Glades",
			65.2,
			60.3,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25244] = {
		{
			25244,
			"What Kind of Name is Candy, Anyway?",
			11,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38387,
			"Sassy Hardwrench",
			"The Lost Isles",
			43.6,
			25.3,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25372] = {
		{
			25372,
			"Aessina's Miracle",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			41381,
			"Nordu",
			"Mount Hyjal",
			27.4,
			55.3,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12815] = {
		{
			12815,
			"No Fly Zone",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			29405,
			"Uzo Deathcaller",
			"Icecrown",
			19.6,
			47.9,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[997] = {
		{
			997,
			"Denalan's Earth",
			9,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			2083,
			"Syral Bladeleaf",
			"Teldrassil",
			55.8,
			50.5,
			41,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12879] = {
		{
			12879,
			"Fury of the Frostborn King",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30548,
			"The Guardian's Charge",
			"The Storm Peaks",
			44.4,
			64.59999999999999,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12943] = {
		{
			12943,
			"Shadow Vault Decree",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30002,
			"Duke Lankral",
			"Icecrown",
			44.6,
			20.4,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12877] = {
		{
			12877,
			"The Lonesome Watcher",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29751,
			"Drom Frostgrip",
			"The Storm Peaks",
			25.2,
			68.59999999999999,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24215] = {
		{
			24215,
			"Rite of the Winds",
			5,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			36803,
			"Dyami Windsoar",
			"Mulgore",
			41.2,
			76.09999999999999,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13071] = {
		{
			13071,
			"Vile Like Fire!",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			30216,
			"Vile",
			"Icecrown",
			43.4,
			24.7,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24471] = {
		{
			24471,
			"Aid for the Wounded",
			2,
			"Coldridge Valley",
			1,
		},
		{
			36,
		},
		{
			658,
			"Sten Stoutarm",
			"Dun Morogh",
			36.6,
			70.2,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13135] = {
		{
			13135,
			"It Could Kill Us All",
			79,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30714,
			"Crusade Engineer Spitzpatrick",
			"Icecrown",
			83.09999999999999,
			73.09999999999999,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26524] = {
		{
			26524,
			"Dark Vessels",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43156,
			"Fraggar Thundermantle",
			"The Hinterlands",
			63.8,
			59.9,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24855] = {
		{
			24855,
			"Aberrant Flora",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38263,
			"Ithis Moonwarden",
			"Un'Goro Crater",
			76.5,
			48.5,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24983] = {
		{
			24983,
			"Forsaken Duties",
			8,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1499,
			"Magistrate Sevren",
			"Tirisfal Glades",
			60.9,
			50.6,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25111] = {
		{
			25111,
			"Scavengers Scavenged",
			45,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39178,
			"Driz Plunkbow",
			"Tanaris",
			52.2,
			28,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26652] = {
		{
			26652,
			"Ghost Hair Thread",
			21,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			265,
			"Madame Eva",
			"Duskwood",
			75.7,
			45.4,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25367] = {
		{
			25367,
			"Zukk'ash Infestation",
			38,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			7875,
			"Hadoken Swiftstrider",
			"Feralas",
			74.90000000000001,
			42.5,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[7223] = {
		{
			7223,
			"Armor Scraps [PvP]",
			81,
			"Alterac Valley",
			1,
		},
		{
			5002,
		},
		{
			13257,
			"Murgot Deepforge",
			"Alterac Valley",
			43.5,
			15.5,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25623] = {
		{
			25623,
			"Into the Maw!",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39433,
			"Ian Duran",
			"Mount Hyjal",
			28.2,
			29.8,
			606,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25751] = {
		{
			25751,
			"Properly Inspired",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40639,
			"Engineer Hexascrub",
			"Shimmering Expanse",
			32.9,
			69.2,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25879] = {
		{
			25879,
			"[28] The Lumbering Oaf Problem",
			28,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41441,
			"Scout Mistress Yvonia",
			"Stonetalon Mountains",
			48.5,
			52,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26007] = {
		{
			26007,
			"Debriefing",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41341,
			"Erunak Stonespeaker",
			"Kelp'thar Forest",
			63.9,
			59.9,
			610,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26135] = {
		{
			26135,
			"Visions of the Past: Rise from the Deep",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40919,
			"Wavespeaker Tulra",
			"Shimmering Expanse",
			51.6,
			62.7,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26263] = {
		{
			26263,
			"Thornar Thunderclash",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42613,
			"Elder Torntusk",
			"The Hinterlands",
			78.2,
			81.3,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26391] = {
		{
			26391,
			"Extinguishing Hope",
			4,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			9296,
			"Milly Osworth",
			"Elwynn Forest",
			48.1,
			42.5,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26519] = {
		{
			26519,
			"He Who Controls the Ettins",
			16,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			nil,
			nil,
			"Redridge Mountains",
			35.9,
			33.6,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26647] = {
		{
			26647,
			"Ol' Blasty",
			34,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2547,
			"Ironpatch",
			"The Cape of Stranglethorn",
			46.7,
			94.90000000000001,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26775] = {
		{
			26775,
			"Be Raptor",
			29,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			44017,
			"Priestess Thaalia",
			"Northern Stranglethorn",
			53.4,
			66.7,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26903] = {
		{
			26903,
			"Willix the Importer [Dungeon]",
			35,
			"Razorfen Kraul",
			1,
		},
		{
			1009,
		},
		{
			4508,
			"Willix the Importer",
			"Razorfen Kraul",
			36.1,
			32,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27031] = {
		{
			27031,
			"Wing Nut",
			17,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			6577,
			"Bingles Blastenheimer",
			"Loch Modan",
			81.59999999999999,
			64.5,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27159] = {
		{
			27159,
			"Scourge First... Horde Later",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44453,
			"Thassarian",
			"Western Plaguelands",
			41,
			70.40000000000001,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27287] = {
		{
			27287,
			"The Deserters",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4944,
			"Captain Garran Vimes",
			"Dustwallow Marsh",
			68.2,
			48.6,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27415] = {
		{
			27415,
			"The Brood of Onyxia",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4501,
			"Draz'Zilb",
			"Dustwallow Marsh",
			37.1,
			33.1,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28760] = {
		{
			28760,
			"Vengeance for Orsis [Dungeon]",
			84,
			"The Vortex Pinnacle",
			1,
		},
		{
			1062,
		},
		{
			49943,
			"Itesh",
			"The Vortex Pinnacle",
			54.5,
			16.2,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27671] = {
		{
			27671,
			"See to the Survivors",
			1,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			47250,
			"Carvo Blastbolt",
			"Dun Morogh",
			27.7,
			31.9,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9805] = {
		{
			9805,
			"Blessing of Incineratus",
			65,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			nil,
			nil,
			"Nagrand",
			60.8,
			22.4,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27927] = {
		{
			27927,
			"Down to the Scar",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			46660,
			"Aidan Summerwind",
			"Badlands",
			18.4,
			41.5,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28055] = {
		{
			28055,
			"Sweet, Horrible Freedom",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47393,
			"Mountain-Lord Rendan",
			"Searing Gorge",
			0,
			0,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9997] = {
		{
			9997,
			"Attack on Firewing Point",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			21007,
			"Sergeant Chawni",
			"Terokkar Forest",
			63.3,
			42.4,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[1258] = {
		{
			1258,
			"... and Bugs",
			36,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4794,
			"Morgan Stern",
			"Dustwallow Marsh",
			68.2,
			48.6,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[20441] = {
		{
			20441,
			"Rite of Vision",
			7,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			3054,
			"Zarlman Two-Moons",
			"Mulgore",
			47.9,
			57.2,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10189] = {
		{
			10189,
			"Manaforge B'naar",
			68,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			19468,
			"Spymaster Thalodien",
			"Netherstorm",
			32,
			64.09999999999999,
			479,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10253] = {
		{
			10253,
			"Levixus the Soul Caller [Group]",
			67,
			"Auchenai Crypts",
			1,
		},
		{
			1020,
		},
		{
			19844,
			"Nitrin the Learned",
			"Nagrand",
			51.8,
			56.9,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28823] = {
		{
			28823,
			"The Rear is Clear",
			4,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			823,
			"Sergeant Willem",
			"Elwynn Forest",
			48.8,
			38.3,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10381] = {
		{
			10381,
			"Aldor No More",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20780,
			"Kaylaan",
			"Netherstorm",
			34.8,
			38.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14253] = {
		{
			14253,
			"Fletch Me Some Plumage!",
			31,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35757,
			"Bizby",
			"Desolace",
			61,
			29.2,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10509] = {
		{
			10509,
			"Bound for Glory",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			19468,
			"Spymaster Thalodien",
			"Netherstorm",
			32,
			64.2,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10573] = {
		{
			10573,
			"The Deathforge",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21357,
			"Wing Commander Nuainn",
			"Shadowmoon Valley",
			39.5,
			53.8,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10637] = {
		{
			10637,
			"A Necessary Distraction",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21860,
			"Exarch Onaala",
			"Shadowmoon Valley",
			61.2,
			29.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10701] = {
		{
			10701,
			"Breaking Down Netherock [Group]",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19617,
			"Boots",
			"Netherstorm",
			32.1,
			64.7,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10765] = {
		{
			10765,
			"When Worlds Collide... [Group]",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21998,
			"Kor'kron Wind Rider",
			"Shadowmoon Valley",
			51.7,
			68.90000000000001,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10829] = {
		{
			10829,
			"Treebole Must Know",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22007,
			"Tree Warden Chawn",
			"Blade's Edge Mountains",
			61.9,
			39.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10893] = {
		{
			10893,
			"Longtail is the Lynchpin",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22386,
			"Watcher Moonshade",
			"Blade's Edge Mountains",
			50.3,
			36.1,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28376] = {
		{
			28376,
			"Myzerian's Head",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			nil,
			nil,
			"Uldum",
			38.7,
			21.9,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11021] = {
		{
			11021,
			"Ishaal's Almanac",
			70,
			"Skettis",
			1,
		},
		{
			75,
		},
		{
			nil,
			nil,
			"Terokkar Forest",
			72.59999999999999,
			84.59999999999999,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11085] = {
		{
			11085,
			"Escape from Skettis",
			70,
			"Skettis",
			3,
		},
		{
			75,
		},
		{
			23383,
			"Skyguard Prisoner",
			"Terokkar Forest",
			68.40000000000001,
			74.09999999999999,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[7063] = {
		{
			7063,
			"The Feast of Winter Veil",
			85,
			"Winter Veil",
			1,
		},
		{
			4013,
		},
		{
			2916,
			"Historian Karnik",
			"Ironforge",
			77.09999999999999,
			11.7,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11213] = {
		{
			11213,
			"Check Up on Tabetha",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4791,
			"Nazeer Bloodpike",
			"Dustwallow Marsh",
			35.3,
			30.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11277] = {
		{
			11277,
			"The Depths of Depravity",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24150,
			"Glorenfeld",
			"Howling Fjord",
			56.9,
			53.8,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28565] = {
		{
			28565,
			"Hero's Call: Wetlands!",
			20,
			"Wetlands",
			4,
		},
		{
			68,
		},
		{
			nil,
			nil,
			"Ironforge",
			25.8,
			69.40000000000001,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13181] = {
		{
			13181,
			"Victory in Wintergrasp [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31153,
			"Tactical Officer Ahbramis",
			"Wintergrasp",
			72,
			31.7,
			501,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11469] = {
		{
			11469,
			"Swabbin' Soap",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24784,
			"Scuttle Frostprow",
			"Howling Fjord",
			37.7,
			79.59999999999999,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11533] = {
		{
			11533,
			"The Air Strikes Must Continue",
			70,
			"Isle of Quel'Danas",
			3,
		},
		{
			44,
		},
		{
			25057,
			"Battlemage Arynna",
			"Isle of Quel'Danas",
			47.5,
			35.2,
			499,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28437] = {
		{
			28437,
			"General Thorg'izog",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48568,
			"Eitrigg",
			"Burning Steppes",
			44.6,
			44.5,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11661] = {
		{
			11661,
			"Orabus the Helmsman",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25476,
			"Waltor of Pal'ea",
			"Borean Tundra",
			32.3,
			54.3,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11725] = {
		{
			11725,
			"Finding Pilot Tailspin",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25590,
			"Fizzcrank Fullthrottle",
			"Borean Tundra",
			57,
			18.7,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11789] = {
		{
			11789,
			"A Soldier in Need",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25825,
			"Medic Hawthorn",
			"Borean Tundra",
			55,
			68.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[5927] = {
		{
			5927,
			"Heeding the Call",
			80,
			"Druid",
			1,
		},
		{
			2002,
		},
		{
			6929,
			"Innkeeper Gryshka",
			"Orgrimmar",
			53.7,
			78.7,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13749] = {
		{
			13749,
			"A Valiant's Field Training",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33648,
			"Tickin Gearspanner",
			"Icecrown",
			76.59999999999999,
			19.7,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11981] = {
		{
			11981,
			"Find Kurun!",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26335,
			"Fallen Earthen Warrior",
			"Grizzly Hills",
			63.7,
			23.2,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12045] = {
		{
			12045,
			"Shaved Ice",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26661,
			"Zivlix",
			"Dragonblight",
			54.7,
			23.3,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12109] = {
		{
			12109,
			"Report to Gryan Stoutmantle... Again",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26875,
			"Lieutenant Dumont",
			"Grizzly Hills",
			31.9,
			60.2,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13621] = {
		{
			13621,
			"Gorat's Vengeance",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33263,
			"Dinah Halfmoon",
			"Northern Barrens",
			42.5,
			15.7,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24472] = {
		{
			24472,
			"[8] Introductions Are in Order",
			8,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			37065,
			"Prince Liam Greymane",
			"Gilneas",
			51.9,
			80.3,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12301] = {
		{
			12301,
			"The Truth Shall Set Us Free",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27347,
			"Orik Trueheart",
			"Dragonblight",
			87.2,
			57.4,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27480] = {
		{
			27480,
			"Ley Energies",
			18,
			"Alterac Mountains",
			1,
		},
		{
			42,
		},
		{
			45728,
			"Arcane Remnant",
			"Hillsbrad Foothills",
			28.9,
			40,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24856] = {
		{
			24856,
			"Invasion Imminent!",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38120,
			"Hobart Grapplehammer",
			"The Lost Isles",
			45.4,
			65.2,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27352] = {
		{
			27352,
			"Liquid Gold",
			50,
			"Stratholme",
			1,
		},
		{
			1013,
		},
		{
			45328,
			"Packmaster Stonebruiser",
			"Stratholme",
			67.90000000000001,
			82.40000000000001,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25112] = {
		{
			25112,
			"Butcherbot",
			45,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			39178,
			"Driz Plunkbow",
			"Tanaris",
			52.3,
			28.1,
			161,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12621] = {
		{
			12621,
			"Freya's Pact",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27801,
			"Avatar of Freya",
			"Sholazar Basin",
			64.5,
			48.5,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[6343] = {
		{
			6343,
			"Return to Nyoma",
			7,
			"Teldrassil",
			1,
		},
		{
			23,
		},
		{
			40552,
			"Leora",
			"Darnassus",
			36.8,
			48,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25496] = {
		{
			25496,
			"Grudge Match",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39406,
			"Instructor Devoran",
			"Mount Hyjal",
			90.2,
			56.3,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12813] = {
		{
			12813,
			"From Their Corpses, Rise!",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			29396,
			"Setaal Darkmender",
			"Icecrown",
			19.7,
			48.3,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25752] = {
		{
			25752,
			"Swift Action",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40643,
			"Admiral Dvorek",
			"Shimmering Expanse",
			33,
			67.7,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25880] = {
		{
			25880,
			"[29] Warn Master Thal'darah",
			29,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41233,
			"Scout Commander Barus",
			"Stonetalon Mountains",
			48.3,
			51.8,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13005] = {
		{
			13005,
			"[80] The Earthen Oath",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30295,
			"Thorim",
			"The Storm Peaks",
			56.3,
			51.5,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13069] = {
		{
			13069,
			"Shoot 'Em Up",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			30074,
			"The Leaper",
			"Icecrown",
			43.4,
			25,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26264] = {
		{
			26264,
			"What's Left Behind",
			2,
			"Chill Breeze Valley",
			1,
		},
		{
			36,
		},
		{
			42611,
			"Tock Sprysprocket",
			"Dun Morogh",
			33.8,
			34.1,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13197] = {
		{
			13197,
			"Fueling the Demolishers [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31108,
			"Siege Master Stouthandle",
			"Wintergrasp",
			71.90000000000001,
			31.4,
			501,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26520] = {
		{
			26520,
			"Saving Foreman Oslow",
			16,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			nil,
			nil,
			"Redridge Mountains",
			17.9,
			18.6,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[1666] = {
		{
			1666,
			"Marshal Haggard",
			10,
			"Warrior",
			1,
		},
		{
			2010,
		},
		{
			6089,
			"Harry Burlguard",
			"Stormwind City",
			76.2,
			53.4,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26776] = {
		{
			26776,
			"Ghaliri",
			29,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			44017,
			"Priestess Thaalia",
			"Northern Stranglethorn",
			53.4,
			66.8,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24858] = {
		{
			24858,
			"Bilgewater Cartel Represent",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38432,
			"Megs Dreadshredder",
			"The Lost Isles",
			52.2,
			73.09999999999999,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27032] = {
		{
			27032,
			"Bird is the Word",
			18,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			6577,
			"Bingles Blastenheimer",
			"Loch Modan",
			81.7,
			64.59999999999999,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13581] = {
		{
			13581,
			"The Blackwood Pledge",
			15,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33117,
			"Elder Brownpaw",
			"Darkshore",
			40.9,
			56.5,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27288] = {
		{
			27288,
			"The Deserters",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			5089,
			"Balos Jacken",
			"Dustwallow Marsh",
			36.1,
			54.2,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13709] = {
		{
			13709,
			"Valiant Of Thunder Bluff",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33403,
			"Runok Wildmane",
			"Icecrown",
			76.2,
			24.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27544] = {
		{
			27544,
			"Cenarion Tenacity",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			45500,
			"Urk Gagbaz",
			"Eastern Plaguelands",
			35,
			68.09999999999999,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27672] = {
		{
			27672,
			"The Chamber of Khaz'mul",
			39,
			"Uldaman",
			1,
		},
		{
			1017,
		},
		{
			46234,
			"Lead Prospector Durdin",
			"Uldaman",
			64.09999999999999,
			72.59999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13901] = {
		{
			13901,
			"Deep Despair",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			12719,
			"Marukai",
			"Ashenvale",
			12.6,
			35.3,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27928] = {
		{
			27928,
			"A Favor for the Furrier",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47670,
			"Belloc Brightblade",
			"Uldum",
			24.4,
			64.5,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28056] = {
		{
			28056,
			"Rise, Obsidion",
			49,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47393,
			"Mountain-Lord Rendan",
			"Searing Gorge",
			0,
			0,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28184] = {
		{
			28184,
			"Chiselgrip, the Heart of the Steppes",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			47811,
			"John J. Keeshan",
			"Burning Steppes",
			17.3,
			52,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28312] = {
		{
			28312,
			"Latent Demons of the Land",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48307,
			"Colonel Troteman",
			"Burning Steppes",
			73.5,
			67.3,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14221] = {
		{
			14221,
			"Never Surrender, Sometimes Retreat",
			5,
			"Gilneas City",
			1,
		},
		{
			50,
		},
		{
			35618,
			"Tobias Mistmantle",
			"Gilneas City",
			40.3,
			39.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14285] = {
		{
			14285,
			"Safety in Numbers",
			3,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35871,
			"Loren the Fence",
			"Gilneas City",
			71.09999999999999,
			65.5,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28696] = {
		{
			28696,
			"Bomb's Away!",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48361,
			"Private Sarlosk",
			"Tol Barad Peninsula",
			55.7,
			78.7,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28824] = {
		{
			28824,
			"Wayward Child [Dungeon]",
			84,
			"The Stonecore",
			1,
		},
		{
			1061,
		},
		{
			42465,
			"Therazane",
			"Deepholm",
			56.4,
			12.2,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14477] = {
		{
			14477,
			"Push the Button!",
			20,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36785,
			"Bombardier Captain Smooks",
			"Azshara",
			14.5,
			75.5,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27096] = {
		{
			27096,
			"Orcs are in Order",
			13,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			44916,
			"Admiral Hatchet",
			"Silverpine Forest",
			44,
			21.3,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27029] = {
		{
			27029,
			"Cure the Scourge",
			44,
			"Razorfen Downs",
			1,
		},
		{
			1008,
		},
		{
			44837,
			"Koristrasza",
			"Razorfen Downs",
			48.9,
			30.7,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10318] = {
		{
			10318,
			"[70] Dealing with the Overmaster",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20393,
			"Foreman Sundown",
			"Netherstorm",
			26.4,
			42.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26712] = {
		{
			26712,
			"Off to the Bank",
			3,
			"Kezan",
			1,
		},
		{
			90,
		},
		{
			35053,
			"Candy Cane",
			"Kezan",
			56.4,
			77.09999999999999,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26584] = {
		{
			26584,
			"Shaken and Stirred",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42472,
			"Gorsik the Tumultuous",
			"Deepholm",
			72.2,
			53.9,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26456] = {
		{
			26456,
			"[25P] Report from the Northern Front [PvP]",
			25,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3880,
			"Sentinel Melyria Frostshadow",
			"Ashenvale",
			59,
			58.8,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13165] = {
		{
			13165,
			"Taking Back Acherus",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			29173,
			"Highlord Darion Mograine",
			"Plaguelands: The Scarlet Enclave",
			39.1,
			39,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26200] = {
		{
			26200,
			"The Arts of a Priest",
			3,
			"Chill Breeze Valley",
			1,
		},
		{
			36,
		},
		{
			42323,
			"\"Doc\" Cogspin",
			"Dun Morogh",
			33.9,
			34.9,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26072] = {
		{
			26072,
			"Into the Totem",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41600,
			"Erunak Stonespeaker",
			"Abyssal Depths",
			42.7,
			37.8,
			614,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12973] = {
		{
			12973,
			"The Brothers Bronzebeard",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30382,
			"Brann Bronzebeard",
			"The Storm Peaks",
			39.5,
			56.4,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25816] = {
		{
			25816,
			"Cursed to Roam",
			22,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			1239,
			"First Mate Fitzsimmons",
			"Wetlands",
			10.9,
			59.7,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10316] = {
		{
			10316,
			"Searching for Evidence",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19488,
			"Custodian Dieworth",
			"Netherstorm",
			57.5,
			86.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10255] = {
		{
			10255,
			"Testing the Antidote",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16991,
			"Thiah Redmane",
			"Hellfire Peninsula",
			15.7,
			52.1,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12717] = {
		{
			12717,
			"Noth's Special Brew",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28919,
			"Noth the Plaguebringer",
			"Plaguelands: The Scarlet Enclave",
			55.9,
			52.5,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12653] = {
		{
			12653,
			"Back to Har'koa",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28561,
			"Spirit of Rhunok",
			"Zul'Drak",
			53.4,
			38.9,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[1938] = {
		{
			1938,
			"Ur's Treatise on Shadow Magic",
			28,
			"Mage",
			1,
		},
		{
			2004,
		},
		{
			5694,
			"High Sorcerer Andromath",
			"Stormwind City",
			48.8,
			87.8,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[7783] = {
		{
			7783,
			"The Lord of Blackrock",
			60,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			nil,
			nil,
			"Blackwing Lair",
			72.8,
			80.8,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25176] = {
		{
			25176,
			"Exploiting the Situation",
			7,
			"Durotar",
			1,
		},
		{
			10,
		},
		{
			39423,
			"Gail Nozzywig",
			"Durotar",
			53,
			43.1,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12525] = {
		{
			12525,
			"Wipe That Grin Off His Face",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28032,
			"Debaar",
			"Sholazar Basin",
			27.2,
			59.8,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24920] = {
		{
			24920,
			"[11] Slowing the Inevitable",
			11,
			"Gilneas City",
			1,
		},
		{
			50,
		},
		{
			38539,
			"King Genn Greymane",
			"Gilneas City",
			32,
			57.6,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13898] = {
		{
			13898,
			"The Tides Turn Against Us",
			20,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			34403,
			"Felros",
			"Darkshore",
			45.3,
			75.09999999999999,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28299] = {
		{
			28299,
			"Meet with Zevrost",
			50,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			4563,
			"Kaal Soulreaper",
			"Undercity",
			86.09999999999999,
			15.3,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[8784] = {
		{
			8784,
			"Secrets of the Qiraji",
			60,
			"Ahn'Qiraj",
			1,
		},
		{
			99999,
		},
		{
			44856,
			"Perixa",
			"Orgrimmar",
			49,
			83.5,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27404] = {
		{
			27404,
			"The Circle's Future [Dungeon]",
			20,
			"Druid",
			1,
		},
		{
			2002,
		},
		{
			12042,
			"Loganaar",
			"Moonglade",
			52.4,
			40.3,
			241,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10221] = {
		{
			10221,
			"Dr. Boom!",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19634,
			"Lead Sapper Blastfizzle",
			"Netherstorm",
			34.1,
			68.09999999999999,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14188] = {
		{
			14188,
			"Avenge Furien!",
			30,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35295,
			"Cerelia",
			"Desolace",
			44.6,
			29.6,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27148] = {
		{
			27148,
			"School's Out Forever",
			44,
			"Scholomance",
			1,
		},
		{
			1011,
		},
		{
			45108,
			"Lucien Sarkhoff",
			"Scholomance",
			29.5,
			32.9,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27019] = {
		{
			27019,
			"Scourge of the Downs [Dungeon]",
			44,
			"Razorfen Downs",
			1,
		},
		{
			1008,
		},
		{
			8516,
			"Belnistrasz",
			"Razorfen Downs",
			77.7,
			16.2,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24473] = {
		{
			24473,
			"Lockdown in Anvilmar",
			2,
			"Coldridge Valley",
			1,
		},
		{
			36,
		},
		{
			37081,
			"Joren Ironstock",
			"Dun Morogh",
			36.8,
			70.09999999999999,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24601] = {
		{
			24601,
			"The Nightmare Scar",
			32,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37570,
			"Naralex",
			"Southern Barrens",
			50.4,
			40.7,
			607,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[5943] = {
		{
			5943,
			"Gizelton Caravan",
			35,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			11626,
			"Rigger Gizelton",
			"Desolace",
			45.4,
			75.3,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8334] = {
		{
			8334,
			"Aggression",
			4,
			"Sunstrider Isle",
			1,
		},
		{
			40,
		},
		{
			15281,
			"Lanthan Perilon",
			"Eversong Woods",
			35.4,
			22.5,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24477] = {
		{
			24477,
			"Dwarven Artifacts",
			2,
			"Coldridge Valley",
			1,
		},
		{
			36,
		},
		{
			1104,
			"Grundel Harkin",
			"Dun Morogh",
			35.8,
			66.3,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24861] = {
		{
			24861,
			"Last Rites, First Rites",
			5,
			"Mulgore",
			1,
		},
		{
			16,
		},
		{
			2981,
			"Chief Hawkwind",
			"Mulgore",
			45.1,
			75.5,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25241] = {
		{
			25241,
			"The Land, Corrupted",
			36,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39377,
			"Konu Runetotem",
			"Feralas",
			41.4,
			15.4,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25369] = {
		{
			25369,
			"Stinglasher",
			38,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			7875,
			"Hadoken Swiftstrider",
			"Feralas",
			74.90000000000001,
			42.5,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13646] = {
		{
			13646,
			"Astranaar Bound",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33445,
			"Sentinel Avana",
			"Ashenvale",
			26.7,
			36,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[1454] = {
		{
			1454,
			"[30] The Karnitol Shipwreck",
			30,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			5638,
			"Kreldig Ungor",
			"Desolace",
			66.2,
			9.800000000000001,
			101,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25753] = {
		{
			25753,
			"Fallen But Not Forgotten",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40642,
			"Captain Taylor",
			"Shimmering Expanse",
			39.1,
			78.5,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25881] = {
		{
			25881,
			"Lost Wardens",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			41507,
			"Niden",
			"Mount Hyjal",
			42.3,
			60.7,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26009] = {
		{
			26009,
			"Seek and Destroy",
			27,
			"Stonetalon Mountains",
			3,
		},
		{
			21,
		},
		{
			41023,
			"Overlord Krom'gar",
			"Stonetalon Mountains",
			66.2,
			63.7,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26137] = {
		{
			26137,
			"Checking on the Boys",
			20,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			1343,
			"Mountaineer Stormpike",
			"Loch Modan",
			25.4,
			17.9,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26265] = {
		{
			26265,
			"Dealing with the Fallout",
			2,
			"Chill Breeze Valley",
			1,
		},
		{
			36,
		},
		{
			42630,
			"Corporal Fizzwhistle",
			"Dun Morogh",
			33.4,
			39.2,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26393] = {
		{
			26393,
			"A Swift Message",
			7,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			514,
			"Smith Argus",
			"Elwynn Forest",
			41.7,
			65.59999999999999,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26521] = {
		{
			26521,
			"Faces of Evil",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43156,
			"Fraggar Thundermantle",
			"The Hinterlands",
			63.8,
			60,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26649] = {
		{
			26649,
			"Drive-By Piracy",
			34,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2547,
			"Ironpatch",
			"The Cape of Stranglethorn",
			46.7,
			94.90000000000001,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26777] = {
		{
			26777,
			"Soothing Spirits",
			24,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			43731,
			"Sister Elsington",
			"Duskwood",
			19.9,
			58,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26905] = {
		{
			26905,
			"Agamaggan's Charge",
			35,
			"Razorfen Kraul",
			1,
		},
		{
			1009,
		},
		{
			44415,
			"Spirit of Agamaggan",
			"Razorfen Kraul",
			19.9,
			33.1,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27033] = {
		{
			27033,
			"Skystrider's Heart",
			18,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			44618,
			"Rusted Skystrider",
			"Loch Modan",
			78.5,
			76.5,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27161] = {
		{
			27161,
			"The Endless Flow",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44467,
			"Lang Loosegrip",
			"Western Plaguelands",
			41.2,
			70.2,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9550] = {
		{
			9550,
			"A Map to Where?",
			16,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17421,
			"Clopper Wizbang",
			"Bloodmyst Isle",
			42,
			21.2,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27417] = {
		{
			27417,
			"The Brood of Onyxia",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			nil,
			nil,
			"Dustwallow Marsh",
			36.3,
			31.4,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27545] = {
		{
			27545,
			"The Way is Open",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45173,
			"Talaa",
			"Twilight Highlands",
			79.40000000000001,
			77.59999999999999,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27673] = {
		{
			27673,
			"It's What's Inside That Counts",
			39,
			"Uldaman",
			1,
		},
		{
			1017,
		},
		{
			46234,
			"Lead Prospector Durdin",
			"Uldaman",
			64.09999999999999,
			72.3,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9806] = {
		{
			9806,
			"Fertile Spores",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17925,
			"Gshaff",
			"Zangarmarsh",
			19.2,
			49.5,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27929] = {
		{
			27929,
			"Drag 'em Down",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			nil,
			nil,
			"Twilight Highlands",
			54.7,
			44.1,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9934] = {
		{
			9934,
			"Message to Garadar",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18261,
			"Lantresor of the Blade",
			"Nagrand",
			73.8,
			62.6,
			477,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28185] = {
		{
			28185,
			"Svarnos",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48061,
			"2nd Lieutenant Wansworth",
			"Tol Barad",
			51.5,
			49.7,
			708,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28313] = {
		{
			28313,
			"A Heap of Delicious Worg",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48307,
			"Colonel Troteman",
			"Burning Steppes",
			73.5,
			67.3,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28441] = {
		{
			28441,
			"Enough Damage For One Day",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			7025,
			"Blackrock Soldier",
			"Burning Steppes",
			34.2,
			35.2,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28569] = {
		{
			28569,
			"The Bogpaddle Bullet",
			52,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			9177,
			"Oralius",
			"Burning Steppes",
			71.90000000000001,
			68,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28697] = {
		{
			28697,
			"Ghostbuster",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48361,
			"Private Sarlosk",
			"Tol Barad Peninsula",
			55.6,
			78.7,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28825] = {
		{
			28825,
			"A Personal Summons",
			80,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			44238,
			"Harrison Jones",
			"Stormwind City",
			85.7,
			25.9,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10382] = {
		{
			10382,
			"Go to the Front",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			20232,
			"Wing Commander Gryphongar",
			"Hellfire Peninsula",
			79.3,
			33.9,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10446] = {
		{
			10446,
			"The Final Code",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			21006,
			"Lieutenant Meridian",
			"Terokkar Forest",
			69.7,
			44.1,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10510] = {
		{
			10510,
			"Into the Draenethyst Mine",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21197,
			"Bronwyn Stouthammer",
			"Blade's Edge Mountains",
			37.5,
			65.09999999999999,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10574] = {
		{
			10574,
			"The Ashtongue Corruptors",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21402,
			"Anchorite Ceyla",
			"Shadowmoon Valley",
			62.6,
			28.4,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9869] = {
		{
			9869,
			"The Throne of the Elements",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18233,
			"Elementalist Ioki",
			"Nagrand",
			55.5,
			68.8,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10702] = {
		{
			10702,
			"A Grunt's Work...",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21769,
			"Overlord Or'barokh",
			"Shadowmoon Valley",
			28.5,
			26.5,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10766] = {
		{
			10766,
			"Invasion Point: Cataclysm",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21357,
			"Wing Commander Nuainn",
			"Shadowmoon Valley",
			39.5,
			53.7,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10830] = {
		{
			10830,
			"Exorcising the Trees",
			68,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22215,
			"Treebole",
			"Blade's Edge Mountains",
			36.6,
			23.3,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10894] = {
		{
			10894,
			"Wyrmskull Watcher",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22007,
			"Tree Warden Chawn",
			"Blade's Edge Mountains",
			61.9,
			39.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9933] = {
		{
			9933,
			"Message to Telaar",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18261,
			"Lantresor of the Blade",
			"Nagrand",
			73.8,
			62.6,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11022] = {
		{
			11022,
			"Speak with Mog'dorg",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			23053,
			"Bladespire Supplicant",
			"Blade's Edge Mountains",
			55.8,
			46.4,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11086] = {
		{
			11086,
			"Disrupting the Twilight Portal",
			70,
			"Shadowmoon Valley",
			3,
		},
		{
			73,
		},
		{
			23139,
			"Overlord Mor'ghor",
			"Shadowmoon Valley",
			66.2,
			85.7,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9936] = {
		{
			9936,
			"Wanted: Giselda the Crone",
			66,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18353,
			"Huntress Bintook",
			"Nagrand",
			54.8,
			70.8,
			477,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12235] = {
		{
			12235,
			"[72] [72] Naxxramas and the Fall of Wintergarde",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27136,
			"High Commander Halford Wyrmbane",
			"Dragonblight",
			78.40000000000001,
			48.3,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11278] = {
		{
			11278,
			"Return to Valgarde",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24150,
			"Glorenfeld",
			"Howling Fjord",
			56.8,
			53.7,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13708] = {
		{
			13708,
			"Valiant Of Sen'jin",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33372,
			"Zul'tore",
			"Icecrown",
			76,
			24.5,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11406] = {
		{
			11406,
			"Everything Must Be Ready",
			70,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24494,
			"Quartermaster Brevin",
			"Howling Fjord",
			30.7,
			42.9,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11470] = {
		{
			11470,
			"There Exists No Honor Among Birds",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24750,
			"Hidalgo the Master Falconer",
			"Howling Fjord",
			75.3,
			65,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11534] = {
		{
			11534,
			"Report to Nasuun",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			25034,
			"Tradesman Portanuus",
			"Isle of Quel'Danas",
			47.3,
			35.1,
			499,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11598] = {
		{
			11598,
			"Taking Back Mightstone Quarry",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25279,
			"Overlord Razgor",
			"Borean Tundra",
			43.2,
			55,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11662] = {
		{
			11662,
			"Seek Out Karuk!",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25476,
			"Waltor of Pal'ea",
			"Borean Tundra",
			32.3,
			54.4,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11726] = {
		{
			11726,
			"A Little Bit of Spice",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25807,
			"Iggy \"Tailspin\" Cogtoggle",
			"Borean Tundra",
			61.7,
			35.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[2948] = {
		{
			2948,
			"Gnome Improvement",
			35,
			"Ironforge",
			1,
		},
		{
			43,
		},
		{
			6826,
			"Talvash del Kissel",
			"Ironforge",
			36.1,
			3.7,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13676] = {
		{
			13676,
			"Training In The Field",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33658,
			"Amariel Sunsworn",
			"Icecrown",
			76.3,
			24.4,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11918] = {
		{
			11918,
			"Basic Training",
			71,
			"Coldarra",
			1,
		},
		{
			77,
		},
		{
			26117,
			"Raelorasz",
			"Borean Tundra",
			33.3,
			34.5,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11982] = {
		{
			11982,
			"Raining Down Destruction",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26260,
			"Kurun",
			"Grizzly Hills",
			65.59999999999999,
			17.7,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12046] = {
		{
			12046,
			"Soft Packaging",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26661,
			"Zivlix",
			"Dragonblight",
			54.7,
			23.3,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12110] = {
		{
			12110,
			"The End of the Line",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26873,
			"Mage-Commander Evenstar",
			"Dragonblight",
			40.3,
			66.90000000000001,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12174] = {
		{
			12174,
			"High Commander Halford Wyrmbane",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26881,
			"Palena Silvercloud",
			"Dragonblight",
			29.2,
			55.3,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12238] = {
		{
			12238,
			"Cleansing Drak'Tharon [Dungeon]",
			75,
			"Drak'Tharon Keep",
			1,
		},
		{
			1044,
		},
		{
			26787,
			"Image of Drakuru",
			"Grizzly Hills",
			71.7,
			26.1,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24602] = {
		{
			24602,
			"[11] Laid to Rest",
			11,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			38144,
			"Krennan Aranas",
			"Gilneas",
			49.7,
			56.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[3092] = {
		{
			3092,
			"Etched Note",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			44927,
			"Rohaku Stonehoof",
			"Mulgore",
			46.2,
			82.40000000000001,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12430] = {
		{
			12430,
			"The Conquest Pit: Death Is Likely [Group]",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27719,
			"Grennix Shivwiggle",
			"Grizzly Hills",
			22.4,
			63.8,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10320] = {
		{
			10320,
			"Destroy Naberius! [Group]",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19488,
			"Custodian Dieworth",
			"Netherstorm",
			57.5,
			86.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12558] = {
		{
			12558,
			"Dreadsaber Mastery: Ready to Pounce",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28031,
			"Buck Cantwell",
			"Sholazar Basin",
			26.7,
			59.1,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12622] = {
		{
			12622,
			"The Leaders at Jin'Alai",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28484,
			"Scalper Ahunae",
			"Zul'Drak",
			59.1,
			56.3,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12686] = {
		{
			12686,
			"Zero Tolerance",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28503,
			"Overlord Drakuru",
			"Zul'Drak",
			27.1,
			46.1,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12750] = {
		{
			12750,
			"A Special Surprise",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			29053,
			"Knight Commander Plaguefist",
			"Plaguelands: The Scarlet Enclave",
			52.9,
			82.3,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25626] = {
		{
			25626,
			"Visions of the Past: Rise from the Deep",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39881,
			"Wavespeaker Valoren",
			"Shimmering Expanse",
			49.4,
			57.6,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25754] = {
		{
			25754,
			"Gauging Success",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			nil,
			nil,
			"Shimmering Expanse",
			39.1,
			78.7,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12942] = {
		{
			12942,
			"Off With Their Black Wings",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29997,
			"Iva the Vengeful",
			"The Storm Peaks",
			48.4,
			72.09999999999999,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26010] = {
		{
			26010,
			"Ashes to Ashes",
			27,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41023,
			"Overlord Krom'gar",
			"Stonetalon Mountains",
			66.09999999999999,
			63.8,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13070] = {
		{
			13070,
			"A Cold Front Approaches",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			28179,
			"Highlord Tirion Fordring",
			"Icecrown",
			87.5,
			75.90000000000001,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26266] = {
		{
			26266,
			"Hope for the People",
			13,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			235,
			"Salma Saldean",
			"Westfall",
			56.5,
			30.4,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26394] = {
		{
			26394,
			"Continue to Stormwind",
			7,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			42983,
			"Bartlett the Brave",
			"Elwynn Forest",
			41.8,
			64.7,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13262] = {
		{
			13262,
			"Blow it Up!",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			31440,
			"Sergeant Kregga",
			"Icecrown",
			54.9,
			84.3,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26650] = {
		{
			26650,
			"The Damsel's Luck",
			35,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			2546,
			"Fleet Master Firallon",
			"The Cape of Stranglethorn",
			46.7,
			95.3,
			673,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26778] = {
		{
			26778,
			"The Cries of the Dead",
			24,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			nil,
			nil,
			"Duskwood",
			19.9,
			57.9,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26906] = {
		{
			26906,
			"Agamaggan",
			35,
			"Razorfen Kraul",
			1,
		},
		{
			1009,
		},
		{
			44402,
			"Auld Stonespire",
			"Razorfen Kraul",
			67.40000000000001,
			65.90000000000001,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27034] = {
		{
			27034,
			"He's That Age",
			18,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			6577,
			"Bingles Blastenheimer",
			"Loch Modan",
			81.7,
			64.5,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27162] = {
		{
			27162,
			"Scholomancer",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44453,
			"Thassarian",
			"Western Plaguelands",
			41.1,
			70.40000000000001,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27290] = {
		{
			27290,
			"To Forsaken Forward Command",
			14,
			"Ruins of Gilneas",
			1,
		},
		{
			49,
		},
		{
			44365,
			"Lady Sylvanas Windrunner",
			"Silverpine Forest",
			45,
			41.7,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27418] = {
		{
			27418,
			"Challenge Overlord Mok'Morokk [Group]",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4500,
			"Overlord Mok'Morokk",
			"Dustwallow Marsh",
			36.2,
			31.5,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13774] = {
		{
			13774,
			"A Worthy Weapon",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33403,
			"Runok Wildmane",
			"Icecrown",
			76.2,
			24.6,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27674] = {
		{
			27674,
			"To the Surface",
			2,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			46255,
			"Technician Braggle",
			"Dun Morogh",
			29.5,
			37.7,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13902] = {
		{
			13902,
			"Mounting the Offensive",
			18,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33091,
			"Malfurion Stormrage",
			"Darkshore",
			43.7,
			53.5,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27930] = {
		{
			27930,
			"Devastation",
			47,
			"Badlands",
			1,
		},
		{
			32,
		},
		{
			nil,
			nil,
			"Badlands",
			15.8,
			33.2,
			17,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28058] = {
		{
			28058,
			"Look at the Size of It!",
			50,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			nil,
			nil,
			"Searing Gorge",
			45.9,
			29.6,
			28,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28186] = {
		{
			28186,
			"Cursed Shackles",
			85,
			"Tol Barad",
			3,
		},
		{
			61,
		},
		{
			48061,
			"2nd Lieutenant Wansworth",
			"Tol Barad",
			51.5,
			49.7,
			708,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28314] = {
		{
			28314,
			"Blood Tour",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48306,
			"John J. Keeshan",
			"Burning Steppes",
			73.59999999999999,
			67.09999999999999,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14222] = {
		{
			14222,
			"Last Stand",
			5,
			"Gilneas City",
			1,
		},
		{
			50,
		},
		{
			35566,
			"Lord Darius Crowley",
			"Gilneas City",
			48.7,
			52.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14286] = {
		{
			14286,
			"Safety in Numbers",
			3,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35839,
			"Sergeant Cleese",
			"Gilneas City",
			68.09999999999999,
			64.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28698] = {
		{
			28698,
			"Cannonball!",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48361,
			"Private Sarlosk",
			"Tol Barad Peninsula",
			55.7,
			78.7,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28826] = {
		{
			28826,
			"Eye of the Storm",
			80,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			45226,
			"Naraat the Earthspeaker",
			"Stormwind City",
			74.59999999999999,
			19.1,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14478] = {
		{
			14478,
			"Operation Fishgut",
			16,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			nil,
			nil,
			"Azshara",
			57,
			50.1,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27919] = {
		{
			27919,
			"Onward to the Blasted Lands",
			55,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			17127,
			"Anchorite Avuun",
			"Swamp of Sorrows",
			26.8,
			33.5,
			38,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27028] = {
		{
			27028,
			"Hornet Hunting",
			16,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1154,
			"Marek Ironheart",
			"Loch Modan",
			81.8,
			61.8,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27023] = {
		{
			27023,
			"The Way of the Sunwalkers",
			3,
			"Paladin",
			1,
		},
		{
			2005,
		},
		{
			37737,
			"Sunwalker Helaku",
			"Mulgore",
			45,
			75.40000000000001,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9422] = {
		{
			9422,
			"Scouring the Desert [PvP]",
			56,
			"Silithus",
			1,
		},
		{
			19,
		},
		{
			17079,
			"General Kirika",
			"Silithus",
			54.6,
			62.8,
			261,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12556] = {
		{
			12556,
			"Rhino Mastery: The Kill",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27986,
			"Hemet Nesingwary",
			"Sholazar Basin",
			27.1,
			58.8,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13647] = {
		{
			13647,
			"Joining the Hunt",
			16,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1345,
			"Magmar Fellhew",
			"Loch Modan",
			65,
			66.59999999999999,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25758] = {
		{
			25758,
			"A Gap in Their Armor",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			41006,
			"Thisalee Crow",
			"Mount Hyjal",
			32.8,
			70.7,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[9491] = {
		{
			9491,
			"Greed",
			18,
			"Rogue",
			1,
		},
		{
			2007,
		},
		{
			16268,
			"Eralan",
			"Ghostlands",
			47.1,
			34.2,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26142] = {
		{
			26142,
			"Ascend No More!",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			42197,
			"L'ghorek",
			"Abyssal Depths",
			38.6,
			45.4,
			614,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[3108] = {
		{
			3108,
			"Etched Rune",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			37087,
			"Jona Ironstock",
			"Dun Morogh",
			35.6,
			65.90000000000001,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13264] = {
		{
			13264,
			"That's Abominable!",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			60.1,
			33.2,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13328] = {
		{
			13328,
			"Shatter the Shards [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			64.09999999999999,
			44.9,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24474] = {
		{
			24474,
			"First Things First: We're Gonna Need Some Beer",
			2,
			"Coldridge Valley",
			1,
		},
		{
			36,
		},
		{
			37087,
			"Jona Ironstock",
			"Dun Morogh",
			35.6,
			66.09999999999999,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28759] = {
		{
			28759,
			"Lions for Lambs",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.1,
			42,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28631] = {
		{
			28631,
			"The Perfect Horns",
			52,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			10305,
			"Umi Rumplesnicker",
			"Winterspring",
			59.4,
			49.8,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[1270] = {
		{
			1270,
			"Stinky's Escape [Escort]",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4880,
			"\"Stinky\" Ignatz",
			"Dustwallow Marsh",
			46.9,
			17.6,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10093] = {
		{
			10093,
			"The Temple of Telhamat",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16839,
			"Warp-Scryer Kryv",
			"Hellfire Peninsula",
			56.7,
			66.5,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27923] = {
		{
			27923,
			"Smoke in Their Eyes",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			46872,
			"Prince Nadun",
			"Uldum",
			59.6,
			72,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10003] = {
		{
			10003,
			"The Firewing Liaison",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18566,
			"Shadowstalker Kaide",
			"Terokkar Forest",
			63.4,
			42.7,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9901] = {
		{
			9901,
			"Unfinished Business",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18295,
			"Prospector Conall",
			"Zangarmarsh",
			68.40000000000001,
			49.2,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13623] = {
		{
			13623,
			"Delivery for Orendil",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33204,
			"Evenar Stillwhisper",
			"Ashenvale",
			26.8,
			22,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9773] = {
		{
			9773,
			"No More Mushrooms!",
			61,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18016,
			"Magasha",
			"Zangarmarsh",
			84.5,
			54.3,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27607] = {
		{
			27607,
			"The Southern Flank",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			44169,
			"Zaela",
			"Twilight Highlands",
			75.3,
			54.8,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9645] = {
		{
			9645,
			"The Master's Terrace [Raid]",
			70,
			"Karazhan",
			1,
		},
		{
			1073,
		},
		{
			16815,
			"Kamsis",
			"Karazhan",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27351] = {
		{
			27351,
			"A Royal Reward [Dungeon]",
			20,
			"Rogue",
			1,
		},
		{
			2007,
		},
		{
			13283,
			"Lord Tony Romano",
			"Stormwind City",
			79.5,
			61.3,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12598] = {
		{
			12598,
			"Throwing Down",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28044,
			"Captain Rupert",
			"Zul'Drak",
			58.1,
			72.5,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[4727] = {
		{
			4727,
			"Beached Sea Turtle",
			15,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			nil,
			nil,
			"Darkshore",
			54.9,
			15.8,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9998] = {
		{
			9998,
			"[63] Unruly Neighbors",
			63,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18387,
			"Bertelm",
			"Terokkar Forest",
			58.2,
			54.8,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24475] = {
		{
			24475,
			"All the Other Stuff",
			2,
			"Coldridge Valley",
			1,
		},
		{
			36,
		},
		{
			37087,
			"Jona Ironstock",
			"Dun Morogh",
			35.6,
			65.90000000000001,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24603] = {
		{
			24603,
			"Don't Stop Bereavin'",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37847,
			"Mankrik",
			"Southern Barrens",
			44.5,
			88,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24731] = {
		{
			24731,
			"The Fare of Lar'korwi",
			51,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9619,
			"Torwa Pathfinder",
			"Un'Goro Crater",
			71.2,
			76.7,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8335] = {
		{
			8335,
			"Felendren the Banished",
			5,
			"Sunstrider Isle",
			1,
		},
		{
			40,
		},
		{
			15281,
			"Lanthan Perilon",
			"Eversong Woods",
			35.3,
			22.5,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27806] = {
		{
			27806,
			"Honorable Bearing",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46804,
			"Keegan Firebeard",
			"Twilight Highlands",
			60.1,
			57.9,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8463] = {
		{
			8463,
			"Unstable Mana Crystals",
			5,
			"Eversong Woods",
			1,
		},
		{
			40,
		},
		{
			15403,
			"Aeldon Sunbrand",
			"Eversong Woods",
			48.1,
			46,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25243] = {
		{
			25243,
			"She Loves Me, She Loves Me NOT!",
			11,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38387,
			"Sassy Hardwrench",
			"The Lost Isles",
			43.7,
			25.3,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25371] = {
		{
			25371,
			"The Abyssal Ride",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41248,
			"Moanah Stormhoof",
			"Kelp'thar Forest",
			45.9,
			46.8,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25499] = {
		{
			25499,
			"Agility Training: Run Like Hell!",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39413,
			"Instructor Mylva",
			"Mount Hyjal",
			89.59999999999999,
			59,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25627] = {
		{
			25627,
			"[42] [42] Two-Tusk Takedown",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40885,
			"Wizzle Brassbolts",
			"Thousand Needles",
			91.59999999999999,
			78.7,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25755] = {
		{
			25755,
			"Visions of the Past: The Slaughter of Biel'aran Ridge",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39881,
			"Wavespeaker Valoren",
			"Shimmering Expanse",
			39.2,
			78.59999999999999,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25883] = {
		{
			25883,
			"How Disarming",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41481,
			"Zin'jatar Guardian",
			"Kelp'thar Forest",
			60.4,
			69.59999999999999,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26011] = {
		{
			26011,
			"Enemy of the Horde: Marshal Paltrow",
			27,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			40903,
			"Spy-Mistress Anara",
			"Stonetalon Mountains",
			65.7,
			63.3,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26139] = {
		{
			26139,
			"Into Arathi",
			25,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			nil,
			nil,
			"Wetlands",
			51.2,
			9.4,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26267] = {
		{
			26267,
			"Skulk Rock Clean-Up",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42613,
			"Elder Torntusk",
			"The Hinterlands",
			78.2,
			81.40000000000001,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26395] = {
		{
			26395,
			"Dungar Longdrink",
			7,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			1323,
			"Osric Strang",
			"Stormwind City",
			76.90000000000001,
			61.5,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26523] = {
		{
			26523,
			"All That Skitters",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43156,
			"Fraggar Thundermantle",
			"The Hinterlands",
			63.8,
			60,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26651] = {
		{
			26651,
			"To Win a War, You Gotta Become War",
			18,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			nil,
			nil,
			"Redridge Mountains",
			69.40000000000001,
			60.5,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26779] = {
		{
			26779,
			"Zul'Mamwe Mambo",
			29,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			44021,
			"Ghaliri",
			"Northern Stranglethorn",
			52.7,
			66.7,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26907] = {
		{
			26907,
			"Take Them Down!",
			35,
			"Razorfen Kraul",
			1,
		},
		{
			1009,
		},
		{
			44402,
			"Auld Stonespire",
			"Razorfen Kraul",
			67.40000000000001,
			65.90000000000001,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27035] = {
		{
			27035,
			"Standing Up",
			18,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			44870,
			"Ando Blastenheimer",
			"Loch Modan",
			58.5,
			28.9,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27163] = {
		{
			27163,
			"Brute Strength",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44453,
			"Thassarian",
			"Western Plaguelands",
			41.1,
			70.40000000000001,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27291] = {
		{
			27291,
			"Peace at Last",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4944,
			"Captain Garran Vimes",
			"Dustwallow Marsh",
			68.2,
			48.5,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25868] = {
		{
			25868,
			"Yorla Darksnare",
			23,
			"Wetlands",
			1,
		},
		{
			68,
		},
		{
			41415,
			"Shilah Slabchisel",
			"Wetlands",
			26.9,
			26.1,
			40,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27547] = {
		{
			27547,
			"Of No Consequence",
			19,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			45880,
			"Baron Ashbury",
			"Silverpine Forest",
			51.9,
			65.5,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9743] = {
		{
			9743,
			"Natural Enemies",
			64,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17923,
			"Fahssn",
			"Zangarmarsh",
			19,
			63.4,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27803] = {
		{
			27803,
			"Welcome Relief",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46804,
			"Keegan Firebeard",
			"Twilight Highlands",
			60.2,
			57.9,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27931] = {
		{
			27931,
			"The Quaking Fields",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43071,
			"Crag Rockcrusher",
			"Deepholm",
			27.9,
			68.59999999999999,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28059] = {
		{
			28059,
			"Claiming The Keep",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			47240,
			"Commander Marcus Johnson",
			"Tol Barad Peninsula",
			73.40000000000001,
			59.5,
			709,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9999] = {
		{
			9999,
			"Buying Time [Group]",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18417,
			"Altruis the Sufferer",
			"Nagrand",
			27.3,
			43.1,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10063] = {
		{
			10063,
			"Explorers' League, Is That Something for Gnomes?",
			17,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			18804,
			"Prospector Nachlan",
			"Bloodmyst Isle",
			56.2,
			54.2,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28443] = {
		{
			28443,
			"Blackened Ashes",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48569,
			"Eitrigg",
			"Burning Steppes",
			0,
			0,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28571] = {
		{
			28571,
			"Warchief's Command: Hillsbrad Foothills!",
			20,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			nil,
			nil,
			"Undercity",
			65.90000000000001,
			49.5,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28699] = {
		{
			28699,
			"Hero's Call: Northern Stranglethorn Vale!",
			25,
			"Northern Stranglethorn",
			4,
		},
		{
			47,
		},
		{
			0,
			"Gezz",
			"Stormwind City",
			63.4,
			71.59999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28827] = {
		{
			28827,
			"To the Depths",
			80,
			"Stormwind City",
			1,
		},
		{
			55,
		},
		{
			45226,
			"Naraat the Earthspeaker",
			"Stormwind City",
			74.5,
			19.2,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13835] = {
		{
			13835,
			"Mastery Of The Shield-Breaker",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33647,
			"Scout Shalyndria",
			"Icecrown",
			76.40000000000001,
			19.4,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10447] = {
		{
			10447,
			"The Final Code",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			21007,
			"Sergeant Chawni",
			"Terokkar Forest",
			63.3,
			42.3,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10511] = {
		{
			10511,
			"Strange Brew",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21151,
			"Borgrim Stouthammer",
			"Blade's Edge Mountains",
			37.4,
			64.8,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10575] = {
		{
			10575,
			"The Warden's Cage",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21402,
			"Anchorite Ceyla",
			"Shadowmoon Valley",
			62.6,
			28.5,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10639] = {
		{
			10639,
			"Teron Gorefiend, I am...",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21797,
			"Ancient Shadowmoon Spirit",
			"Shadowmoon Valley",
			58.3,
			70.7,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10703] = {
		{
			10703,
			"[69] Put On Yer Kneepads...",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21773,
			"Thane Yoregar",
			"Shadowmoon Valley",
			36.3,
			56.9,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10767] = {
		{
			10767,
			"Invasion Point: Cataclysm",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21359,
			"Blood Guard Gulmok",
			"Shadowmoon Valley",
			30.4,
			32.5,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26455] = {
		{
			26455,
			"The Lost Chalice",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			3848,
			"Kayneth Stillwind",
			"Ashenvale",
			85.3,
			44.7,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10895] = {
		{
			10895,
			"Zeth'Gor Must Burn!",
			60,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19409,
			"Wing Commander Dabir'ee",
			"Hellfire Peninsula",
			71.40000000000001,
			62.5,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14410] = {
		{
			14410,
			"The Wilds of Feralas",
			35,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			36487,
			"Khan Shodo",
			"Desolace",
			81.7,
			81.09999999999999,
			101,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11023] = {
		{
			11023,
			"Bomb Them Again!",
			70,
			"Blade's Edge Mountains",
			3,
		},
		{
			69,
		},
		{
			23120,
			"Sky Sergeant Vanderlip",
			"Blade's Edge Mountains",
			27.6,
			52.9,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14411] = {
		{
			14411,
			"Feralas Breadcrumb [PH]",
			35,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			11624,
			"Taiga Wisemane",
			"Desolace",
			25.8,
			68.09999999999999,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27026] = {
		{
			27026,
			"Defcon: Bobcat",
			16,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			44859,
			"Safety Warden Pipsy",
			"Loch Modan",
			82.90000000000001,
			63.3,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11215] = {
		{
			11215,
			"Help Mudsprocket",
			39,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4791,
			"Nazeer Bloodpike",
			"Dustwallow Marsh",
			35.3,
			30.7,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11279] = {
		{
			11279,
			"Green Eggs and Whelps",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24157,
			"Plaguebringer Tillinghast",
			"Howling Fjord",
			53.1,
			66.90000000000001,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11343] = {
		{
			11343,
			"The Echo of Ymiron",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23975,
			"Thoralius the Wise",
			"Howling Fjord",
			59.9,
			61.5,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26642] = {
		{
			26642,
			"Preserving the Barrens",
			12,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			35068,
			"Gotura Fourwinds",
			"Orgrimmar",
			47.7,
			71.3,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11471] = {
		{
			11471,
			"The Jig is Up [Group]",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24741,
			"Annie Bonn",
			"Howling Fjord",
			35.5,
			79.40000000000001,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26514] = {
		{
			26514,
			"Canyon Romp",
			16,
			"Redridge Mountains",
			1,
		},
		{
			48,
		},
		{
			nil,
			nil,
			"Redridge Mountains",
			32.3,
			39.5,
			36,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11599] = {
		{
			11599,
			"Thassarian, My Brother",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25251,
			"Leryssa",
			"Borean Tundra",
			58.7,
			68.40000000000001,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11663] = {
		{
			11663,
			"Sharing Intelligence",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25480,
			"Librarian Normantis",
			"Borean Tundra",
			46.4,
			32.8,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11727] = {
		{
			11727,
			"A Time for Heroes",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25250,
			"General Arlos",
			"Borean Tundra",
			56.7,
			72.7,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11791] = {
		{
			11791,
			"Notify Arlos",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25299,
			"Admiral Cantlebree",
			"Borean Tundra",
			57.8,
			69.2,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12435] = {
		{
			12435,
			"Report to Lord Afrasastrasz",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26917,
			"Alexstrasza the Life-Binder",
			"Dragonblight",
			59.8,
			54.6,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11919] = {
		{
			11919,
			"Drake Hunt",
			71,
			"Coldarra",
			1,
		},
		{
			77,
		},
		{
			26117,
			"Raelorasz",
			"Borean Tundra",
			33.3,
			34.5,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11983] = {
		{
			11983,
			"Blood Oath of the Horde",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26181,
			"Emissary Brighthoof",
			"Dragonblight",
			13.6,
			49.3,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12047] = {
		{
			12047,
			"Something That Doesn't Melt",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26661,
			"Zivlix",
			"Dragonblight",
			54.7,
			23.3,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12111] = {
		{
			12111,
			"Where the Wild Things Roam",
			73,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26504,
			"Soar Hawkfury",
			"Dragonblight",
			37.1,
			48.5,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12175] = {
		{
			12175,
			"Gray Worg Hides",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27037,
			"Hidetrader Jun'ik",
			"Grizzly Hills",
			22,
			65.09999999999999,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12239] = {
		{
			12239,
			"The Spy in New Hearthglen",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27337,
			"Spy Mistress Repine",
			"Dragonblight",
			76.8,
			63.1,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24604] = {
		{
			24604,
			"Concern for Mankrik",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37812,
			"Mahka",
			"Southern Barrens",
			45.2,
			85.40000000000001,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24732] = {
		{
			24732,
			"The Scent of Lar'korwi",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9619,
			"Torwa Pathfinder",
			"Un'Goro Crater",
			71.2,
			76.5,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12431] = {
		{
			12431,
			"The Conquest Pit: Final Showdown [Group]",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27719,
			"Grennix Shivwiggle",
			"Grizzly Hills",
			22.4,
			63.8,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12495] = {
		{
			12495,
			"Audience With The Dragon Queen",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27872,
			"Highlord Bolvar Fordragon",
			"Dragonblight",
			37.8,
			23.3,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12559] = {
		{
			12559,
			"Powering the Waygate - The Makers' Perch",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27801,
			"Avatar of Freya",
			"Sholazar Basin",
			64.5,
			48.5,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12623] = {
		{
			12623,
			"To the Witch Doctor",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28062,
			"Hexxer Ubungo",
			"Zul'Drak",
			40.6,
			65.7,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12687] = {
		{
			12687,
			"Into the Realm of Shadows",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28653,
			"Salanar the Horseman",
			"Plaguelands: The Scarlet Enclave",
			52,
			35.3,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12751] = {
		{
			12751,
			"A Sort Of Homecoming",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			29053,
			"Knight Commander Plaguefist",
			"Plaguelands: The Scarlet Enclave",
			53.1,
			81.90000000000001,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25628] = {
		{
			25628,
			"Two-Tusk Takedown",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40888,
			"Synge",
			"Thousand Needles",
			91.7,
			79.2,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25756] = {
		{
			25756,
			"[41] [41] Get Zherin!",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			41190,
			"Crazzle Sprysprocket",
			"Thousand Needles",
			91.40000000000001,
			57.7,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25884] = {
		{
			25884,
			"Come Hell or High Water",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41344,
			"Rendel Firetongue",
			"Kelp'thar Forest",
			64.09999999999999,
			59.9,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13007] = {
		{
			13007,
			"The Iron Colossus",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29801,
			"Bouldercrag the Rockshaper",
			"The Storm Peaks",
			31.4,
			38,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26140] = {
		{
			26140,
			"Communing with the Ancient",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41600,
			"Erunak Stonespeaker",
			"Abyssal Depths",
			42.6,
			37.8,
			614,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26268] = {
		{
			26268,
			"Skulk Rock Supplies",
			32,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			42613,
			"Elder Torntusk",
			"The Hinterlands",
			78.2,
			81.40000000000001,
			26,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26396] = {
		{
			26396,
			"Return to Argus",
			7,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			352,
			"Dungar Longdrink",
			"Stormwind City",
			70.90000000000001,
			72.7,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13263] = {
		{
			13263,
			"A Short Fuse",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			nil,
			nil,
			"Icecrown",
			54.4,
			86.2,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13327] = {
		{
			13327,
			"Darkmoon Undeath Deck",
			80,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			nil,
			nil,
			"Elwynn Forest",
			41.5,
			69.59999999999999,
			30,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26780] = {
		{
			26780,
			"Nighttime in the Jungle",
			29,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			44043,
			"Kinnel",
			"Northern Stranglethorn",
			53,
			66.2,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26908] = {
		{
			26908,
			"Feeling Thorny",
			33,
			"Razorfen Kraul",
			1,
		},
		{
			1009,
		},
		{
			37812,
			"Mahka",
			"Southern Barrens",
			45.1,
			85.40000000000001,
			607,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27036] = {
		{
			27036,
			"Vyrin's Revenge",
			17,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1156,
			"Vyrin Swiftwind",
			"Loch Modan",
			82,
			64.5,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27164] = {
		{
			27164,
			"Araj the Summoner",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44467,
			"Lang Loosegrip",
			"Western Plaguelands",
			41.2,
			70,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27292] = {
		{
			27292,
			"Return to Krog",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4943,
			"Mosarn",
			"Thunder Bluff",
			54.2,
			80.5,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27420] = {
		{
			27420,
			"Postponing the Inevitable",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			16135,
			"Rayne",
			"Eastern Plaguelands",
			30.2,
			56.9,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27548] = {
		{
			27548,
			"Lessons in Fear",
			19,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			45879,
			"Lord Walden",
			"Silverpine Forest",
			51.9,
			65.5,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27676] = {
		{
			27676,
			"Behind Closed Doors",
			39,
			"Uldaman",
			1,
		},
		{
			1017,
		},
		{
			46233,
			"Olga Runesworn",
			"Uldaman",
			64.2,
			72.59999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13903] = {
		{
			13903,
			"Gorishi Grub",
			53,
			"Un'Goro Crater",
			3,
		},
		{
			28,
		},
		{
			34320,
			"Venomhide Hatchling",
			"Tanaris",
			54.5,
			42.4,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27932] = {
		{
			27932,
			"The Axe of Earthly Sundering",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			47195,
			"Slate Quicksand",
			"Deepholm",
			30.7,
			77.7,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28060] = {
		{
			28060,
			"Twisted Twilight Ties",
			50,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			14626,
			"Taskmaster Scrange",
			"Searing Gorge",
			42.3,
			34.5,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14095] = {
		{
			14095,
			"Identifying the Remains",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34925,
			"North Sea Kraken",
			"Hrothgar's Landing",
			47.7,
			50.3,
			541,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14159] = {
		{
			14159,
			"The Rebel Lord's Arsenal",
			4,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35112,
			"King Genn Greymane",
			"Gilneas City",
			65.5,
			77.5,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28444] = {
		{
			28444,
			"Latent Demons of the Land",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48569,
			"Eitrigg",
			"Burning Steppes",
			0,
			0,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14287] = {
		{
			14287,
			"[3] Safety in Numbers",
			3,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35869,
			"Vitus Darkwalker",
			"Gilneas City",
			71.09999999999999,
			64.40000000000001,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28700] = {
		{
			28700,
			"Taking the Overlook Back",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48361,
			"Private Sarlosk",
			"Tol Barad Peninsula",
			55.6,
			78.7,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28828] = {
		{
			28828,
			"You Gotta Have Eggs",
			53,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			49396,
			"Jez Goodgrub",
			"Winterspring",
			56,
			28.2,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14479] = {
		{
			14479,
			"There Are Many Like It",
			16,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36956,
			"Captain Desoto",
			"Azshara",
			58.2,
			52.3,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12939] = {
		{
			12939,
			"Honor Challenge",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30002,
			"Duke Lankral",
			"Icecrown",
			44.6,
			20.4,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12883] = {
		{
			12883,
			"Orders From Drakuru",
			75,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			nil,
			nil,
			"Zul'Drak",
			34.9,
			83.90000000000001,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13011] = {
		{
			13011,
			"[80] Jormuttar is Soo Fat...",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30105,
			"King Jokkum",
			"The Storm Peaks",
			65.5,
			60.2,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14413] = {
		{
			14413,
			"The Pinnacle of Learning",
			18,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			35187,
			"Image of Archmage Xylem",
			"Azshara",
			47.3,
			20.9,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13139] = {
		{
			13139,
			"Into The Frozen Heart Of Northrend",
			79,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30683,
			"Father Gustav",
			"Icecrown",
			82.90000000000001,
			72.8,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10001] = {
		{
			10001,
			"The Master Planner [Group]",
			68,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18417,
			"Altruis the Sufferer",
			"Nagrand",
			27.3,
			43,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10065] = {
		{
			10065,
			"Cutting a Path",
			17,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17927,
			"Scout Jorli",
			"Bloodmyst Isle",
			30.3,
			46,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28447] = {
		{
			28447,
			"Draconic Vanguard",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48565,
			"Ariok",
			"Burning Steppes",
			0,
			0,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28703] = {
		{
			28703,
			"Step Into My Barrow",
			53,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			49407,
			"Rinno Curtainfire",
			"Winterspring",
			45.8,
			41,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11089] = {
		{
			11089,
			"The Soul Cannon of Reth'hedron",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			23427,
			"Illidari Lord Balthas",
			"Shadowmoon Valley",
			66.3,
			85.7,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26126] = {
		{
			26126,
			"The Perfect Fuel",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41669,
			"Fiasco Sizzlegrin",
			"Abyssal Depths",
			51.5,
			60.7,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13001] = {
		{
			13001,
			"[80] Raising Hodir's Spear",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30252,
			"Lorekeeper Randvir",
			"The Storm Peaks",
			64.8,
			59,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25870] = {
		{
			25870,
			"Grimtotem in the Post",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			41446,
			"Thalia Amberhide",
			"Thousand Needles",
			46.3,
			57.8,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12305] = {
		{
			12305,
			"Parting Thoughts",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			27347,
			"Orik Trueheart",
			"Dragonblight",
			87.2,
			57.4,
			488,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24992] = {
		{
			24992,
			"Escaped From Gilneas",
			7,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			nil,
			nil,
			"Tirisfal Glades",
			56.9,
			53.1,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25120] = {
		{
			25120,
			"Marley's Final Flight",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			39155,
			"Marley Twinbraid",
			"Southern Barrens",
			47.2,
			88.5,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[7784] = {
		{
			7784,
			"The Lord of Blackrock",
			60,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			39605,
			"Garrosh Hellscream",
			"Orgrimmar",
			48.2,
			70.59999999999999,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25760] = {
		{
			25760,
			"Visions of the Past: The Invasion of Vashj'ir",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			39881,
			"Wavespeaker Valoren",
			"Shimmering Expanse",
			49.5,
			57.5,
			615,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[7848] = {
		{
			7848,
			"Attunement to the Core [Dungeon]",
			60,
			"Molten Core",
			1,
		},
		{
			1074,
		},
		{
			14387,
			"Lothos Riftwaker",
			"Blackrock Mountain",
			47.2,
			68.8,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26144] = {
		{
			26144,
			"Prisoners",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			nil,
			nil,
			"Abyssal Depths",
			27.3,
			61,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26272] = {
		{
			26272,
			"The Rise of the Darkspear",
			2,
			"Echo Isles",
			1,
		},
		{
			10,
		},
		{
			37951,
			"Jin'thala",
			"Durotar",
			62.5,
			84.5,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26400] = {
		{
			26400,
			"The Universal Key",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42814,
			"Skeezy Whillzap",
			"Northern Stranglethorn",
			63.3,
			41,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26656] = {
		{
			26656,
			"Don't. Stop. Moving.",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42466,
			"Terrath the Steady",
			"Deepholm",
			39.9,
			19.3,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26784] = {
		{
			26784,
			"Muddied Waters",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			44024,
			"Artesh",
			"Twilight Highlands",
			73.8,
			53.9,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27680] = {
		{
			27680,
			"Archaedas, The Ancient Stone Watcher",
			40,
			"Uldaman",
			1,
		},
		{
			1017,
		},
		{
			7228,
			"Ironaya",
			"Uldaman",
			40.6,
			73.90000000000001,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27808] = {
		{
			27808,
			"Stubborn as a Doyle",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46805,
			"Iain Firebeard",
			"Twilight Highlands",
			57.5,
			58.2,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13969] = {
		{
			13969,
			"Grol'dom's Missing Kodo",
			12,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			5907,
			"Kranal Fiss",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28576] = {
		{
			28576,
			"Hero's Call: Western Plaguelands!",
			35,
			"Western Plaguelands",
			4,
		},
		{
			66,
		},
		{
			nil,
			nil,
			"Stormwind City",
			62.9,
			71.59999999999999,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8168] = {
		{
			8168,
			"The Battle for Arathi Basin! [PvP]",
			25,
			"Arathi Basin",
			1,
		},
		{
			5003,
		},
		{
			14983,
			"Field Marshal Oslight",
			"Arathi Highlands",
			40,
			46.8,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[8167] = {
		{
			8167,
			"The Battle for Arathi Basin! [PvP]",
			35,
			"Arathi Basin",
			1,
		},
		{
			5003,
		},
		{
			14983,
			"Field Marshal Oslight",
			"Arathi Highlands",
			40,
			46.6,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24733] = {
		{
			24733,
			"The Bait for Lar'korwi",
			53,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9619,
			"Torwa Pathfinder",
			"Un'Goro Crater",
			71.3,
			76.7,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8336] = {
		{
			8336,
			"A Fistful of Slivers",
			4,
			"Sunstrider Isle",
			1,
		},
		{
			40,
		},
		{
			15296,
			"Arcanist Ithanas",
			"Eversong Woods",
			38.3,
			19.2,
			462,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24989] = {
		{
			24989,
			"Return to the Magistrate",
			8,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1495,
			"Deathguard Linnea",
			"Tirisfal Glades",
			65.40000000000001,
			60.2,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12489] = {
		{
			12489,
			"Welcome to Sholazar Basin",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27987,
			"Monte Muzzleshot",
			"Sholazar Basin",
			39.8,
			58.5,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28813] = {
		{
			28813,
			"Fear No Evil",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			951,
			"Brother Paxton",
			"Elwynn Forest",
			48.7,
			37.9,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25373] = {
		{
			25373,
			"The Hilltop Threat",
			39,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39847,
			"Chief Spirithorn",
			"Feralas",
			74.59999999999999,
			42.9,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13814] = {
		{
			13814,
			"Among the Champions",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33770,
			"Illyrie Nightfall",
			"Icecrown",
			73.59999999999999,
			20,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25629] = {
		{
			25629,
			"Her Lady's Hand",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			42077,
			"Lady Naz'jar",
			"Shimmering Expanse",
			33.1,
			76,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25757] = {
		{
			25757,
			"Get Koalbeard!",
			41,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			41184,
			"Riznek",
			"Thousand Needles",
			88.7,
			55,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25885] = {
		{
			25885,
			"What? What? In My Gut...?",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41340,
			"Private Pollard",
			"Kelp'thar Forest",
			64,
			59.8,
			610,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26013] = {
		{
			26013,
			"Assault on the Sanctum [Raid]",
			82,
			"The Ruby Sanctum",
			1,
		},
		{
			1087,
		},
		{
			27990,
			"Krasus",
			"Dragonblight",
			59.8,
			54.6,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26141] = {
		{
			26141,
			"Runestones of Binding",
			82,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			42197,
			"L'ghorek",
			"Abyssal Depths",
			38.6,
			45.4,
			614,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26269] = {
		{
			26269,
			"The Green Hills of Stranglethorn",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			716,
			"Barnil Stonepot",
			"Northern Stranglethorn",
			44.2,
			22.2,
			37,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26397] = {
		{
			26397,
			"Walk With The Earth Mother",
			12,
			"Orgrimmar",
			1,
		},
		{
			18,
		},
		{
			36648,
			"Baine Bloodhoof",
			"Thunder Bluff",
			59.7,
			51.6,
			362,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26525] = {
		{
			26525,
			"Venomous Secrets",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43156,
			"Fraggar Thundermantle",
			"The Hinterlands",
			63.8,
			59.9,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26653] = {
		{
			26653,
			"Supplies from Darkshire",
			21,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			289,
			"Abercrombie",
			"Duskwood",
			87.40000000000001,
			35.3,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26781] = {
		{
			26781,
			"The Mind's Eye",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			44019,
			"Livingston Marshal",
			"Northern Stranglethorn",
			53.2,
			66.8,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26909] = {
		{
			26909,
			"The Stone Shards",
			29,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2787,
			"Zaruk",
			"Arathi Highlands",
			69.5,
			36.5,
			16,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9424] = {
		{
			9424,
			"Makuru's Vengeance",
			63,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16833,
			"Makuru",
			"Hellfire Peninsula",
			23.1,
			40.2,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27165] = {
		{
			27165,
			"Victory, For Now",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			44453,
			"Thassarian",
			"Western Plaguelands",
			41.1,
			70.40000000000001,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27293] = {
		{
			27293,
			"The Grimtotem Plot",
			38,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4926,
			"Krog",
			"Dustwallow Marsh",
			36.4,
			31.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27421] = {
		{
			27421,
			"Amidst Death, Life",
			41,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			16135,
			"Rayne",
			"Eastern Plaguelands",
			30.2,
			56.9,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27549] = {
		{
			27549,
			"By the Light of the Stars",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			45296,
			"Harrison Jones",
			"Uldum",
			64.5,
			28.1,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27677] = {
		{
			27677,
			"Archaedas, The Ancient Stone Watcher",
			40,
			"Uldaman",
			1,
		},
		{
			1017,
		},
		{
			nil,
			nil,
			"Uldaman",
			40.8,
			73.5,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27805] = {
		{
			27805,
			"Small Comforts",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46814,
			"Cailin Longfellow",
			"Twilight Highlands",
			60.4,
			58.2,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27933] = {
		{
			27933,
			"Elemental Ore",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			47195,
			"Slate Quicksand",
			"Deepholm",
			30.7,
			77.7,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28061] = {
		{
			28061,
			"Minions of Calcinder",
			50,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			14625,
			"Overseer Oilfist",
			"Searing Gorge",
			0,
			0,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10000] = {
		{
			10000,
			"An Unwelcome Presence",
			63,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18383,
			"Kurgatok",
			"Terokkar Forest",
			48.8,
			45.7,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10064] = {
		{
			10064,
			"Talk to the Hand",
			18,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17423,
			"Harbinger Mikolaas",
			"Bloodmyst Isle",
			52.7,
			53.2,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28445] = {
		{
			28445,
			"A Heap of Delicious Worg",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48569,
			"Eitrigg",
			"Burning Steppes",
			0,
			0,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10192] = {
		{
			10192,
			"Krasus's Compendium",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19644,
			"Image of Archmage Vargoth",
			"Netherstorm",
			51.6,
			82.3,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10256] = {
		{
			10256,
			"Finding the Keymaster [Group]",
			69,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19481,
			"Archmage Vargoth",
			"Netherstorm",
			58.3,
			86.5,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28829] = {
		{
			28829,
			"Razor Beak and Antlers Pointy",
			54,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			50263,
			"Jadrag the Slicer",
			"Winterspring",
			61.9,
			74.59999999999999,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10384] = {
		{
			10384,
			"[70] Ethereum Data",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20482,
			"Image of Commander Ameer",
			"Netherstorm",
			56.8,
			38.6,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10448] = {
		{
			10448,
			"Report to Stonebreaker Camp",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18447,
			"Tooki",
			"Terokkar Forest",
			50,
			45.9,
			478,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10512] = {
		{
			10512,
			"Getting the Bladespire Tanked",
			66,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			21151,
			"Borgrim Stouthammer",
			"Blade's Edge Mountains",
			37.4,
			64.7,
			475,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10576] = {
		{
			10576,
			"The Shadowmoon Shuffle",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21293,
			"Borak, Son of Oronok",
			"Shadowmoon Valley",
			47.6,
			57.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10640] = {
		{
			10640,
			"Altruis",
			70,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			21860,
			"Exarch Onaala",
			"Shadowmoon Valley",
			61.2,
			29.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10704] = {
		{
			10704,
			"[70] How to Break Into the Arcatraz [Dungeon]",
			70,
			"Tempest Keep",
			1,
		},
		{
			1035,
		},
		{
			18481,
			"A'dal",
			"Shattrath City",
			53.7,
			44.8,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10768] = {
		{
			10768,
			"Tabards of the Illidari [Group]",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21998,
			"Kor'kron Wind Rider",
			"Shadowmoon Valley",
			53.5,
			69.7,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[905] = {
		{
			905,
			"Into the Raptor's Den",
			14,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			nil,
			nil,
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10896] = {
		{
			10896,
			"The Infested Protectors",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22420,
			"Lakotae",
			"Terokkar Forest",
			37.8,
			51.7,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8789] = {
		{
			8789,
			"Imperial Qiraji Armaments [Raid]",
			60,
			"NYC",
			1,
		},
		{
			99999,
		},
		{
			15380,
			"Arygos",
			"Ahn'Qiraj",
			49.7,
			93.59999999999999,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11024] = {
		{
			11024,
			"An Ally in Lower City",
			70,
			"Shattrath City",
			1,
		},
		{
			74,
		},
		{
			23038,
			"Sky Commander Adaris",
			"Terokkar Forest",
			64.09999999999999,
			66.90000000000001,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[525] = {
		{
			525,
			"Further Mysteries",
			34,
			"Alterac Mountains",
			1,
		},
		{
			42,
		},
		{
			1356,
			"Prospector Stormpike",
			"Ironforge",
			74.40000000000001,
			12,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9356] = {
		{
			9356,
			"Smooth as Butter",
			61,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19344,
			"Legassi",
			"Hellfire Peninsula",
			49.3,
			74.8,
			465,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11216] = {
		{
			11216,
			"Archmage Alturus",
			70,
			"Karazhan",
			1,
		},
		{
			1073,
		},
		{
			23948,
			"Apprentice Tasserel",
			"Shattrath City",
			75.09999999999999,
			33.3,
			481,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11280] = {
		{
			11280,
			"Draconis Gastritis",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24157,
			"Plaguebringer Tillinghast",
			"Howling Fjord",
			53.1,
			66.90000000000001,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11344] = {
		{
			11344,
			"Anguish of Nifflevar",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			23975,
			"Thoralius the Wise",
			"Howling Fjord",
			59.9,
			61.5,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14154] = {
		{
			14154,
			"By the Skin of His Teeth",
			4,
			"Gilneas City",
			1,
		},
		{
			50,
		},
		{
			35077,
			"Lord Darius Crowley",
			"Gilneas City",
			55.1,
			63.3,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11472] = {
		{
			11472,
			"The Way to His Heart...",
			80,
			"Howling Fjord",
			3,
		},
		{
			82,
		},
		{
			24810,
			"Anuniaq",
			"Howling Fjord",
			24.6,
			58.8,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11536] = {
		{
			11536,
			"Don't Stop Now....",
			70,
			"Isle of Quel'Danas",
			3,
		},
		{
			44,
		},
		{
			25046,
			"Smith Hauthaa",
			"Isle of Quel'Danas",
			50.4,
			40.7,
			499,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11600] = {
		{
			11600,
			"The Late William Allerton",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25385,
			"William Allerton",
			"Borean Tundra",
			56.1,
			55.4,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11664] = {
		{
			11664,
			"Escaping the Mist",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25504,
			"Mootoo the Younger",
			"Borean Tundra",
			31.9,
			52.4,
			486,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11728] = {
		{
			11728,
			"Lupus Pupus",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25807,
			"Iggy \"Tailspin\" Cogtoggle",
			"Borean Tundra",
			61.7,
			35.8,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11792] = {
		{
			11792,
			"Enemies of the Light",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25285,
			"Harbinger Vurenn",
			"Borean Tundra",
			56.6,
			72.40000000000001,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14145] = {
		{
			14145,
			"What Do You Feed a Yeti, Anyway?",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34914,
			"Tylos Dawnrunner",
			"Icecrown",
			76.09999999999999,
			24,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11920] = {
		{
			11920,
			"Cultists Among Us",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			nil,
			nil,
			"Borean Tundra",
			57.5,
			69.2,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11984] = {
		{
			11984,
			"Filling the Cages",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26424,
			"Samir",
			"Grizzly Hills",
			16.2,
			47.7,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12048] = {
		{
			12048,
			"Scourge Armaments",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26564,
			"Borus Ironbender",
			"Dragonblight",
			36.6,
			47.1,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12112] = {
		{
			12112,
			"Stiff Negotiations",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26647,
			"Narf",
			"Dragonblight",
			54.5,
			23.6,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12176] = {
		{
			12176,
			"A Minor Substitution",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27037,
			"Hidetrader Jun'ik",
			"Grizzly Hills",
			22,
			65.09999999999999,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24478] = {
		{
			24478,
			"The Trial of Frost",
			18,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36361,
			"Image of Archmage Xylem",
			"Azshara",
			56,
			12.2,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12304] = {
		{
			12304,
			"Beachfront Property",
			72,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			32599,
			"Surveyor Hansen",
			"Dragonblight",
			79.3,
			65,
			488,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24734] = {
		{
			24734,
			"Lost!",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9997,
			"Spraggle Frock",
			"Un'Goro Crater",
			55.1,
			62.6,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24862] = {
		{
			24862,
			"Running the Gauntlet",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38378,
			"Commander Walpole",
			"Southern Barrens",
			29.8,
			9,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24990] = {
		{
			24990,
			"Darkhound Pounding",
			6,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			10665,
			"Junior Apothecary Holland",
			"Tirisfal Glades",
			60.1,
			52.7,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25118] = {
		{
			25118,
			"Looking for Lurkers",
			13,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1777,
			"Dakk Blunderblast",
			"Loch Modan",
			35.3,
			42.9,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12624] = {
		{
			12624,
			"It Could Be Anywhere!",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28497,
			"Chad",
			"Sholazar Basin",
			26.9,
			59,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25374] = {
		{
			25374,
			"Sasquatch Sighting",
			39,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39847,
			"Chief Spirithorn",
			"Feralas",
			74.7,
			42.9,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25502] = {
		{
			25502,
			"Prepping the Soil",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			40331,
			"Rayne Feathersong",
			"Mount Hyjal",
			27.1,
			62.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25630] = {
		{
			25630,
			"The Fires of Mount Hyjal",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			39434,
			"Rio Duran",
			"Mount Hyjal",
			28.2,
			29.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12880] = {
		{
			12880,
			"The Master Explorer",
			80,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			30082,
			"Creteus",
			"The Storm Peaks",
			38.3,
			61.7,
			495,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25886] = {
		{
			25886,
			"Pressing the Advantage",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			41492,
			"Captain Irontree",
			"Mount Hyjal",
			57.2,
			55.9,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13008] = {
		{
			13008,
			"Scourge Tactics",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30223,
			"Crusade Commander Entari",
			"Icecrown",
			87.09999999999999,
			75.90000000000001,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13072] = {
		{
			13072,
			"A Hero Remains",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30562,
			"Crusader Bridenbrad",
			"Icecrown",
			79.8,
			30.9,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26270] = {
		{
			26270,
			"You Have Our Thanks",
			13,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			233,
			"Farmer Saldean",
			"Westfall",
			56.1,
			31.2,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27021] = {
		{
			27021,
			"The Hunter's Path",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			3061,
			"Lanka Farshot",
			"Mulgore",
			45.2,
			75.40000000000001,
			9,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26526] = {
		{
			26526,
			"Hunt the Keeper",
			33,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43156,
			"Fraggar Thundermantle",
			"The Hinterlands",
			63.8,
			59.9,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26654] = {
		{
			26654,
			"Return the Comb",
			21,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			302,
			"Blind Mary",
			"Duskwood",
			81.90000000000001,
			59.1,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26782] = {
		{
			26782,
			"The Mosh'Ogg Bounty",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			44018,
			"Wulfred Harrys",
			"Northern Stranglethorn",
			53.3,
			66.3,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26910] = {
		{
			26910,
			"Etched Letter",
			3,
			"Hunter",
			1,
		},
		{
			2003,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.2,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13520] = {
		{
			13520,
			"The Boon of the Seas",
			10,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			32972,
			"Serendia Oakwhisper",
			"Darkshore",
			51.8,
			18,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27166] = {
		{
			27166,
			"Go Fletch!",
			36,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			10838,
			"Commander Ashlam Valorfist",
			"Western Plaguelands",
			42.8,
			84.09999999999999,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27294] = {
		{
			27294,
			"More than Coincidence",
			37,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4926,
			"Krog",
			"Dustwallow Marsh",
			36.4,
			31.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13712] = {
		{
			13712,
			"To the Rescue!",
			21,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			8582,
			"Kadrak",
			"Northern Barrens",
			42.7,
			15.1,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27550] = {
		{
			27550,
			"Pyrewood's Fall",
			19,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			45878,
			"Lord Godfrey",
			"Silverpine Forest",
			51.9,
			65.5,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12797] = {
		{
			12797,
			"Back Through the Waygate",
			78,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28092,
			"The Etymidian",
			"Un'Goro Crater",
			47.4,
			9.300000000000001,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13904] = {
		{
			13904,
			"Poached, Scrambled, Or Raw?",
			53,
			"Un'Goro Crater",
			3,
		},
		{
			28,
		},
		{
			34320,
			"Venomhide Hatchling",
			"Tanaris",
			52.6,
			27.3,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13968] = {
		{
			13968,
			"The Tortusk Takedown",
			12,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34513,
			"Togrik",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28062] = {
		{
			28062,
			"From Whence He Came",
			50,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			14625,
			"Overseer Oilfist",
			"Searing Gorge",
			49.9,
			39.1,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14096] = {
		{
			14096,
			"You've Really Done It This Time, Kul",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			34880,
			"Narasi Snowdawn",
			"Icecrown",
			76.3,
			19.6,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28318] = {
		{
			28318,
			"A Delivery for Neeralak",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48307,
			"Colonel Troteman",
			"Burning Steppes",
			73.59999999999999,
			67.09999999999999,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28446] = {
		{
			28446,
			"Blood Tour",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48565,
			"Ariok",
			"Burning Steppes",
			54.7,
			24.5,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28574] = {
		{
			28574,
			"Warchief's Command: The Hinterlands!",
			30,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			nil,
			nil,
			"Undercity",
			65.90000000000001,
			49.4,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28702] = {
		{
			28702,
			"Hero's Call: The Cape of Stranglethorn!",
			30,
			"The Cape of Stranglethorn",
			4,
		},
		{
			58,
		},
		{
			nil,
			nil,
			"Stormwind City",
			62.9,
			71.7,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14416] = {
		{
			14416,
			"[7] The Hungry Ettin",
			7,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			36457,
			"Lorna Crowley",
			"Gilneas",
			37.5,
			72.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[14480] = {
		{
			14480,
			"Extermination",
			17,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36895,
			"Sergeant Zelks",
			"Azshara",
			34.4,
			44.8,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27536] = {
		{
			27536,
			"Mostly Harmless",
			52,
			"Swamp of Sorrows",
			1,
		},
		{
			57,
		},
		{
			45786,
			"Trade Baron Silversnap",
			"Swamp of Sorrows",
			73.09999999999999,
			14.8,
			38,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[899] = {
		{
			899,
			"Consumed by Hatred",
			12,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3432,
			"Mankrik",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28630] = {
		{
			28630,
			"Echo Three",
			52,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			10305,
			"Umi Rumplesnicker",
			"Winterspring",
			59.4,
			49.8,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14252] = {
		{
			14252,
			"Good Gold For Bad Tail",
			31,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			35757,
			"Bizby",
			"Desolace",
			61,
			29.2,
			101,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[887] = {
		{
			887,
			"Southsea Freebooters",
			16,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3453,
			"Wharfmaster Dizzywig",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14124] = {
		{
			14124,
			"Liberate the Kaja'mite",
			4,
			"Kezan",
			1,
		},
		{
			90,
		},
		{
			34872,
			"Foreman Dampwick",
			"Kezan",
			62.8,
			77.7,
			605,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24484] = {
		{
			24484,
			"[8] Pest Control",
			8,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			37102,
			"Gwen Armstead",
			"Gilneas",
			59.8,
			91.8,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27990] = {
		{
			27990,
			"Battlezone",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47159,
			"Commander Schnottz",
			"Uldum",
			24.5,
			64.3,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12627] = {
		{
			12627,
			"Breaking Through Jin'Alai",
			77,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28479,
			"Witch Doctor Khufu",
			"Zul'Drak",
			59.5,
			58,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13868] = {
		{
			13868,
			"Corrupting Influence?",
			23,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			nil,
			nil,
			"Ashenvale",
			32.4,
			47,
			43,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27606] = {
		{
			27606,
			"Blast Him!",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			45983,
			"Fergus Gearchum",
			"Twilight Highlands",
			70.40000000000001,
			43.3,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27478] = {
		{
			27478,
			"Relios the Relic Keeper",
			18,
			"Alterac Mountains",
			1,
		},
		{
			42,
		},
		{
			1938,
			"Dalar Dawnweaver",
			"Silverpine Forest",
			47,
			43.2,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[855] = {
		{
			855,
			"Centaur Bracers",
			18,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3389,
			"Regthar Deathgate",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[851] = {
		{
			851,
			"Verog the Dervish",
			16,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			34638,
			"Shoe",
			"Northern Barrens",
			55.2,
			78.40000000000001,
			11,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25360] = {
		{
			25360,
			"Crabby Patrons",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			40227,
			"Felice",
			"Shimmering Expanse",
			41.2,
			34.2,
			615,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[1582] = {
		{
			1582,
			"Moonglow Vest",
			18,
			"Leatherworking",
			1,
		},
		{
			3011,
		},
		{
			6034,
			"Lotherias",
			"Darnassus",
			60.2,
			37,
			381,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26838] = {
		{
			26838,
			"Rebels Without a Clue",
			25,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			43731,
			"Sister Elsington",
			"Duskwood",
			19.9,
			58,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26710] = {
		{
			26710,
			"Lost In The Deeps",
			83,
			"Deepholm",
			3,
		},
		{
			89,
		},
		{
			44945,
			"Pyrite Stonetender",
			"Deepholm",
			55.3,
			14.2,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13292] = {
		{
			13292,
			"The Solution Solution",
			80,
			"Icecrown",
			3,
		},
		{
			84,
		},
		{
			30345,
			"Chief Engineer Boltwrench",
			"Icecrown",
			60.2,
			44.2,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13228] = {
		{
			13228,
			"The Broken Front",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30824,
			"Sky-Reaver Korm Blackscar",
			"Icecrown",
			69.59999999999999,
			37.4,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13164] = {
		{
			13164,
			"The Fate of Bloodbane [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30944,
			"Vereth the Cunning",
			"Icecrown",
			54.1,
			71.09999999999999,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13100] = {
		{
			13100,
			"Infused Mushroom Meatloaf",
			80,
			"Cooking",
			3,
		},
		{
			3004,
		},
		{
			28705,
			"Katherine Lee",
			"Dalaran",
			40.5,
			65.09999999999999,
			504,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13036] = {
		{
			13036,
			"Honor Above All Else",
			78,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			28179,
			"Highlord Tirion Fordring",
			"Icecrown",
			87.5,
			75.90000000000001,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25942] = {
		{
			25942,
			"Buy Us Some Time",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41711,
			"Legionnaire Nazgrim",
			"Kelp'thar Forest",
			39,
			32,
			610,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25814] = {
		{
			25814,
			"Go Blow that Horn",
			42,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			41184,
			"Riznek",
			"Thousand Needles",
			88.59999999999999,
			54.9,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12844] = {
		{
			12844,
			"Equipment Recovery",
			79,
			"The Storm Peaks",
			1,
		},
		{
			86,
		},
		{
			29473,
			"Gretchen Fizzlespark",
			"The Storm Peaks",
			41.1,
			86.09999999999999,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[1578] = {
		{
			1578,
			"Supplying the Front",
			12,
			"Blacksmithing",
			1,
		},
		{
			3003,
		},
		{
			6031,
			"Tormus Deepforge",
			"Ironforge",
			48.4,
			42.9,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12716] = {
		{
			12716,
			"The Plaguebringer's Request",
			55,
			"Death Knight",
			1,
		},
		{
			2001,
		},
		{
			28919,
			"Noth the Plaguebringer",
			"Plaguelands: The Scarlet Enclave",
			55.8,
			52.4,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24479] = {
		{
			24479,
			"The Trial of Shadow",
			18,
			"Azshara",
			1,
		},
		{
			4,
		},
		{
			36361,
			"Image of Archmage Xylem",
			"Azshara",
			56,
			12.1,
			181,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24607] = {
		{
			24607,
			"The Rise of the Darkspear",
			2,
			"Echo Isles",
			1,
		},
		{
			10,
		},
		{
			37951,
			"Jin'thala",
			"Durotar",
			62.4,
			84.5,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24735] = {
		{
			24735,
			"A Little Help From My Friends [Escort]",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9999,
			"Ringo",
			"Un'Goro Crater",
			52,
			49.9,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24863] = {
		{
			24863,
			"Breaking the Siege",
			30,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			38378,
			"Commander Walpole",
			"Southern Barrens",
			29.8,
			9,
			607,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24991] = {
		{
			24991,
			"Garren's Haunt",
			8,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			10665,
			"Junior Apothecary Holland",
			"Tirisfal Glades",
			60.2,
			52.7,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26088] = {
		{
			26088,
			"Here Fishie Fishie",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41908,
			"Orako",
			"Abyssal Depths",
			42.9,
			51,
			614,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12588] = {
		{
			12588,
			"Troll Patrol: Can You Dig It?",
			76,
			"Zul'Drak",
			3,
		},
		{
			88,
		},
		{
			28042,
			"Captain Brandon",
			"Zul'Drak",
			48.8,
			78.90000000000001,
			496,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25375] = {
		{
			25375,
			"Taming The Tamers",
			39,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			39847,
			"Chief Spirithorn",
			"Feralas",
			74.59999999999999,
			42.9,
			121,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25503] = {
		{
			25503,
			"Blackfin's Booty [Item Drop]",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			nil,
			nil,
			"Kelp'thar Forest",
			50.9,
			49.6,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
			"This quest is started by looting a Waterlogged Journal from Gilblingle.",
		},
	},
	[12524] = {
		{
			12524,
			"Venture Co. Misadventure",
			76,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			28032,
			"Debaar",
			"Sholazar Basin",
			27.2,
			59.8,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12554] = {
		{
			12554,
			"Malas the Corrupter [Group]",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28283,
			"Sergeant Moonshard",
			"Zul'Drak",
			58.1,
			72.09999999999999,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25887] = {
		{
			25887,
			"Wake of Destruction",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41341,
			"Erunak Stonespeaker",
			"Kelp'thar Forest",
			63.8,
			59.8,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26015] = {
		{
			26015,
			"Phosphora Hunting",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41910,
			"Humphrey Digsong",
			"Abyssal Depths",
			47.4,
			49.7,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26143] = {
		{
			26143,
			"All that Rises",
			83,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41659,
			"Hallazeal the Ascended",
			"Abyssal Depths",
			33.3,
			55.3,
			614,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26271] = {
		{
			26271,
			"Feeding the Hungry and the Hopeless",
			13,
			"Westfall",
			1,
		},
		{
			67,
		},
		{
			42575,
			"Hope Saldean",
			"Westfall",
			56.9,
			47.1,
			39,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26399] = {
		{
			26399,
			"The Mosh'Ogg Bounty",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			42814,
			"Skeezy Whillzap",
			"Northern Stranglethorn",
			63.2,
			40.9,
			37,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9169] = {
		{
			9169,
			"Deactivate An'owyn",
			16,
			"Ghostlands",
			1,
		},
		{
			41,
		},
		{
			nil,
			nil,
			"Ghostlands",
			60.2,
			35.7,
			463,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26655] = {
		{
			26655,
			"Deliver the Thread",
			21,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			265,
			"Madame Eva",
			"Duskwood",
			75.8,
			45.3,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26783] = {
		{
			26783,
			"The Mosh'Ogg Bounty",
			28,
			"Northern Stranglethorn",
			1,
		},
		{
			47,
		},
		{
			44018,
			"Wulfred Harrys",
			"Northern Stranglethorn",
			53.4,
			66.2,
			37,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26911] = {
		{
			26911,
			"Myzrael's Tale",
			27,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			nil,
			nil,
			"Arathi Highlands",
			30,
			59.3,
			16,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27039] = {
		{
			27039,
			"Dangerous Intentions",
			11,
			"Silverpine Forest",
			1,
		},
		{
			54,
		},
		{
			44789,
			"Deathstalker Commander Belmont",
			"Silverpine Forest",
			58.1,
			9.1,
			21,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27167] = {
		{
			27167,
			"A Mighty Hunger",
			36,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			45165,
			"Thurman Grant",
			"Western Plaguelands",
			42.8,
			84.2,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27295] = {
		{
			27295,
			"Seek Out Tabetha",
			38,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4926,
			"Krog",
			"Dustwallow Marsh",
			36.4,
			31.8,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27423] = {
		{
			27423,
			"Resistance is Futile",
			16,
			"Ruins of Gilneas",
			1,
		},
		{
			49,
		},
		{
			nil,
			nil,
			"Ruins of Gilneas",
			73.90000000000001,
			28.7,
			684,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27551] = {
		{
			27551,
			"The Baroness' Missive",
			45,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			nil,
			nil,
			"Eastern Plaguelands",
			25.1,
			20.2,
			23,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27679] = {
		{
			27679,
			"The Chamber of Khaz'mul",
			39,
			"Uldaman",
			1,
		},
		{
			1017,
		},
		{
			46236,
			"High Examiner Tae'thelan Bloodwatcher",
			"Uldaman",
			64.09999999999999,
			72.40000000000001,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27807] = {
		{
			27807,
			"Clan Mullan",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46805,
			"Iain Firebeard",
			"Twilight Highlands",
			57.5,
			58.2,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27935] = {
		{
			27935,
			"Bring Down the Avalanche",
			82,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44372,
			"Avalanchion",
			"Deepholm",
			47.1,
			90.2,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28063] = {
		{
			28063,
			"Leave No Weapon Behind",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			47240,
			"Commander Marcus Johnson",
			"Tol Barad Peninsula",
			73.3,
			59,
			709,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28191] = {
		{
			28191,
			"A Fitting End",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			47902,
			"Lirastrasza",
			"Twilight Highlands",
			59.1,
			69.8,
			700,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28319] = {
		{
			28319,
			"A Delivery for Xi'lun",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48307,
			"Colonel Troteman",
			"Burning Steppes",
			73.59999999999999,
			67.09999999999999,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10129] = {
		{
			10129,
			"Mission: Gateways Murketh and Shaadraz",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			19273,
			"Forward Commander To'arch",
			"Hellfire Peninsula",
			65.90000000000001,
			43.7,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28575] = {
		{
			28575,
			"Warchief's Command: Western Plaguelands!",
			35,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			nil,
			nil,
			"Undercity",
			65.90000000000001,
			49.8,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10257] = {
		{
			10257,
			"Capturing the Keystone [Dungeon]",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19481,
			"Archmage Vargoth",
			"Netherstorm",
			58.4,
			86.40000000000001,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28831] = {
		{
			28831,
			"Damn You, Frostilicus",
			54,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			50263,
			"Jadrag the Slicer",
			"Winterspring",
			61.9,
			74.59999999999999,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10385] = {
		{
			10385,
			"[70] Potential for Brain Damage = High",
			70,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			20482,
			"Image of Commander Ameer",
			"Netherstorm",
			56.8,
			38.6,
			479,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10449] = {
		{
			10449,
			"Apothecary Zelana",
			60,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			21256,
			"Vurtok Axebreaker",
			"Hellfire Peninsula",
			55.1,
			36.3,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10513] = {
		{
			10513,
			"Oronok Torn-heart",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21024,
			"Earthmender Torlok",
			"Shadowmoon Valley",
			42.3,
			45.1,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10577] = {
		{
			10577,
			"What Illidan Wants, Illidan Gets...",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21293,
			"Borak, Son of Oronok",
			"Shadowmoon Valley",
			47.5,
			57.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10641] = {
		{
			10641,
			"Against the Legion",
			70,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18417,
			"Altruis the Sufferer",
			"Nagrand",
			27.4,
			43,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10705] = {
		{
			10705,
			"Seer Udalo [Dungeon]",
			70,
			"Tempest Keep",
			1,
		},
		{
			1035,
		},
		{
			21700,
			"Akama",
			"Shadowmoon Valley",
			58.1,
			48.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10769] = {
		{
			10769,
			"Dissension Amongst the Ranks... [Group]",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21998,
			"Kor'kron Wind Rider",
			"Shadowmoon Valley",
			51.9,
			61.1,
			473,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10002] = {
		{
			10002,
			"The Firewing Liaison",
			64,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			18565,
			"Theloria Shadecloak",
			"Terokkar Forest",
			69.7,
			44.1,
			478,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10897] = {
		{
			10897,
			"Master of Potions [Dungeon]",
			70,
			"Alchemy",
			1,
		},
		{
			3001,
		},
		{
			17909,
			"Lauranna Thar'well",
			"Zangarmarsh",
			80.3,
			64.2,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28577] = {
		{
			28577,
			"Warchief's Command: Eastern Plaguelands!",
			40,
			"Eastern Plaguelands",
			1,
		},
		{
			38,
		},
		{
			17629,
			"Feynna",
			"Silvermoon City",
			62.3,
			60.9,
			480,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[11025] = {
		{
			11025,
			"The Crystals",
			70,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			23233,
			"Chu'a'lor",
			"Blade's Edge Mountains",
			28.8,
			57.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[5545] = {
		{
			5545,
			"A Bundle of Trouble",
			10,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			10616,
			"Supervisor Raelen",
			"Elwynn Forest",
			81.3,
			66.2,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11153] = {
		{
			11153,
			"[71] [71] Break the Blockade",
			71,
			"Howling Fjord",
			3,
		},
		{
			82,
		},
		{
			23895,
			"Bombardier Petrov",
			"Howling Fjord",
			29,
			42,
			491,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[12268] = {
		{
			12268,
			"Pieces Parts",
			74,
			"Grizzly Hills",
			3,
		},
		{
			81,
		},
		{
			27416,
			"Pipthwack",
			"Grizzly Hills",
			39.7,
			43.3,
			490,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11281] = {
		{
			11281,
			"Mimicking Nature's Call",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24123,
			"Nokoma Snowseer",
			"Howling Fjord",
			49.3,
			11.9,
			491,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28693] = {
		{
			28693,
			"Finish The Job",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48363,
			"Captain Prug",
			"Tol Barad Peninsula",
			54.9,
			79.3,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24854] = {
		{
			24854,
			"Finding Stormclaw",
			51,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38269,
			"Zen'Aliri",
			"Un'Goro Crater",
			55.7,
			60.6,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11473] = {
		{
			11473,
			"A Traitor Among Us",
			71,
			"Howling Fjord",
			1,
		},
		{
			82,
		},
		{
			24537,
			"Handsome Terry",
			"Howling Fjord",
			35.6,
			80.3,
			491,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11537] = {
		{
			11537,
			"The Battle Must Go On",
			70,
			"Isle of Quel'Danas",
			3,
		},
		{
			44,
		},
		{
			25061,
			"Harbinger Inuuro",
			"Isle of Quel'Danas",
			47.7,
			35.1,
			499,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11601] = {
		{
			11601,
			"Lost and Found",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25251,
			"Leryssa",
			"Borean Tundra",
			58.8,
			68.40000000000001,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11665] = {
		{
			11665,
			"Crocolisks in the City",
			70,
			"Fishing",
			3,
		},
		{
			3007,
		},
		{
			25580,
			"Old Man Barlo",
			"Terokkar Forest",
			38.7,
			12.9,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[11729] = {
		{
			11729,
			"The Ultrasonic Screwdriver",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			nil,
			nil,
			"Borean Tundra",
			59.9,
			21.2,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11793] = {
		{
			11793,
			"Further Investigation",
			71,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25285,
			"Harbinger Vurenn",
			"Borean Tundra",
			56.6,
			72.5,
			486,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27279] = {
		{
			27279,
			"The Shattered Hand",
			20,
			"Rogue",
			1,
		},
		{
			2007,
		},
		{
			16684,
			"Zelanis",
			"Silvermoon City",
			79.5,
			52,
			480,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13584] = {
		{
			13584,
			"Calming the Earth",
			16,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			33112,
			"Selenn",
			"Darkshore",
			44.4,
			56.7,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11985] = {
		{
			11985,
			"Into the Breach",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26260,
			"Kurun",
			"Grizzly Hills",
			65.8,
			17.7,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12049] = {
		{
			12049,
			"Hard to Swallow",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26660,
			"Xink",
			"Dragonblight",
			55,
			23.4,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12113] = {
		{
			12113,
			"Nice to Meat You",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			26884,
			"Harkor",
			"Grizzly Hills",
			73.8,
			33.9,
			490,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12177] = {
		{
			12177,
			"Jun'ik's Coverup",
			74,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27037,
			"Hidetrader Jun'ik",
			"Grizzly Hills",
			22,
			65.09999999999999,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12241] = {
		{
			12241,
			"Destroy the Sapling",
			75,
			"Grizzly Hills",
			1,
		},
		{
			81,
		},
		{
			27262,
			"Windseer Grayhorn",
			"Grizzly Hills",
			22.5,
			63,
			490,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24608] = {
		{
			24608,
			"Mangletooth",
			34,
			"Southern Barrens",
			1,
		},
		{
			20,
		},
		{
			37847,
			"Mankrik",
			"Southern Barrens",
			44.5,
			88.09999999999999,
			607,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[24736] = {
		{
			24736,
			"Shizzle's Flyer",
			53,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			9998,
			"Shizzle",
			"Un'Goro Crater",
			43.3,
			41.3,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24864] = {
		{
			24864,
			"Irresistible Pool Pony",
			8,
			"The Lost Isles",
			1,
		},
		{
			91,
		},
		{
			38432,
			"Megs Dreadshredder",
			"The Lost Isles",
			52.2,
			73.2,
			544,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[12497] = {
		{
			12497,
			"Galakrond and the Scourge",
			74,
			"Dragonblight",
			1,
		},
		{
			80,
		},
		{
			26917,
			"Alexstrasza the Life-Binder",
			"Dragonblight",
			59.9,
			54.6,
			488,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12561] = {
		{
			12561,
			"An Issue of Trust",
			77,
			"Sholazar Basin",
			1,
		},
		{
			85,
		},
		{
			27801,
			"Avatar of Freya",
			"Sholazar Basin",
			64.5,
			48.6,
			493,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26146] = {
		{
			26146,
			"In Defense of the King's Lands",
			12,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1092,
			"Captain Rugelfuss",
			"Loch Modan",
			23.4,
			74.90000000000001,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[11884] = {
		{
			11884,
			"Ned, Lord of Rhinos... [Group]",
			72,
			"Borean Tundra",
			1,
		},
		{
			77,
		},
		{
			25812,
			"Killinger the Den Watcher",
			"Borean Tundra",
			57,
			44.3,
			486,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25504] = {
		{
			25504,
			"Do Me a Favor?",
			40,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40027,
			"Fizzle Brassbolts",
			"Thousand Needles",
			75.90000000000001,
			74.59999999999999,
			61,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26786] = {
		{
			26786,
			"Securing the Beach Head",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			43943,
			"Garrosh Hellscream",
			"Twilight Highlands",
			74.8,
			53.1,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[6441] = {
		{
			6441,
			"Satyr Horns",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			12724,
			"Pixel",
			"Ashenvale",
			73.8,
			62.3,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25888] = {
		{
			25888,
			"Decompression",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			41347,
			"Moanah Stormhoof",
			"Kelp'thar Forest",
			63.9,
			59.4,
			610,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26016] = {
		{
			26016,
			"Orders from Base Camp",
			27,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			nil,
			nil,
			"Stonetalon Mountains",
			62,
			67.8,
			81,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13073] = {
		{
			13073,
			"The Keeper's Favor",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			31044,
			"Highlord Tirion Fordring",
			"Icecrown",
			79.8,
			71.8,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13137] = {
		{
			13137,
			"Not-So-Honorable Combat [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30232,
			"The Bone Witch",
			"Icecrown",
			32.5,
			42.9,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13201] = {
		{
			13201,
			"Healing with Roses [PvP]",
			80,
			"Wintergrasp",
			5,
		},
		{
			87,
		},
		{
			31053,
			"Primalist Mulfort",
			"Wintergrasp",
			22.2,
			34.7,
			501,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26528] = {
		{
			26528,
			"The Eye of Shadra",
			34,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43200,
			"Gilda Cloudcaller",
			"The Hinterlands",
			30.7,
			47.2,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13329] = {
		{
			13329,
			"Before the Gate of Horror [Group]",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29795,
			"Koltira Deathweaver",
			"Icecrown",
			66.5,
			26.8,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13393] = {
		{
			13393,
			"Field Repairs",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			29799,
			"Thassarian",
			"Icecrown",
			63.6,
			56.3,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26912] = {
		{
			26912,
			"The Princess Unleashed [Group]",
			28,
			"Arathi Highlands",
			1,
		},
		{
			31,
		},
		{
			2787,
			"Zaruk",
			"Arathi Highlands",
			69.3,
			36.4,
			16,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27040] = {
		{
			27040,
			"Decryption Made Easy",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44799,
			"Explorer Mowi",
			"Deepholm",
			47.4,
			51.4,
			640,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27168] = {
		{
			27168,
			"Those That Couldn't Let Go",
			36,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			11053,
			"High Priestess MacDonnell",
			"Western Plaguelands",
			43.3,
			83.8,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27296] = {
		{
			27296,
			"Raze Direhorn Post!",
			38,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			6546,
			"Tabetha",
			"Dustwallow Marsh",
			46,
			57.1,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13713] = {
		{
			13713,
			"The Valiant's Challenge",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33312,
			"Lana Stouthammer",
			"Icecrown",
			76.59999999999999,
			19.4,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13777] = {
		{
			13777,
			"The Grand Melee",
			80,
			"Tournament",
			3,
		},
		{
			4014,
		},
		{
			33549,
			"Anka Clawhoof",
			"Icecrown",
			76.2,
			24.6,
			492,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13841] = {
		{
			13841,
			"All Apologies",
			22,
			"Ashenvale",
			1,
		},
		{
			3,
		},
		{
			33726,
			"Splintertree Demolisher",
			"Ashenvale",
			73.40000000000001,
			62.1,
			43,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13905] = {
		{
			13905,
			"Searing Roc Feathers",
			53,
			"Un'Goro Crater",
			3,
		},
		{
			28,
		},
		{
			34320,
			"Venomhide Hatchling",
			"Tanaris",
			44,
			50.9,
			161,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[6985] = {
		{
			6985,
			"Irondeep Supplies [PvP]",
			85,
			"Alterac Valley",
			1,
		},
		{
			5002,
		},
		{
			12097,
			"Frostwolf Quartermaster",
			"Alterac Valley",
			46.7,
			84.09999999999999,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28064] = {
		{
			28064,
			"Welcome to the Brotherhood",
			50,
			"Searing Gorge",
			1,
		},
		{
			51,
		},
		{
			47462,
			"Archduke Calcinder",
			"Searing Gorge",
			43,
			29.4,
			28,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28192] = {
		{
			28192,
			"No One Here Gets Out Alive",
			21,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			nil,
			nil,
			"Hillsbrad Foothills",
			36.3,
			61.1,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28320] = {
		{
			28320,
			"Assault on Dreadmaul Rock",
			52,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48306,
			"John J. Keeshan",
			"Burning Steppes",
			73.2,
			66.40000000000001,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28448] = {
		{
			28448,
			"A Deal With a Dragon",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48567,
			"Ariok",
			"Burning Steppes",
			0,
			0,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[14289] = {
		{
			14289,
			"Safety in Numbers",
			3,
			"Gilneas",
			1,
		},
		{
			49,
		},
		{
			35870,
			"Sister Almyra",
			"Gilneas City",
			70.2,
			65.7,
			nil,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28704] = {
		{
			28704,
			"Warchief's Command: The Cape of Stranglethorn!",
			30,
			"The Cape of Stranglethorn",
			1,
		},
		{
			58,
		},
		{
			nil,
			nil,
			"Undercity",
			65.90000000000001,
			49.4,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28832] = {
		{
			28832,
			"Twilight Shores",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			44806,
			"Fargo Flintlocke",
			"Stormwind City",
			26.4,
			47.3,
			301,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27042] = {
		{
			27042,
			"Fight Fire and Water and Air with...",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44802,
			"Prospector Brewer",
			"Deepholm",
			47.4,
			51.4,
			640,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9427] = {
		{
			9427,
			"Cleansing the Waters",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			16796,
			"Amaan the Wise",
			"Hellfire Peninsula",
			23.4,
			36.6,
			465,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[25970] = {
		{
			25970,
			"Come Prepared",
			81,
			"Shimmering Expanse",
			1,
		},
		{
			52,
		},
		{
			41770,
			"Fiasco Sizzlegrin",
			"Shimmering Expanse",
			50.3,
			79,
			615,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28814] = {
		{
			28814,
			"Followers and Leaders [Dungeon]",
			84,
			"The Stonecore",
			1,
		},
		{
			1061,
		},
		{
			nil,
			nil,
			"The Stonecore",
			63.4,
			65.3,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[27112] = {
		{
			27112,
			"The Cursed Remains",
			43,
			"Dire Maul",
			1,
		},
		{
			1004,
		},
		{
			44991,
			"Estulan",
			"Dire Maul",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[14217] = {
		{
			14217,
			"Satyrical Offerings",
			31,
			"Desolace",
			1,
		},
		{
			9,
		},
		{
			nil,
			nil,
			"Desolace",
			9,
			9,
			101,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13899] = {
		{
			13899,
			"The Darkscale Warlord",
			20,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			34402,
			"Balren of the Claw",
			"Darkshore",
			45.3,
			75.09999999999999,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[707] = {
		{
			707,
			"Ironband Wants You!",
			37,
			"Ironforge",
			1,
		},
		{
			43,
		},
		{
			1356,
			"Prospector Stormpike",
			"Ironforge",
			74.59999999999999,
			12,
			341,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9803] = {
		{
			9803,
			"Messenger to the Feralfen",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18003,
			"Anchorite Ahuurn",
			"Zangarmarsh",
			68.2,
			49.4,
			467,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[895] = {
		{
			895,
			"WANTED: Cap'n Garvey",
			16,
			"Northern Barrens",
			1,
		},
		{
			17,
		},
		{
			3446,
			"Mebok Mizzyrix",
			"Northern Barrens",
			0,
			0,
			11,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28556] = {
		{
			28556,
			"Breaking the Hand",
			24,
			"Hillsbrad Foothills",
			1,
		},
		{
			42,
		},
		{
			48545,
			"High Warlord Cromush",
			"Hillsbrad Foothills",
			57,
			46.3,
			24,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13641] = {
		{
			13641,
			"The Seer's Crystal",
			80,
			"Tournament",
			1,
		},
		{
			4014,
		},
		{
			33417,
			"Crusader Rhydalla",
			"Icecrown",
			69.40000000000001,
			23.1,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28428] = {
		{
			28428,
			"A Perfect Costume",
			50,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48001,
			"Thelaron Direneedle",
			"Burning Steppes",
			45.4,
			46.1,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13321] = {
		{
			13321,
			"Retest Now",
			80,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30345,
			"Chief Engineer Boltwrench",
			"Icecrown",
			61.3,
			47,
			492,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13129] = {
		{
			13129,
			"Head Games [Dungeon]",
			74,
			"Drak'Tharon Keep",
			1,
		},
		{
			1044,
		},
		{
			26664,
			"Kurzel",
			"Drak'Tharon Keep",
			67.5,
			28.9,
			nil,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25998] = {
		{
			25998,
			"Get to the Airfield",
			10,
			"Dun Morogh",
			1,
		},
		{
			36,
		},
		{
			41786,
			"Sergeant Bahrum",
			"Dun Morogh",
			82.8,
			48.4,
			27,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[13130] = {
		{
			13130,
			"The Stone That Started A Revolution",
			79,
			"Icecrown",
			1,
		},
		{
			84,
		},
		{
			30686,
			"Crusade Architect Silas",
			"Icecrown",
			83.09999999999999,
			73.09999999999999,
			492,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[13006] = {
		{
			13006,
			"Polishing the Helm",
			80,
			"The Storm Peaks",
			3,
		},
		{
			86,
		},
		{
			nil,
			nil,
			"The Storm Peaks",
			64.3,
			59.5,
			495,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28685] = {
		{
			28685,
			"Leave No Weapon Behind",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48358,
			"Commander Larmash",
			"Tol Barad Peninsula",
			53.9,
			80,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25358] = {
		{
			25358,
			"Nerve Tonic",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			40983,
			"Mack Fearsen",
			"Kelp'thar Forest",
			57.3,
			29.3,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[12553] = {
		{
			12553,
			"Skimmer Spinnerets",
			76,
			"Zul'Drak",
			1,
		},
		{
			88,
		},
		{
			28284,
			"Specialist Cogwheel",
			"Zul'Drak",
			58.2,
			72.09999999999999,
			496,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28694] = {
		{
			28694,
			"Watch Out For Splinters!",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			48361,
			"Private Sarlosk",
			"Tol Barad Peninsula",
			55.7,
			78.7,
			709,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[7945] = {
		{
			7945,
			"Your Fortune Awaits You...",
			82,
			"Darkmoon Faire",
			1,
		},
		{
			4003,
		},
		{
			nil,
			nil,
			"Kelp'thar Forest",
			50.7,
			36.7,
			610,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28885] = {
		{
			28885,
			"Mr. Goldmine's Wild Ride",
			85,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46243,
			"Initiate Goldmine",
			"Twilight Highlands",
			37.6,
			88.7,
			700,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28757] = {
		{
			28757,
			"Beating them Back!",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			197,
			"Marshal McBride",
			"Elwynn Forest",
			48.2,
			42.1,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28629] = {
		{
			28629,
			"Are We There, Yeti?",
			52,
			"Winterspring",
			1,
		},
		{
			29,
		},
		{
			10305,
			"Umi Rumplesnicker",
			"Winterspring",
			59.4,
			49.8,
			281,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24590] = {
		{
			24590,
			"Lord Marrowgar Must Die! [Raid]",
			80,
			"Icecrown Citadel",
			5,
		},
		{
			1072,
		},
		{
			20735,
			"Archmage Lan'dalock",
			"Dalaran",
			57.8,
			66.7,
			504,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[8105] = {
		{
			8105,
			"The Battle for Arathi Basin! [PvP]",
			55,
			"Arathi Basin",
			1,
		},
		{
			5003,
		},
		{
			14983,
			"Field Marshal Oslight",
			"Arathi Highlands",
			40,
			46.8,
			16,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28810] = {
		{
			28810,
			"Fear No Evil",
			3,
			"Elwynn Forest",
			1,
		},
		{
			39,
		},
		{
			951,
			"Brother Paxton",
			"Elwynn Forest",
			48.8,
			37.9,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28557] = {
		{
			28557,
			"Warchief's Command: Uldum!",
			84,
			"Ruins of Uldum",
			1,
		},
		{
			27,
		},
		{
			nil,
			nil,
			"Orgrimmar",
			49.6,
			76.5,
			321,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[13844] = {
		{
			13844,
			"The Looting of Althalaxx",
			14,
			"Darkshore",
			1,
		},
		{
			7,
		},
		{
			34041,
			"Mathas Wildwood",
			"Darkshore",
			59.1,
			19.5,
			42,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[24737] = {
		{
			24737,
			"Super Sticky",
			52,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			38276,
			"Tara",
			"Un'Goro Crater",
			43.3,
			41,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24865] = {
		{
			24865,
			"Is This Stuff Still Good?",
			51,
			"Un'Goro Crater",
			1,
		},
		{
			28,
		},
		{
			nil,
			nil,
			"Un'Goro Crater",
			68.59999999999999,
			36.5,
			201,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[24993] = {
		{
			24993,
			"Annihilate the Worgen",
			8,
			"Tirisfal Glades",
			1,
		},
		{
			60,
		},
		{
			1515,
			"Executor Zygand",
			"Tirisfal Glades",
			60.5,
			52,
			20,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[25121] = {
		{
			25121,
			"Momentum",
			46,
			"Tanaris",
			1,
		},
		{
			22,
		},
		{
			38535,
			"Kelsey Steelspark",
			"Tanaris",
			51.3,
			29.9,
			161,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9900] = {
		{
			9900,
			"Gava'xi",
			67,
			"Nagrand",
			1,
		},
		{
			71,
		},
		{
			18276,
			"Zerid",
			"Nagrand",
			30.8,
			58.2,
			477,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25377] = {
		{
			25377,
			"The Horde's Hoard",
			81,
			"Kelp'thar Forest",
			1,
		},
		{
			45,
		},
		{
			39918,
			"Clacksnap Pincer",
			"Kelp'thar Forest",
			47.3,
			40.3,
			610,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25505] = {
		{
			25505,
			"Do Me a Favor?",
			40,
			"Thousand Needles",
			1,
		},
		{
			25,
		},
		{
			40028,
			"Pozzik",
			"Thousand Needles",
			76,
			74.7,
			61,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9747] = {
		{
			9747,
			"The Umbrafen Tribe",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			17956,
			"Ikeyen",
			"Zangarmarsh",
			80.40000000000001,
			64.2,
			467,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25761] = {
		{
			25761,
			"Disassembly",
			81,
			"Mount Hyjal",
			1,
		},
		{
			15,
		},
		{
			0,
			"Interficio",
			"Mount Hyjal",
			32.8,
			70.8,
			606,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[25889] = {
		{
			25889,
			"[29] Save the Children!",
			29,
			"Stonetalon Mountains",
			1,
		},
		{
			21,
		},
		{
			41482,
			"Master Thal'darah",
			"Stonetalon Mountains",
			39.9,
			33.5,
			81,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26017] = {
		{
			26017,
			"A Lure",
			81,
			"Abyssal Depths",
			1,
		},
		{
			30,
		},
		{
			41910,
			"Humphrey Digsong",
			"Abyssal Depths",
			47.3,
			49.7,
			614,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26145] = {
		{
			26145,
			"The Trogg Threat",
			12,
			"Loch Modan",
			1,
		},
		{
			46,
		},
		{
			1089,
			"Mountaineer Cobbleflint",
			"Loch Modan",
			23.4,
			74.90000000000001,
			35,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26273] = {
		{
			26273,
			"The Basics: Hitting Things",
			2,
			"Echo Isles",
			1,
		},
		{
			10,
		},
		{
			42618,
			"Voldreka",
			"Durotar",
			64.90000000000001,
			83.2,
			4,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[26401] = {
		{
			26401,
			"Return to Vestia",
			37,
			"Feralas",
			1,
		},
		{
			13,
		},
		{
			nil,
			nil,
			"Feralas",
			65.90000000000001,
			62.9,
			121,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26529] = {
		{
			26529,
			"The Fang of Shadra",
			34,
			"The Hinterlands",
			1,
		},
		{
			59,
		},
		{
			43200,
			"Gilda Cloudcaller",
			"The Hinterlands",
			30.8,
			47.1,
			26,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26657] = {
		{
			26657,
			"Hard Falls",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			42466,
			"Terrath the Steady",
			"Deepholm",
			40,
			19.3,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[26785] = {
		{
			26785,
			"Part of the Pack",
			24,
			"Duskwood",
			1,
		},
		{
			37,
		},
		{
			43453,
			"Tobias Mistmantle",
			"Duskwood",
			79,
			44.3,
			34,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[26913] = {
		{
			26913,
			"Charging into Battle",
			3,
			"Warrior",
			1,
		},
		{
			2010,
		},
		{
			911,
			"Llane Beshere",
			"Elwynn Forest",
			50.3,
			42.2,
			30,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27041] = {
		{
			27041,
			"Decryption Made Easy",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			44823,
			"Examiner Rowe",
			"Deepholm",
			51.2,
			50.1,
			640,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27169] = {
		{
			27169,
			"Uther's Blessing",
			36,
			"Western Plaguelands",
			1,
		},
		{
			66,
		},
		{
			10838,
			"Commander Ashlam Valorfist",
			"Western Plaguelands",
			42.7,
			83.90000000000001,
			22,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27297] = {
		{
			27297,
			"Justice Dispensed",
			38,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			6546,
			"Tabetha",
			"Dustwallow Marsh",
			46,
			57.1,
			141,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27425] = {
		{
			27425,
			"A Grim Connection",
			38,
			"Dustwallow Marsh",
			1,
		},
		{
			11,
		},
		{
			4944,
			"Captain Garran Vimes",
			"Dustwallow Marsh",
			68.2,
			48.5,
			141,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[9682] = {
		{
			9682,
			"The Hopeless Ones...",
			18,
			"Bloodmyst Isle",
			1,
		},
		{
			6,
		},
		{
			17712,
			"Captain Edward Hanes",
			"Bloodmyst Isle",
			79.09999999999999,
			22.6,
			476,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27681] = {
		{
			27681,
			"Behind Closed Doors",
			39,
			"Uldaman",
			1,
		},
		{
			1017,
		},
		{
			46236,
			"High Examiner Tae'thelan Bloodwatcher",
			"Uldaman",
			64.2,
			72.7,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[27809] = {
		{
			27809,
			"Firebeard Bellows",
			84,
			"Twilight Highlands",
			1,
		},
		{
			63,
		},
		{
			46805,
			"Iain Firebeard",
			"Twilight Highlands",
			57.5,
			58.2,
			700,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[27937] = {
		{
			27937,
			"The Hero Returns",
			83,
			"Deepholm",
			1,
		},
		{
			89,
		},
		{
			43897,
			"Pyrium Lodestone",
			"Deepholm",
			22.6,
			52,
			640,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28065] = {
		{
			28065,
			"Walk A Mile In Their Shoes",
			85,
			"Tol Barad Peninsula",
			3,
		},
		{
			62,
		},
		{
			47240,
			"Commander Marcus Johnson",
			"Tol Barad Peninsula",
			73.3,
			59.3,
			709,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28193] = {
		{
			28193,
			"Lockdown!",
			83,
			"Uldum",
			1,
		},
		{
			27,
		},
		{
			47972,
			"Commander Schnottz",
			"Uldum",
			22.5,
			63.2,
			720,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[28321] = {
		{
			28321,
			"Glory Amidst Chaos",
			52,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48307,
			"Colonel Troteman",
			"Burning Steppes",
			73.59999999999999,
			67.09999999999999,
			29,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[28449] = {
		{
			28449,
			"Placing the Pawns",
			51,
			"Burning Steppes",
			1,
		},
		{
			34,
		},
		{
			48292,
			"Acride",
			"Burning Steppes",
			82.2,
			31.6,
			29,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10194] = {
		{
			10194,
			"Stealth Flight",
			68,
			"Netherstorm",
			1,
		},
		{
			72,
		},
		{
			19468,
			"Spymaster Thalodien",
			"Netherstorm",
			32,
			64.09999999999999,
			479,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28705] = {
		{
			28705,
			"Warchief's Command: Outland!",
			60,
			"Blasted Lands",
			1,
		},
		{
			33,
		},
		{
			nil,
			nil,
			"Undercity",
			65.90000000000001,
			49.6,
			382,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[28833] = {
		{
			28833,
			"Rescue the Earthspeaker! [Dungeon]",
			82,
			"Throne of the Tides",
			1,
		},
		{
			1056,
		},
		{
			50272,
			"Legionnaire Nazgrim",
			"Throne of the Tides",
			50,
			90.2,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[9772] = {
		{
			9772,
			"Jyoba's Report",
			62,
			"Zangarmarsh",
			1,
		},
		{
			76,
		},
		{
			18035,
			"Scout Jyoba",
			"Zangarmarsh",
			80.8,
			36.3,
			467,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10450] = {
		{
			10450,
			"Bonechewer Blood",
			60,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			21256,
			"Vurtok Axebreaker",
			"Hellfire Peninsula",
			55.1,
			36.3,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10514] = {
		{
			10514,
			"I Was A Lot Of Things...",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21183,
			"Oronok Torn-heart",
			"Shadowmoon Valley",
			53.9,
			23.5,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10578] = {
		{
			10578,
			"The Cipher of Damnation - Borak's Charge [Group]",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21293,
			"Borak, Son of Oronok",
			"Shadowmoon Valley",
			47.5,
			57.2,
			473,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10642] = {
		{
			10642,
			"[69] A Ghost in the Machine",
			69,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21774,
			"Zorus the Judicator",
			"Shadowmoon Valley",
			36.6,
			56.6,
			473,
			nil,
			0,
		},
		{
			1,
			4095,
			1023,
		},
		{
		},
	},
	[10706] = {
		{
			10706,
			"A Mysterious Portent",
			70,
			"Shadowmoon Valley",
			1,
		},
		{
			73,
		},
		{
			21962,
			"Udalo",
			"The Arcatraz",
			0,
			0,
			nil,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10770] = {
		{
			10770,
			"Little Embers",
			67,
			"Blade's Edge Mountains",
			1,
		},
		{
			69,
		},
		{
			22053,
			"Mosswood the Ancient",
			"Blade's Edge Mountains",
			61.3,
			38.5,
			475,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},
	},
	[10834] = {
		{
			10834,
			"Grillok \"Darkeye\" [Group]",
			62,
			"Hellfire Peninsula",
			1,
		},
		{
			70,
		},
		{
			22231,
			"Zezzak",
			"Hellfire Peninsula",
			61.6,
			81.8,
			465,
			nil,
			0,
		},
		{
			2,
			4095,
			1023,
		},
		{
		},
	},
	[10898] = {
		{
			10898,
			"Skywing [Group]",
			65,
			"Terokkar Forest",
			1,
		},
		{
			75,
		},
		{
			22424,
			"Skywing",
			"Terokkar Forest",
			53.9,
			72.3,
			478,
			nil,
			0,
		},
		{
			3,
			4095,
			1023,
		},
		{
		},