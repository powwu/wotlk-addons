--[[

	Quest Completist - qcCore.lua
	Written by: Alistair Maxwell

--]]

--[[ Internal Tables ]]--
qcZoneQuestsv2 = {}
qcCompletedQuests = {}
qcDynamicQuestDBv2 = {}
qcMapQuests = {}
qcPins = {}
qcSparePins = {}
qcWorkingDB = {}

--[[ Localization Table ]]--
local L = QuestCompletistLocalization

--[[ Vars ]]--
local qcCurrentZone = -1
local qcCurrentMapZone = -1
local qcMapZoneName = nil
local qcCurrentZoneQuestCount = 0
local qcCurrentScrollPosition = 1
local qcMap = nil
local qcMapTooltip = nil

--[[ Constants ]]--
local QCADDON_MSG_PREFIX = "QCOMPLETIST"
local QCADDON_VERSION = 93
local QCADDON_DELIMITER = ":"
local QCSINGLEPADDING = " "
local QCDOUBLEPADDING = "  "
local QCTRIPLEPADDING = "   "
local QCADDON_CHAT_TITLE = "|cFF9482C9Quest Completist:|r "

--[[ Bitwise Values ]]--
qcFactionBits = {["ALLIANCE"]=1,["HORDE"]=2,}
qcRaceBits = {["HUMAN"]=1,["ORC"]=2,["DWARF"]=4,["NIGHTELF"]=8,["SCOURGE"]=16,["TAUREN"]=32,["GNOME"]=64,["TROLL"]=128,["GOBLIN"]=256,["BLOODELF"]=512,["DRAENEI"]=1024,["WORGEN"]=2048,}
qcClassBits = {["WARRIOR"]=1,["PALADIN"]=2,["HUNTER"]=4,["ROGUE"]=8,["PRIEST"]=16,["DEATHKNIGHT"]=32,["SHAMAN"]=64,["MAGE"]=128,["WARLOCK"]=256,["DRUID"]=512,}

qcMapIDLookup = {

	["Ahn'Qiraj: The Fallen Kingdom"]=772,
	["Ashenvale"]=43,
	["Azshara"]=181,
	["Azuremyst Isle"]=464,
	["Bloodmyst Isle"]=476,
	["Darkshore"]=42,
	["Darnassus"]=381,
	["Desolace"]=101,
	["Durotar"]=4,
	["Dustwallow Marsh"]=141,
	["Felwood"]=182,
	["Feralas"]=121,
	["Moonglade"]=241,
	["Mount Hyjal"]=606,
	["Mulgore"]=9,
	["Northern Barrens"]=11,
	["Orgrimmar"]=321,
	["Silithus"]=261,
	["Southern Barrens"]=607,
	["Stonetalon Mountains"]=81,
	["Tanaris"]=161,
	["Teldrassil"]=41,
	["The Exodar"]=471,
	["Thousand Needles"]=61,
	["Thunder Bluff"]=362,
	["Uldum"]=720,
	["Un'Goro Crater"]=201,
	["Winterspring"]=281,
	["Abyssal Depths"]=614,
	["Arathi Highlands"]=16,
	["Badlands"]=17,
	["Blasted Lands"]=19,
	["Burning Steppes"]=29,
	["Deadwind Pass"]=32,
	["Dun Morogh"]=27,
	["Duskwood"]=34,
	["Eastern Plaguelands"]=23,
	["Elwynn Forest"]=30,
	["Eversong Woods"]=462,
	["Ghostlands"]=463,
	["Hillsbrad Foothills"]=24,
	["Ironforge"]=341,
	["Isle of Quel'Danas"]=499,
	["Kelp'thar Forest"]=610,
	["Loch Modan"]=35,
	["Northern Stranglethorn"]=37,
	["Redridge Mountains"]=36,
	["Ruins of Gilneas"]=684,
	["Ruins of Gilneas City"]=685,
	["Searing Gorge"]=28,
	["Shimmering Expanse"]=615,
	["Silvermoon City"]=480,
	["Silverpine Forest"]=21,
	["Stormwind City"]=301,
	["Stranglethorn Vale"]=689,
	["Swamp of Sorrows"]=38,
	["The Cape of Stranglethorn"]=673,
	["The Hinterlands"]=26,
	["Tirisfal Glades"]=20,
	["Tol Barad"]=708,
	["Tol Barad Peninsula"]=709,
	["Twilight Highlands"]=700,
	["Undercity"]=382,
	["Vashj'ir"]=613,
	["Western Plaguelands"]=22,
	["Westfall"]=39,
	["Wetlands"]=40,
	["Blade's Edge Mountains"]=475,
	["Hellfire Peninsula"]=465,
	["Nagrand"]=477,
	["Netherstorm"]=479,
	["Shadowmoon Valley"]=473,
	["Shattrath City"]=481,
	["Terokkar Forest"]=478,
	["Zangarmarsh"]=467,
	["Borean Tundra"]=486,
	["Crystalsong Forest"]=510,
	["Dalaran"]=504,
	["Dragonblight"]=488,
	["Grizzly Hills"]=490,
	["Howling Fjord"]=491,
	["Hrothgar's Landing"]=541,
	["Icecrown"]=492,
	["Sholazar Basin"]=493,
	["The Storm Peaks"]=495,
	["Wintergrasp"]=501,
	["Zul'Drak"]=496,
	["Deepholm"]=640,
	["Kezan"]=605,
	["The Lost Isles"]=544,
	["The Maelstrom"]=751,

}

--	Constants for the Key Bindings & Slash Commands --
BINDING_HEADER_QCQUESTCOMPLETIST = "Quest Completist";
BINDING_NAME_QCTOGGLEFRAME = "Toggle Frame";
SLASH_QUESTCOMPLETIST1 = "/qc"
SLASH_QUESTCOMPLETIST2 = "/questc"

SlashCmdList["QUESTCOMPLETIST"] = function(msg, editbox)
	ShowUIPanel(frameQuestCompletist)
end

function qcUpdateMapIDs()

	wipe(qcWorkingDB)

	for qcIndex, qcEntry in pairs(qcQuestDBv2) do
		table.insert(qcWorkingDB, qcIndex, qcEntry)
	end

	for qcIndex, qcEntry in pairs(qcWorkingDB) do
		local qcMapID = qcMapIDLookup[qcEntry[3][3]] or nil
		--qcEntry[3][8] = 0
		print(qcEntry[3][3], qcMapID)
		qcEntry[3][6] = qcMapID
	end

end

function qcScrollUpdate(value)

	--[[
	Do this to ensure we are not pointlessly doing extra work when the
	slider value hasn't changed.
	--]]

	if (qcCurrentScrollPosition ~= value) then
		qcCurrentScrollPosition = value
		qcUpdateMenu(nil, value)
	end

