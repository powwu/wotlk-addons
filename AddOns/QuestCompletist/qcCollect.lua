--[[

	Quest Completist - qcCollect.lua
	Written by: Alistair Maxwell

--]]

local function qcGetNPCData()

local qcNPCGUID
local qcNPCID
local qcNPCName

	qcNPCGUID = UnitGUID("target")
	qcNPCName = UnitName("target")

	if (qcNPCGUID == nil) then
		if (qcNPCName == nil) or (qcNPCName == "") then
			return nil, nil, nil
		else
			return nil, nil, qcNPCName
		end
	else
		qcNPCID = tonumber(strsub(qcNPCGUID, 7, 10), 16)
		if (qcNPCID == nil) or (qcNPCID == "") then
			if (qcNPCName == nil) or (qcNPCName == "") then
				return nil, nil, nil
			else
				return nil, nil, qcNPCName
			end
		end
		if (qcNPCName == nil) or (qcNPCName == "") then
			return nil, nil, nil
		end
	end

	return qcNPCGUID, qcNPCID, qcNPCName

end

local function qcGetQuestCategory(qcQuestID)

local _S
local qcIsHeader
local qcHeader
local qcQuestIDIndex = GetQuestLogIndexByID(qcQuestID)

	if (qcQuestIDIndex == 0) then return nil end

	while (qcQuestIDIndex >= 1) do
		qcHeader, _S, _S, _S, qcIsHeader, _S, _S, _S, _S = GetQuestLogTitle(qcQuestIDIndex)
		if (qcIsHeader == 1) then return qcHeader end
		qcQuestIDIndex = qcQuestIDIndex - 1
	end

	return nil

end

local function qcRound(num, idp)

	return tonumber(string.format("%." .. (idp or 0) .. "f", num))

end

function qcCollectData(qcAccepted)
if (GetLocale() == "enUS") or (GetLocale() == "enGB") then
if (qcAccepted == true) then

local qcQuestID = 0
local qcCategory
local qcZoneID
local qcQuestType
local qcQuestLevel = 0
local qcQuestName
local qcFaction
local qcClass
local qcRace
local qcNPCID
local qcNPCName
local qcNPCZone
local qcNPCX
local qcNPCY
local qcMapID
local qcMapLevel
local qcNotes = nil

	qcQuestID = GetQuestID()
	if (qcQuestID == 0) then return nil end
	qcCategory = qcGetQuestCategory(qcQuestID)
	for qcIndex, qcEntry in ipairs(qcQuestCategories) do
		if (qcEntry[2] == qcCategory) then
			qcZoneID = qcEntry[1]
			break
		else
			if (qcIndex == #qcQuestCategories) then
				qcZoneID = 99999
			end
		end
	end

	if (QuestIsDaily() == 1) then
		qcQuestType = 3
	elseif (QuestIsWeekly() == 1) then
		qcQuestType = 5
	else
		local qcIsTrivial
		local qcIsDaily
		local qcIsRepeatable
		qcIsTrivial, qcIsDaily, qcIsRepeatable = GetAvailableQuestInfo(GetQuestLogIndexByID(qcQuestID))
		if (qcIsRepeatable == nil) then
			qcQuestType = 1
		elseif (qcIsRepeatable == 1) then
			qcQuestType = 2
		end
	end

	do
		local _S
		local qcTitle
		local qcLevel
		local qcTag
		qcTitle, qcLevel, qcTag, _S, _S, _S, _S, _S, _S = GetQuestLogTitle(GetQuestLogIndexByID(qcQuestID))
		qcQuestLevel = qcLevel
		if (qcTag == nil) then
			qcQuestName = qcTitle
		else
			qcQuestName = (qcTitle .. " [" .. qcTag .. "]")
		end
	end

	do
		local qcEFaction, _S = UnitFactionGroup("player")
		qcFaction = qcFactionBits[string.upper(qcEFaction)]
	end

	do
		local _S, qcEClass = UnitClass("player")
		qcClass = qcClassBits[string.upper(qcEClass)]
	end

	do
		local _S, qcERace = UnitRace("player")
		qcRace = qcRaceBits[string.upper(qcERace)]
	end

	do
		local _S
		local qcX
		local qcY
		_S, qcNPCID, qcNPCName = qcGetNPCData()
		qcX, qcY = GetPlayerMapPosition("player")
		qcNPCZone = GetRealZoneText()
		qcNPCX = qcRound(qcX*100, 4)
		qcNPCY = qcRound(qcY*100, 4)
	end

	do
		SetMapToCurrentZone()
		qcMapID = GetCurrentMapAreaID()
		qcMapLevel = GetCurrentMapDungeonLevel()
	end

	if (qcDynamicQuestDBv2[qcQuestID] == nil) then
		qcDynamicQuestDBv2[qcQuestID] = {}
		qcDynamicQuestDBv2[qcQuestID][1] = {}
		qcDynamicQuestDBv2[qcQuestID][2] = {}
		qcDynamicQuestDBv2[qcQuestID][3] = {}
		qcDynamicQuestDBv2[qcQuestID][4] = {}
		qcDynamicQuestDBv2[qcQuestID][5] = {}
		qcDynamicQuestDBv2[qcQuestID][1][1] = qcQuestID
		qcDynamicQuestDBv2[qcQuestID][1][2] = qcQuestName
		qcDynamicQuestDBv2[qcQuestID][1][3] = qcQuestLevel
		qcDynamicQuestDBv2[qcQuestID][1][4] = qcCategory
		qcDynamicQuestDBv2[qcQuestID][1][5] = qcQuestType
		qcDynamicQuestDBv2[qcQuestID][2][1] = qcZoneID
		qcDynamicQuestDBv2[qcQuestID][3][1] = qcNPCID
		qcDynamicQuestDBv2[qcQuestID][3][2] = qcNPCName
		qcDynamicQuestDBv2[qcQuestID][3][3] = qcNPCZone
		qcDynamicQuestDBv2[qcQuestID][3][4] = qcNPCX
		qcDynamicQuestDBv2[qcQuestID][3][5] = qcNPCY
		qcDynamicQuestDBv2[qcQuestID][3][6] = qcMapID
		qcDynamicQuestDBv2[qcQuestID][3][7] = qcMapLevel
		qcDynamicQuestDBv2[qcQuestID][3][8] = 0
		qcDynamicQuestDBv2[qcQuestID][4][1] = qcFaction
		qcDynamicQuestDBv2[qcQuestID][4][2] = qcRace
		qcDynamicQuestDBv2[qcQuestID][4][3] = qcClass
		qcDynamicQuestDBv2[qcQuestID][5][1] = qcNotes
	else
		if (bit.band(qcDynamicQuestDBv2[qcQuestID][4][1], qcFaction) == 0) then
			qcDynamicQuestDBv2[qcQuestID][4][1] = tonumber(qcDynamicQuestDBv2[qcQuestID][4][1] + qcFaction)
		end
		if (bit.band(qcDynamicQuestDBv2[qcQuestID][4][2], qcRace) == 0) then
			qcDynamicQuestDBv2[qcQuestID][4][2] = tonumber(qcDynamicQuestDBv2[qcQuestID][4][2] + qcRace)
		end
		if (bit.band(qcDynamicQuestDBv2[qcQuestID][4][3], qcClass) == 0) then
			qcDynamicQuestDBv2[qcQuestID][4][3] = tonumber(qcDynamicQuestDBv2[qcQuestID][4][3] + qcClass)
		end
	end

end
end
end