end

function qcUpdateCurrentZoneText(qcZoneID)

	-- TODO: Possible update to use quest categories not continent zones?

	for qcIndex, qcEntry in pairs(qcContinentZones) do
		if (qcEntry[2] == qcZoneID) then
			frameQuestCompletist.qcSelectedZone:SetText(qcEntry[3])
			break
		else
			frameQuestCompletist.qcSelectedZone:SetText(QCSINGLEPADDING)
		end
	end

end

function qcCollectUpdate()

local qcUpdateCount = 0

	for qcIndex, qcUpdate in pairs(qcDynamicQuestDBv2) do
		qcUpdateCount = (qcUpdateCount + 1)
	end

	print(QCADDON_CHAT_TITLE .. "Thanks for using Quest Completist. You have gathered " .. tostring(qcUpdateCount) .. " updates so far. Every now and then, please consider sending me your Saved Variables file so that I can include these updates in the next version.")

end

function qcUpdateMenu(qcZoneID, qcStartItem, qcDailyReset)

	local qcOffset
	local qcMenuButton = "qcMenuButton"
	local qcOpenLevel = "["
	local qcCloseLevel = "] "

	if (qcZoneID ~= nil) then --[[ We need to collect data for a different zone ]]--
		qcCurrentZone = qcZoneID --[[ Store the current zone ID for use by other functions ]]--
		qcUpdateCurrentZoneText(qcZoneID)
		qcGetZoneQuests(qcZoneID)
		qcCurrentZoneQuestCount = (#qcZoneQuestsv2) --[[ Store the current zone quest count for use by other functions ]]--
		frameQuestCompletist.qcCurrentZoneQuestCount:SetText(qcCurrentZoneQuestCount .. " Quests Found")
		if (qcCurrentZoneQuestCount <= 0) then --[[ No quests were found for this zone ]]--
			qcMenuSlider:SetMinMaxValues(1, 1)
		elseif (qcCurrentZoneQuestCount < 16) then --[[ All quests can fit on one screen ]]--
			qcMenuSlider:SetMinMaxValues(1, 1)
		else --[[ Not all quests can fit on one screen ]]--
			qcMenuSlider:SetMinMaxValues(1, qcCurrentZoneQuestCount - 15)
		end
		qcMenuSlider:SetValue(qcStartItem)
	end

	for qcMenuIndex = 1, 16 do
		qcOffset = ((qcMenuIndex + qcStartItem) - 1)
		if (qcCurrentZoneQuestCount >= qcOffset) then --[[ We only want quests which are after the start item ]]--
			_G[qcMenuButton .. qcMenuIndex].QuestName:SetText(qcOpenLevel .. qcZoneQuestsv2[qcOffset][1][3] .. qcCloseLevel .. qcZoneQuestsv2[qcOffset][1][2])
			_G[qcMenuButton .. qcMenuIndex].QuestTag:SetText(qcZoneQuestsv2[qcOffset][1][1])
			_G[qcMenuButton .. qcMenuIndex].QuestProviderID:SetText((qcZoneQuestsv2[qcOffset][3][1]) or nil)
			_G[qcMenuButton .. qcMenuIndex].QuestProviderName:SetText((qcZoneQuestsv2[qcOffset][3][2]) or nil)
			_G[qcMenuButton .. qcMenuIndex].QuestProviderZone:SetText((qcZoneQuestsv2[qcOffset][3][3]) or nil)
			_G[qcMenuButton .. qcMenuIndex].QuestProviderX:SetText((qcZoneQuestsv2[qcOffset][3][4]) or nil)
			_G[qcMenuButton .. qcMenuIndex].QuestProviderY:SetText((qcZoneQuestsv2[qcOffset][3][5]) or nil)
			_G[qcMenuButton .. qcMenuIndex].QuestProviderComments:SetText((qcZoneQuestsv2[qcOffset][5][1]) or nil)

			if (qcZoneQuestsv2[qcOffset][1][5] == 1) then --[[ Normal ]]--
				_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Show()
				_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(1.0, 1.0, 1.0, 1.0)
			elseif (qcZoneQuestsv2[qcOffset][1][5] == 2) then --[[ Repeatable ]]--
				_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Show()
				_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(0.0941176470588235, 0.6274509803921569, 0.9411764705882353, 1.0)
			elseif (qcZoneQuestsv2[qcOffset][1][5] == 3) then --[[ Daily ]]--
				_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].DailyIcon:Show()
				_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(0.0941176470588235, 0.6274509803921569, 0.9411764705882353, 1.0)
			elseif (qcZoneQuestsv2[qcOffset][1][5] == 4) then --[[ Special ]]--
				_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Show()
				_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(1.0, 0.6156862745098039, 0.0862745098039216, 1.0)
			elseif (qcZoneQuestsv2[qcOffset][1][5] == 5) then --[[ Weekly ]]--
				_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Show()
				_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(1.0, 0.6156862745098039, 0.0862745098039216, 1.0)
			else --[[ Unknown ]]--
				_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(1.0, 1.0, 1.0, 1.0)
			end

			if (qcZoneQuestsv2[qcOffset][4][1] == 1) then
				_G[qcMenuButton .. qcMenuIndex].HordeIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].AllianceIcon:Show()
			elseif(qcZoneQuestsv2[qcOffset][4][1] == 2) then
				_G[qcMenuButton .. qcMenuIndex].AllianceIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].HordeIcon:Show()
			elseif(qcZoneQuestsv2[qcOffset][4][1] == 3) then
				_G[qcMenuButton .. qcMenuIndex].AllianceIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].HordeIcon:Hide()
			else
				_G[qcMenuButton .. qcMenuIndex].AllianceIcon:Hide()
				_G[qcMenuButton .. qcMenuIndex].HordeIcon:Hide()
			end

			--[[ Now check if the quest is in progress, or completed but not handed in ]]--
			if (GetQuestLogIndexByID(qcZoneQuestsv2[qcOffset][1][1]) ~= 0) then
				local _S
				local qcIsComplete
				_S, _S, _S, _S, _S, _S, qcIsComplete, _S, _S = GetQuestLogTitle(GetQuestLogIndexByID(qcZoneQuestsv2[qcOffset][1][1]))
				if (qcIsComplete == nil) then --[[ Quest is yet to reach a conclusion ]]--
					_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Show()
					_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(0.5803921568627451, 0.5882352941176471, 0.5803921568627451, 1.0)
				elseif (qcIsComplete == 1) then --[[ Is completed ]]--
					_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Show()
					_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(1.0, 0.8196078431372549, 0.0, 1.0)
				elseif (qcIsComplete == -1) then --[[ Is failed or abandoned ]]--
					_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
					_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Show()
					_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(0.9372549019607843, 0.1490196078431373, 0.0627450980392157, 1.0)
				end
			end
			--[[
			Now that the basic colours for the quest types have been applied,
			go through the completed quests DB for the character to see what
			has been completed, and colour as needed. Does not colour repeatables
			or daily quests.
			--]]
			if (qcCompletedQuests[qcZoneQuestsv2[qcOffset][1][1]] == nil) then
				--[[ Quest isn't flagged as being completed ]]--
			else
				if (qcZoneQuestsv2[qcOffset][1][5] ~= 2) and (qcZoneQuestsv2[qcOffset][1][5] ~= 3) then --[[ Quest isn't repeatable or daily ]]--
					if (qcCompletedQuests[qcZoneQuestsv2[qcOffset][1][1]]["I"] == 1) then --[[ User wants to ignore this quest ]]--
						_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(0.58, 0.51, 0.79, 1.0)
						_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Show()
					else
						if (qcCompletedQuests[qcZoneQuestsv2[qcOffset][1][1]]["C"] == 1) then --[[ Quest is complete ]]--
							_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(0.0, 1.0, 0.0, 1.0)
							_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Show()
						else
							_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(1.0, 1.0, 1.0, 1.0)
							_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
							_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Show()
						end
					end
				else
					if (qcZoneQuestsv2[qcOffset][1][5] == 3) then --[[ Daily quest ]]--
						_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(0.0941176470588235, 0.6274509803921569, 0.9411764705882353, 1.0)
						_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].DailyIcon:Show()
					elseif (qcZoneQuestsv2[qcOffset][1][5] == 2) then --[[ Repeatable quest ]]--
						_G[qcMenuButton .. qcMenuIndex].QuestName:SetTextColor(0.0941176470588235, 0.6274509803921569, 0.9411764705882353, 1.0)
						_G[qcMenuButton .. qcMenuIndex].AvailableIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].DailyIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].SpecialIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].IncompleteIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].ActiveIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].CompleteIcon:Hide()
						_G[qcMenuButton .. qcMenuIndex].RepeatableIcon:Show()
					end
				end
			end
			_G[qcMenuButton .. qcMenuIndex]:Show()
			_G[qcMenuButton .. qcMenuIndex]:Enable()
		else
			_G[qcMenuButton .. qcMenuIndex].QuestName:SetText(QCSINGLEPADDING)
			_G[qcMenuButton .. qcMenuIndex]:Hide()
			_G[qcMenuButton .. qcMenuIndex]:Disable()
		end
	end

end

function qcQuestQueryCompleted()

	--TODO: I dont use qcUnknownQuestCount, strings need updated

	local qcRecievedQuestCount = 0
	local qcAddedToQuestHistory = 0
	local qcUnknownQuestCount = 0
	local qcCompletedTable = {}

	wipe(qcCompletedTable)
	--wipe(qcCompletedQuests) Cant wipe or it will clear manually set quests
	GetQuestsCompleted(qcCompletedTable)

	for qcCompletedTableIndex, qcCompletedQuest in pairs(qcCompletedTable) do
		qcRecievedQuestCount = (qcRecievedQuestCount + 1)
		if (qcCompletedQuests[qcCompletedTableIndex] == nil) then
			qcAddedToQuestHistory = (qcAddedToQuestHistory + 1)
			qcCompletedQuests[qcCompletedTableIndex] = {}
		end
		qcCompletedQuests[qcCompletedTableIndex]["C"] = 1 --[[ Completed ]]--
	end

	print(QCADDON_CHAT_TITLE .. string.format(L["QC_QUERYRESULTS"], qcRecievedQuestCount, qcAddedToQuestHistory, qcUnknownQuestCount))
	qcUpdateMenu(nil, qcMenuSlider:GetValue())

end

function qcGetZoneQuests(qcZoneID)

	wipe(qcZoneQuestsv2)

	--[[ Pull all quests related to this zone from the database ]]--
	for qcIndex, qcEntry in pairs(qcQuestDBv2) do
		if (qcEntry[2][1] == qcZoneID) then --[[ This quest is from the required zone ]]--
			table.insert(qcZoneQuestsv2, qcEntry)
		end
	end

	--[[ Completed filtering ]]--
	if (_G["qcCompletedCheckButton"]:GetChecked() == 1) then
		for qcZoneQuestsIndex = #qcZoneQuestsv2, 1, -1 do
			if (qcCompletedQuests[qcZoneQuestsv2[qcZoneQuestsIndex][1][1]] ~= nil) then
				if (qcCompletedQuests[qcZoneQuestsv2[qcZoneQuestsIndex][1][1]]["C"] == 1) then
					table.remove(qcZoneQuestsv2, qcZoneQuestsIndex)
				end
			end
		end
	end

	--[[ Faction filtering ]]--
	if (_G["qcFactionCheckButton"]:GetChecked() == 1) then
		local qcCurrentPlayerFaction, _S = UnitFactionGroup("player")
		local qcCurrentFaction = qcFactionBits[string.upper(qcCurrentPlayerFaction)]
		for qcZoneQuestsIndex = #qcZoneQuestsv2, 1, -1 do
			if (bit.band(qcZoneQuestsv2[qcZoneQuestsIndex][4][1], qcCurrentFaction) == 0) then
				table.remove(qcZoneQuestsv2, qcZoneQuestsIndex)
			end
		end
	end

	--[[ Class\Race filtering ]]--
	if (_G["qcClassCheckButton"]:GetChecked() == 1) then
		local _S, qcCurrentPlayerClass = UnitClass("player")
		local qcCurrentClass = qcClassBits[string.upper(qcCurrentPlayerClass)]
		local _S, qcCurrentPlayerRace = UnitRace("player")
		local qcCurrentRace = qcRaceBits[string.upper(qcCurrentPlayerRace)]
		for qcZoneQuestsIndex = #qcZoneQuestsv2, 1, -1 do
			if (bit.band(qcZoneQuestsv2[qcZoneQuestsIndex][4][3], qcCurrentClass) == 0) then
				table.remove(qcZoneQuestsv2, qcZoneQuestsIndex)
			elseif (bit.band(qcZoneQuestsv2[qcZoneQuestsIndex][4][2], qcCurrentRace) == 0) then
				table.remove(qcZoneQuestsv2, qcZoneQuestsIndex)
			end
		end
	end

	--[[ Sort the zones quests ]]--
	if (qcSettings["SORT"] == 1) then
		table.sort(qcZoneQuestsv2, function(a, b) return (a[1][3]<b[1][3] or (a[1][3] == b[1][3] and a[1][2]<b[1][2])) end)
	elseif (qcSettings["SORT"] == 2) then
		table.sort(qcZoneQuestsv2, function(a, b) return a[1][2]<b[1][2] end)
	else --[[ No sort preference found, so sorting by level ]]--
		table.sort(qcZoneQuestsv2, function(a, b) return (a[1][3]<b[1][3] or (a[1][3] == b[1][3] and a[1][2]<b[1][2])) end)
	end

end

local function qcClearUpdateCache()

	--[[ Clear the caches ]]--
	wipe(qcDynamicQuestDBv2)
	wipe(qcCompletedQuests)
	print(QCADDON_CHAT_TITLE .. "Cache Cleared.")

end

local function qcToggleMapIcons()

	--[[ Toggle the map icon setting ]]--
	if (qcSettings["SHOWMAPICONS"] == 1) then
		qcSettings["SHOWMAPICONS"] = 0
		qcHideAllPins()
	else
		qcSettings["SHOWMAPICONS"] = 1
		qcRefreshPins(GetCurrentMapAreaID())
	end

end

function qcMenuMouseWheel(self, delta)

	local currentPosition = qcMenuSlider:GetValue()

	if (delta < 0) and (currentPosition < qcCurrentZoneQuestCount) then
		qcMenuSlider:SetValue(currentPosition + 2)
	elseif (delta > 0) and (currentPosition > 1) then
		qcMenuSlider:SetValue(currentPosition - 2)
	end

end

function qcZoneDropdown_Initialize(self, level)

local qcDropDownInfo

	if (level == 1) then

		--[[ Continents & Continent Zones ]]--
		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = "Continents"
		qcDropDownInfo.isTitle = 1
		qcDropDownInfo.notCheckable = true
		UIDropDownMenu_AddButton(qcDropDownInfo, level)
		for qcContinentIndex, qcContinent in ipairs(qcContinents) do
			qcDropDownInfo = UIDropDownMenu_CreateInfo()
			qcDropDownInfo.text = tostring(QCTRIPLEPADDING .. qcContinent[2])
			qcDropDownInfo.notCheckable = true
			qcDropDownInfo.hasArrow = true
			qcDropDownInfo.value = qcContinent[1]
			UIDropDownMenu_AddButton(qcDropDownInfo, level)
		end
		--[[ Dungeon\Raid Categories and Dungeons\Raids ]]--
		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = "Dungeons & Raids"
		qcDropDownInfo.isTitle = 1
		qcDropDownInfo.notCheckable = true
		UIDropDownMenu_AddButton(qcDropDownInfo, level)
		for qcDungeonCategoryIndex, qcDungeonCategory in ipairs(qcDungeonCategories) do
			qcDropDownInfo = UIDropDownMenu_CreateInfo()
			qcDropDownInfo.text = tostring(QCTRIPLEPADDING .. qcDungeonCategory[2])
			qcDropDownInfo.notCheckable = true
			qcDropDownInfo.hasArrow = true
			qcDropDownInfo.value = qcDungeonCategory[1]
			UIDropDownMenu_AddButton(qcDropDownInfo, level)
		end
		--[[ Class Quests ]]--
		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = "Class Quests"
		qcDropDownInfo.isTitle = 1
		qcDropDownInfo.notCheckable = true
		UIDropDownMenu_AddButton(qcDropDownInfo, level)
		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = tostring(QCTRIPLEPADDING .. "Classes")
		qcDropDownInfo.notCheckable = true
		qcDropDownInfo.hasArrow = true
		qcDropDownInfo.value = 20
		UIDropDownMenu_AddButton(qcDropDownInfo, level)
		--[[ Miscellaneous Section ]]--
		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = "Miscellaneous"
		qcDropDownInfo.isTitle = 1
		qcDropDownInfo.notCheckable = true
		UIDropDownMenu_AddButton(qcDropDownInfo, level)
		for qcMiscellaneousCategoriesIndex, qcMiscellaneousCategory in ipairs(qcMiscellaneousCategories) do
			qcDropDownInfo = UIDropDownMenu_CreateInfo()
			qcDropDownInfo.text = tostring(QCTRIPLEPADDING .. qcMiscellaneousCategory[2])
			qcDropDownInfo.notCheckable = true
			qcDropDownInfo.hasArrow = true
			qcDropDownInfo.value = qcMiscellaneousCategory[1]
			UIDropDownMenu_AddButton(qcDropDownInfo, level)
		end
		--[[ Options ]]--
		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = "Options"
		qcDropDownInfo.isTitle = 1
		qcDropDownInfo.notCheckable = true
		UIDropDownMenu_AddButton(qcDropDownInfo, level)

		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = tostring(QCTRIPLEPADDING .. "Perform Server Query...")
		qcDropDownInfo.notCheckable = true
		qcDropDownInfo.colorCode = COLOUR_DRUID
		qcDropDownInfo.arg1 = "SERVERQUERY"
		function qcDropDownInfo.func(button, arg1)
			print(QCADDON_CHAT_TITLE .. L["QC_QUERYREQUESTED"])
			frameQuestCompletist:RegisterEvent("QUEST_QUERY_COMPLETE")
			QueryQuestsCompleted()
		end
		UIDropDownMenu_AddButton(qcDropDownInfo, level)

		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = tostring(QCTRIPLEPADDING .. "Clear Update Cache...")
		qcDropDownInfo.notCheckable = true
		qcDropDownInfo.colorCode = COLOUR_DRUID
		qcDropDownInfo.arg1 = "CLEARUPDATECACHE"
		function qcDropDownInfo.func(button, arg1)
			print(QCADDON_CHAT_TITLE .. "Clearing your update Cache...")
			qcClearUpdateCache()
		end
		UIDropDownMenu_AddButton(qcDropDownInfo, level)

		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = tostring(QCTRIPLEPADDING .. "Toggle Map Icons...")
		qcDropDownInfo.notCheckable = true
		qcDropDownInfo.colorCode = COLOUR_DRUID
		qcDropDownInfo.arg1 = "TOGGLEMAPICONS"
		function qcDropDownInfo.func(button, arg1)
			qcToggleMapIcons()
		end
		UIDropDownMenu_AddButton(qcDropDownInfo, level)

		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = tostring(QCTRIPLEPADDING .. "Sort: Level")
		qcDropDownInfo.notCheckable = true
		qcDropDownInfo.colorCode = COLOUR_DRUID
		qcDropDownInfo.arg1 = "SORTLEVEL"
		function qcDropDownInfo.func(button, arg1)
			qcSettings["SORT"] = 1
			qcUpdateMenu(qcCurrentZone, qcMenuSlider:GetValue())
		end
		UIDropDownMenu_AddButton(qcDropDownInfo, level)

		qcDropDownInfo = UIDropDownMenu_CreateInfo()
		qcDropDownInfo.text = tostring(QCTRIPLEPADDING .. "Sort: Alphabetically")
		qcDropDownInfo.notCheckable = true
		qcDropDownInfo.colorCode = COLOUR_DRUID
		qcDropDownInfo.arg1 = "SORTAPLHA"
		function qcDropDownInfo.func(button, arg1)
			qcSettings["SORT"] = 2
			qcUpdateMenu(qcCurrentZone, qcMenuSlider:GetValue())
		end
		UIDropDownMenu_AddButton(qcDropDownInfo, level)

	elseif (level == 2) then

		--[[ Kalimdor ]]--
		if (UIDROPDOWNMENU_MENU_VALUE == 1) then
			for qcZoneIndex, qcZone in ipairs(qcContinentZones) do
				if (qcZone[1] == 1) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcZone[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcZone[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcZone[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Eastern Kingdoms ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 2) then
			for qcZoneIndex, qcZone in ipairs(qcContinentZones) do
				if (qcZone[1] == 2) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcZone[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcZone[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcZone[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Outland ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 3) then
			for qcZoneIndex, qcZone in ipairs(qcContinentZones) do
				if (qcZone[1] == 3) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcZone[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcZone[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcZone[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Northrend ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 4) then
			for qcZoneIndex, qcZone in ipairs(qcContinentZones) do
				if (qcZone[1] == 4) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcZone[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcZone[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcZone[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ The Maelstrom ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 5) then
			for qcZoneIndex, qcZone in ipairs(qcContinentZones) do
				if (qcZone[1] == 5) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcZone[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcZone[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcZone[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Classic Dungeon ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 10) then
			for qcDungeonIndex, qcDungeon in ipairs(qcDungeons) do
				if (qcDungeon[1] == 10) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcDungeon[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcDungeon[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcDungeon[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ The Burning Crusade Dungeon ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 11) then
			for qcDungeonIndex, qcDungeon in ipairs(qcDungeons) do
				if (qcDungeon[1] == 11) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcDungeon[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcDungeon[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcDungeon[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Wrath of the Lich King Dungeon ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 12) then
			for qcDungeonIndex, qcDungeon in ipairs(qcDungeons) do
				if (qcDungeon[1] == 12) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcDungeon[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcDungeon[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcDungeon[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Cataclysm Dungeon ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 13) then
			for qcDungeonIndex, qcDungeon in ipairs(qcDungeons) do
				if (qcDungeon[1] == 13) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcDungeon[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcDungeon[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcDungeon[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Raid ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 14) then
			for qcDungeonIndex, qcDungeon in ipairs(qcDungeons) do
				if (qcDungeon[1] == 14) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcDungeon[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcDungeon[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcDungeon[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Classes ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 20) then
			for qcClassIndex, qcClass in ipairs(qcClasses) do
				if (qcClass[1] == 20) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcClass[3]
					qcDropDownInfo.notCheckable = false
					qcDropDownInfo.colorCode = qcClass[4]
					if (qcCurrentZone == qcClass[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcClass[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Professions ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 30) then
			for qcProfessionIndex, qcProfession in ipairs(qcProfessions) do
				if (qcProfession[1] == 30) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcProfession[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcProfession[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcProfession[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ World Events ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 31) then
			for qcWorldEventIndex, qcWorldEvent in ipairs(qcWorldEvents) do
				if (qcWorldEvent[1] == 31) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcWorldEvent[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcWorldEvent[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcWorldEvent[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Battlegrounds ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 32) then
			for qcBattlegroundIndex, qcBattleground in ipairs(qcBattlegrounds) do
				if (qcBattleground[1] == 32) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcBattleground[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcBattleground[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcBattleground[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		--[[ Specials ]]--
		elseif (UIDROPDOWNMENU_MENU_VALUE == 33) then
			for qcSpecialIndex, qcSpecial in ipairs(qcSpecials) do
				if (qcSpecial[1] == 33) then
					qcDropDownInfo = UIDropDownMenu_CreateInfo()
					qcDropDownInfo.text = qcSpecial[3]
					qcDropDownInfo.notCheckable = false
					if (qcCurrentZone == qcSpecial[2]) then
						qcDropDownInfo.checked = true
					end
					qcDropDownInfo.arg1 = qcSpecial[2]
					function qcDropDownInfo.func(button, arg1)
						qcUpdateMenu(arg1, 1)
						CloseDropDownMenus()
					end
					UIDropDownMenu_AddButton(qcDropDownInfo, level)
				end
			end
		end

	end

end

function qcZoneDropdownButton_OnClick(self, button, down)

	local name = self:GetName()
	ToggleDropDownMenu(1, nil, qcZoneDropdownMenu, name, 0, 0)

end

function qcZoneDropdownOnLoad(self)

	UIDropDownMenu_Initialize(self, qcZoneDropdown_Initialize)

end

function qcFactionCheckButton_OnClick()

	if (_G["qcFactionCheckButton"]:GetChecked() == nil) then
		qcSettings["HIDEOPPFACTION"] = 0
	else
		qcSettings["HIDEOPPFACTION"] = 1
	end

	qcUpdateMenu(qcCurrentZone, 1)

end

function qcClassCheckButton_OnClick()

	if (_G["qcClassCheckButton"]:GetChecked() == nil) then
		qcSettings["HIDEOTHERCLASSRACE"] = 0
	else
		qcSettings["HIDEOTHERCLASSRACE"] = 1
	end

	qcUpdateMenu(qcCurrentZone, 1)

end

function qcCompletedCheckButton_OnClick()

	if (_G["qcCompletedCheckButton"]:GetChecked() == nil) then
		qcSettings["HIDECOMPLETED"] = 0
	else
		qcSettings["HIDECOMPLETED"] = 1
	end

	qcUpdateMenu(qcCurrentZone, 1)

end

local function qcGetZoneIDFromName(zoneName)

	--TODO: Quest Categories or Continent Zones?

	for qcZoneIndex, qcZone in ipairs(qcQuestCategories) do
		if (qcZone[2] == zoneName) then -- This seems to be the right one --
			return qcZone[1]
		end
	end

	-- TODO: Map Specials here

	return nil

end

local function qcZoneChangedNewArea()

	local qcZoneID = qcGetZoneIDFromName(GetRealZoneText())

	if (qcZoneID ~= nil) then
		qcUpdateMenu(qcZoneID, 1)
	end

end

local function qcRecievedAddonMessage(...)

local qcPrefix
local qcMessage
local qcChannel
local qcSender
local qcCleanedMessage
local qcCleanedArgument

	qcPrefix, qcMessage, qcChannel, qcSender = ...
	if (qcPrefix == "QCOMPLETIST") then
		qcCleanedMessage = string.sub(qcMessage, 1, (string.find(qcMessage, QCADDON_DELIMITER, 1, true) - 1))
		qcCleanedArgument = string.sub(qcMessage, (string.find(qcMessage, QCADDON_DELIMITER, 1, true) + 1), #qcMessage)

		if (qcCleanedMessage == "VERSIONCASCADE") then
			if (tonumber(qcCleanedArgument) > QCADDON_VERSION) then
				print(QCADDON_CHAT_TITLE .. string.format(L["QC_NEWVERSIONDETECTED"], QCADDON_VERSION, qcSender, qcCleanedArgument))
			end
		else
			print(QCADDON_CHAT_TITLE .. "Unknown addon message recieved from " .. qcSender .. ". It is possible you are running an old version of this addon.")
		end
	end

end

function qcUpdateTooltip(button)

local qcQuestID = _G["qcMenuButton" .. button .. "_QuestTag"]:GetText()
local qcQuestProviderID = _G["qcMenuButton" .. button .. "_QuestProviderID"]:GetText()
local qcQuestProviderName = _G["qcMenuButton" .. button .. "_QuestProviderName"]:GetText()
local qcQuestProviderZone = _G["qcMenuButton" .. button .. "_QuestProviderZone"]:GetText()
local qcQuestProviderX = _G["qcMenuButton" .. button .. "_QuestProviderX"]:GetText()
local qcQuestProviderY = _G["qcMenuButton" .. button .. "_QuestProviderY"]:GetText()
local qcQuestProviderComments = _G["qcMenuButton" .. button .. "_QuestProviderComments"]:GetText()

if (qcQuestID ~= nil) then

	GameTooltip:SetOwner(frameQuestCompletist, "ANCHOR_BOTTOMRIGHT", -30, 500)
	GameTooltip:ClearLines()
	GameTooltip:SetHyperlink("quest:" .. qcQuestID)
	GameTooltip:AddLine(" ")
	GameTooltip:AddDoubleLine("Quest ID:", COLOUR_MAGE .. qcQuestID)

	if (qcQuestProviderID ~= nil) and (qcQuestProviderName ~= nil) then
		GameTooltip:AddDoubleLine("Quest Giver:", COLOUR_MAGE .. qcQuestProviderName .. " [" .. qcQuestProviderID .. "]")
	end

	if (qcQuestProviderZone ~= nil) and (qcQuestProviderX ~= nil) and (qcQuestProviderY ~= nil) then
		GameTooltip:AddLine(" ")
		GameTooltip:AddDoubleLine(COLOUR_ROGUE .. qcQuestProviderZone, COLOUR_ROGUE .. qcQuestProviderX .. ", " .. qcQuestProviderY)
	end

	if (qcQuestProviderComments ~= nil) then
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine(COLOUR_HUNTER .. qcQuestProviderComments, nil, nil, nil, true)
	end

	GameTooltip:Show()

end
end

function RunSlashCmd(cmd)

local slash, rest = cmd:match("^(%S+)%s*(.-)$")

	for name, func in pairs(SlashCmdList) do
		local i, slashCmd = 1
		repeat
		slashCmd, i = _G["SLASH_"..name..i], i + 1
			if slashCmd == slash then
				return true, func(rest)
			end
		until not slashCmd
	end

local i = 1

	while _G["EMOTE" .. i .. "_TOKEN"] do
		local j, cn = 2, _G["EMOTE" .. i .. "_CMD1"]
		while cn do
			if cn == slash then
				return true, DoEmote(_G["EMOTE" .. i .. "_TOKEN"], rest)
			end
			j, cn = j+1, _G["EMOTE" .. i .. "_CMD" .. j]
		end
	i = i + 1
	end

end

function qcQuestClick(buttonnumber)

local qcQuestID = _G["qcMenuButton" .. buttonnumber .. "_QuestTag"]:GetText()
local qcQuestProviderID = _G["qcMenuButton" .. buttonnumber .. "_QuestProviderID"]:GetText()
local qcQuestProviderName = _G["qcMenuButton" .. buttonnumber .. "_QuestProviderName"]:GetText()
local qcQuestProviderZone = _G["qcMenuButton" .. buttonnumber .. "_QuestProviderZone"]:GetText()
local qcQuestProviderX = _G["qcMenuButton" .. buttonnumber .. "_QuestProviderX"]:GetText()
local qcQuestProviderY = _G["qcMenuButton" .. buttonnumber .. "_QuestProviderY"]:GetText()
local qcQuestProviderComments = _G["qcMenuButton" .. buttonnumber .. "_QuestProviderComments"]:GetText()

	if (IsLeftShiftKeyDown() == nil) then
		if IsAddOnLoaded('TomTom') then
			if (qcQuestProviderZone == nil) or (qcQuestProviderX == nil) or (qcQuestProviderY == nil) then
				return nil
			else
				if (qcQuestProviderName == nil) then
					qcQuestProviderName = "Quest Giver"
				end
				RunSlashCmd("/tway " .. qcQuestProviderZone .. " " .. qcQuestProviderX .. " " .. qcQuestProviderY .. " " .. qcQuestProviderName .. " in " .. qcQuestProviderZone)
				RunSlashCmd("/cway")
			end
		end
	else --[[ User wants to toggle if the quest is completed ]]--
		if (qcCompletedQuests[tonumber(qcQuestID)] == nil) then
			qcCompletedQuests[tonumber(qcQuestID)] = {}
			qcCompletedQuests[tonumber(qcQuestID)]["C"] = 1 --[[ Completed ]]--
		else
			if (qcCompletedQuests[tonumber(qcQuestID)]["C"] == nil) then
				qcCompletedQuests[tonumber(qcQuestID)]["C"] = 1 --[[ Completed ]]--
			else
				if (qcCompletedQuests[tonumber(qcQuestID)]["C"] == 1) then
					qcCompletedQuests[tonumber(qcQuestID)]["C"] = 0
				elseif (qcCompletedQuests[tonumber(qcQuestID)]["C"] == 0) then
					qcCompletedQuests[tonumber(qcQuestID)]["C"] = 1
				end
			end
		end
		qcUpdateMenu(nil, qcMenuSlider:GetValue())
	end

end

function qcCloseTooltip()

	GameTooltip:Hide()

end

local function qcVersionCascade()

local inGuild

	--[[ Initiate version cascade ]]--
	inGuild = IsInGuild()
	if (inGuild == 1) then
		SendAddonMessage(QCADDON_MSG_PREFIX, "VERSIONCASCADE:" .. QCADDON_VERSION, "GUILD")
	end

end

local function qcCheckSettings()

	if (qcSettings == nil) then
		qcSettings = {}
	end

	if (qcSettings["SORT"] == nil) then --[[ 1:Level, 2:Alpha, 3:Quest Giver ]]--
		qcSettings["SORT"] = 1
	end
	if (qcSettings["HIDEOPPFACTION"] == nil) then --[[ 1:Yes, 2:No ]]--
		qcSettings["HIDEOPPFACTION"] = 1
	end
	if (qcSettings["HIDEOTHERCLASSRACE"] == nil) then --[[ 1:Yes, 2:No ]]--
		qcSettings["HIDEOTHERCLASSRACE"] = 1
	end
	if (qcSettings["HIDECOMPLETED"] == nil) then --[[ 1:Yes, 2:No ]]--
		qcSettings["HIDECOMPLETED"] = 0
	end
	if (qcSettings["SHOWMAPICONS"] == nil) then --[[ 1:Yes, 2:No ]]--
		qcSettings["SHOWMAPICONS"] = 1
	end

end

local function qcApplySettings()

	
	_G["qcFactionCheckButtonText"]:SetText("Hide Opposing Forces Quests")
	if (qcSettings["HIDEOPPFACTION"] == 0) then
		_G["qcFactionCheckButton"]:SetChecked(false)
	else
		_G["qcFactionCheckButton"]:SetChecked(true)
	end

	_G["qcClassCheckButtonText"]:SetText("Hide Quests for Other Classes\\Races (WIP)")
	if (qcSettings["HIDEOTHERCLASSRACE"] == 0) then
		_G["qcClassCheckButton"]:SetChecked(false)
	else
		_G["qcClassCheckButton"]:SetChecked(true)
	end

	_G["qcCompletedCheckButtonText"]:SetText("Hide Completed Quests")
	if (qcSettings["HIDECOMPLETED"] == 0) then
		_G["qcCompletedCheckButton"]:SetChecked(false)
	else
		_G["qcCompletedCheckButton"]:SetChecked(true)
	end

end

local function qcUpdateCompletedQuest(qcQuestID)

	if (qcCompletedQuests[qcQuestID] == nil) then --[[ The quest isn't already marked as completed ]]--
		qcCompletedQuests[qcQuestID] = {}
		qcCompletedQuests[qcQuestID]["C"] = 1
	else --[[ The quest is already marked as completed ]]--
		--[[ Possible future update code ]]--
	end

end

local function qcEventHandler(self, event, ...)

	if (event == "QUEST_COMPLETE") then

		local qcQuestID = GetQuestID()
		if (qcQuestID ~= 0) then
			qcUpdateCompletedQuest(qcQuestID)
			qcUpdateMenu(nil, qcMenuSlider:GetValue())
		end

	elseif (event == "QUEST_DETAIL") then
		--TODO: Repeatbles? Single dialog quests?
		--qcBuildDynamicDB(false)
	elseif (event == "QUEST_ACCEPTED") then
		qcCollectData(true)
		qcUpdateMenu(nil, qcMenuSlider:GetValue())
	elseif (event == "UNIT_QUEST_LOG_CHANGED") then
		if (... == "player") then
			qcUpdateMenu(nil, qcMenuSlider:GetValue())
		end
	elseif (event == "QUEST_QUERY_COMPLETE") then
		qcQuestQueryCompleted()
		frameQuestCompletist:UnregisterEvent("QUEST_QUERY_COMPLETE")
	elseif (event == "PLAYER_ENTERING_WORLD") then
		qcZoneChangedNewArea()
		qcVersionCascade()
	elseif (event == "ZONE_CHANGED_NEW_AREA") then
		qcZoneChangedNewArea()
	elseif (event == "CHAT_MSG_ADDON") then
		qcRecievedAddonMessage(...)
	elseif (event == "ADDON_LOADED") then
		if (... == "QuestCompletist") then
			qcCheckSettings()
			qcApplySettings()
			qcCollectUpdate()
		end
	elseif (event == "WORLD_MAP_UPDATE") then
		qcRefreshPins(GetCurrentMapAreaID())
	end

end

function qcMapSetup()

local qcFrame = CreateFrame("Frame", "qcMapFrame", WorldMapDetailFrame) -- CreateFrame("frameType" [, "name" [, parent [, "template"]]])

	qcFrame:SetSize(WorldMapDetailFrame:GetWidth(), WorldMapDetailFrame:GetHeight()) -- SetSize(width, height)
	qcFrame:SetPoint("TOPLEFT", WorldMapDetailFrame, "TOPLEFT") -- SetPoint("point" [, relativeTo [, "relativePoint" [, xOffset [, yOffset]]]])

	--local qcFrameBackground = qcFrame:CreateTexture("qcMapFrameBackground", "BACKGROUND") 
	--qcFrameBackground:SetTexture(1, 1, 1, 0.25) 
	--qcFrameBackground:SetAllPoints()

	qcMap = qcFrame

end

function qcTooltipSetup()

local qcFrame = CreateFrame("GameTooltip", "qcMapTooltip", WorldMapDetailFrame, "GameTooltipTemplate")

	qcFrame:SetFrameStrata("TOOLTIP")
	qcMapTooltip = qcFrame

end

function qcShowPin(x, y, qcQuestType, qcQuestID, qcQuestName)

local qcPin = qcPreparePin(qcQuestType, qcQuestID, qcQuestName)

	qcPin:ClearAllPoints()
	qcPin:SetFrameLevel(WorldMapPOIFrame:GetFrameLevel()-1)
	qcPin:SetPoint("CENTER", WorldMapDetailFrame, "TOPLEFT", (x/100)*WorldMapDetailFrame:GetWidth(), (-y/100)*WorldMapDetailFrame:GetHeight())
	qcPin:Show()

end

function qcPreparePin(qcQuestType, qcQuestID, qcQuestName)

local qcNewPin

	if (#qcSparePins > 0) then
		qcNewPin = qcSparePins[1]
		table.remove(qcSparePins, 1)
		--print("Reusing pin: " .. tostring(qcNewPin))
	end

	if (not qcNewPin) then
		qcNewPin = CreateFrame("Frame", nil, WorldMapDetailFrame)
		qcNewPin.Texture = qcNewPin:CreateTexture()

		--[[ Tooltip Hooks ]]--
		qcNewPin:HookScript("OnEnter", function(self)
		qcMapTooltip:ClearLines()
		qcMapTooltip:SetOwner(self, "ANCHOR_RIGHT")
		qcMapTooltip:AddLine((self.QuestName or "<NAME ERROR>") .. " [" .. (self.QuestID or "ID_ERROR") .. "]")
		if (self.QuestID ~= nil) then qcMapTooltip:AddLine(qcQuestDBv2[self.QuestID][3][2] or "<NPC ERROR>") end
		qcMapTooltip:AddLine(COLOUR_MAGE .. "Please report errors to me on Curse.com")
		qcMapTooltip:Show()
		end)
		qcNewPin:HookScript("OnLeave", function(self)
		qcMapTooltip:Hide()
		end)

		if (qcQuestType == 3) then --[[ Daily ]]--
			qcNewPin.Texture:SetTexture("Interface\\MINIMAP\\ObjectIcons.blp")
			qcNewPin.Texture:SetTexCoord(0.375, 0.500, 0.250, 0.500);
			qcNewPin.Texture:SetAllPoints()
			qcNewPin:SetWidth(16)
			qcNewPin:SetHeight(16)
			qcNewPin:EnableMouse(true)
		else
			qcNewPin.Texture:SetTexture("Interface\\MINIMAP\\ObjectIcons.blp")
			qcNewPin.Texture:SetTexCoord(0.125, 0.250, 0.250, 0.500);
			qcNewPin.Texture:SetAllPoints()
			qcNewPin:SetWidth(16)
			qcNewPin:SetHeight(16)
			qcNewPin:EnableMouse(true)
		end
		table.insert(qcPins, qcNewPin)
	else
		if (qcQuestType == 3) then --[[ Daily ]]--
			qcNewPin.Texture:SetTexture("Interface\\MINIMAP\\ObjectIcons.blp")
			qcNewPin.Texture:SetTexCoord(0.375, 0.500, 0.250, 0.500);
			qcNewPin.Texture:SetAllPoints()
			qcNewPin:SetWidth(16)
			qcNewPin:SetHeight(16)
			qcNewPin:EnableMouse(true)
		else
			qcNewPin.Texture:SetTexture("Interface\\MINIMAP\\ObjectIcons.blp")
			qcNewPin.Texture:SetTexCoord(0.125, 0.250, 0.250, 0.500);
			qcNewPin.Texture:SetAllPoints()
			qcNewPin:SetWidth(16)
			qcNewPin:SetHeight(16)
			qcNewPin:EnableMouse(true)
		end
		qcNewPin.QuestID = qcQuestID
		qcNewPin.QuestName = qcQuestName
		table.insert(qcPins, qcNewPin)
	end

	return qcNewPin

end

function qcHidePin(qcPinID, qcEntry)

	if (qcPinID) then
		qcEntry:Hide()
		table.insert(qcSparePins, qcEntry)
		table.remove(qcPins, qcPinID)
	end

end

function qcHideAllPins()

	for qcIndex = #qcPins, 1, -1 do
		qcHidePin(qcIndex, qcPins[qcIndex])
	end

end

function qcRefreshPins(qcMapID)

	qcHideAllPins()
	wipe(qcMapQuests)

	if (qcSettings["SHOWMAPICONS"] == 0) then
		return
	end

	--[[ Pull all quests related to this map from the database ]]--
	for qcIndex, qcEntry in pairs(qcQuestDBv2) do
		if (qcEntry[3][6] == qcMapID) then
			if (qcEntry[3][8] == 0) then
				table.insert(qcMapQuests, qcEntry)
			end
		end
	end

	--[[ Completed filtering - regardless of user filtering options ]]--
	for qcMapQuestsIndex = #qcMapQuests, 1, -1 do
		if (qcCompletedQuests[qcMapQuests[qcMapQuestsIndex][1][1]] ~= nil) then
			if (qcCompletedQuests[qcMapQuests[qcMapQuestsIndex][1][1]]["C"] == 1) then
				--print("Removing completed quest")
				table.remove(qcMapQuests, qcMapQuestsIndex)
			end
		end
	end

	--[[ Faction filtering - regardless of user filtering options ]]--
	do
		local qcCurrentPlayerFaction, _S = UnitFactionGroup("player")
		local qcCurrentFaction = qcFactionBits[string.upper(qcCurrentPlayerFaction)]
		for qcMapQuestsIndex = #qcMapQuests, 1, -1 do
			if (bit.band(qcMapQuests[qcMapQuestsIndex][4][1], qcCurrentFaction) == 0) then
				--print("Removing opposing faction quest: " .. qcMapQuests[qcMapQuestsIndex][1][2])
				table.remove(qcMapQuests, qcMapQuestsIndex)
			end
		end
	end

	--[[ Class\Race filtering - regardless of user filtering options ]]--
	do
		local _S, qcCurrentPlayerClass = UnitClass("player")
		local qcCurrentClass = qcClassBits[string.upper(qcCurrentPlayerClass)]
		local _S, qcCurrentPlayerRace = UnitRace("player")
		local qcCurrentRace = qcRaceBits[string.upper(qcCurrentPlayerRace)]
		for qcMapQuestsIndex = #qcMapQuests, 1, -1 do
			if (bit.band(qcMapQuests[qcMapQuestsIndex][4][3], qcCurrentClass) == 0) then
				--print("Removing other class quest.")
				table.remove(qcMapQuests, qcMapQuestsIndex)
			elseif (bit.band(qcMapQuests[qcMapQuestsIndex][4][2], qcCurrentRace) == 0) then
				--print("Removing other races quest.")
				table.remove(qcMapQuests, qcMapQuestsIndex)
			end
		end
	end

	--[[ Add pins to the map ]]--
	do
		for qcMapQuestsIndex = #qcMapQuests, 1, -1 do
			--print("Creating pin to show incomplete quest: " .. qcMapQuests[qcMapQuestsIndex][1][2])
			qcShowPin(qcMapQuests[qcMapQuestsIndex][3][4], qcMapQuests[qcMapQuestsIndex][3][5], qcMapQuests[qcMapQuestsIndex][1][5], qcMapQuests[qcMapQuestsIndex][1][1], qcMapQuests[qcMapQuestsIndex][1][2])
		end
	end

end

function frameQuestCompletist_OnLoad(self)

	--[[ Correct the portrait icon ]]--
	SetPortraitToTexture(self.qcPortrait, "Interface\\ICONS\\TRADE_ARCHAEOLOGY_DRAENEI_TOME")
	self.qcTitleText:SetText("Quest Completist v" .. QCADDON_VERSION)

	--[[ Register the frame so it can be dragged ]]--
	self:RegisterForDrag("LeftButton")

	--[[ Register for events ]]--
	self:RegisterEvent("QUEST_COMPLETE")
	self:RegisterEvent("QUEST_DETAIL")
	self:RegisterEvent("QUEST_ACCEPTED")
	self:RegisterEvent("UNIT_QUEST_LOG_CHANGED")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
	self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	self:RegisterEvent("CHAT_MSG_ADDON")
	self:RegisterEvent("ADDON_LOADED")
	self:RegisterEvent("WORLD_MAP_UPDATE")

	--[[ Send events to the event handler ]]--
	self:SetScript("OnEvent", qcEventHandler)

	--[[ Set up the map frame and tooltip ]]--
	--qcMapSetup()
	qcTooltipSetup()

end