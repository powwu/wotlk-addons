MageAlert = {
	Sound = true,
	Flash = true,
	Fofsound = true
};

local _,class = UnitClass('player')
if class ~= 'MAGE' then return end

local Sealinc = 0
local Red = 0
local falpha = 0
local falphainc = 0;
local maxalpha = 0.3;

local BFname = GetSpellInfo(57761)
local BFICON = "OFF" 
local MBname = GetSpellInfo(44401)
local MBICON = "OFF"
local HSname = GetSpellInfo(48108)
local HSICON = "OFF"
local FFname = GetSpellInfo(44544)
local FFICON = "OFF"

local AB = GetSpellInfo(42897)
local ABCount = nil

local GetFramesRegisteredForEvent = GetFramesRegisteredForEvent
local UnitDebuff = UnitDebuff

local function map(frame, ...)
   if frame then
      local func = frame:GetScript('OnEvent')
      if func then func(frame, 'UNIT_COMBO_POINTS', 'player') end
      return map(...)
   end
end

local frame = CreateFrame('frame')
frame:RegisterEvent('UNIT_AURA')
frame:SetScript('OnEvent', function(self, event, unit)
   if unit == 'player' then
      local _,_,_,count = UnitDebuff('player', AB)
      if count ~= ABCount then
         ABCount = count
         return map(GetFramesRegisteredForEvent('UNIT_COMBO_POINTS'))
      end
   end
end)

local UnitExists = UnitExists
local oldGetComboPoints = GetComboPoints
GetComboPoints = function(...)
   return UnitExists('target') and ABCount or oldGetComboPoints(...)
end



function Checker(self, elapsed)
  if (Red > 0) then	
	if falphainc == 0 then
		falpha = falpha + elapsed
		if falpha>maxalpha then
			falpha = maxalpha
			falphainc = 2
		end
	end	
	if falphainc >= 2 then
		falphainc = falphainc + elapsed
		if falphainc > 2.3 then
			falphainc = 1
		end
	end	
	if falphainc == 1 then
		falpha = falpha - elapsed
		if falpha<0 then
			falpha = 0
			Red = 0
			falphainc = 0
			Flash_Red:Hide( )
			Flash_Orange:Hide( )
			Flash_Purple:Hide( )
			Flash_Blue:Hide( )
		end
	end
	Flash_Red:SetAlpha( falpha )
	Flash_Orange:SetAlpha( falpha )
	Flash_Purple:SetAlpha( falpha )
	Flash_Blue:SetAlpha( falpha )
  end
end


function Buah_Start()
	DEFAULT_CHAT_FRAME:AddMessage("|cff99cc01Mage|cffFF0000Alert|cffffffff Version 1.2 Addon loaded!")
	DEFAULT_CHAT_FRAME:AddMessage("/magealert for help")
	SLASH_MAGEALARM1 = "/magealert"
	SlashCmdList["MAGEALARM"] = Splashcommand
	this:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

end

function Splashcommand(msg)

	if (msg=="sound on") then
		MageAlert.Sound = true;
		DEFAULT_CHAT_FRAME:AddMessage("|cff99cc01Mage|cffFF0000Alert|cffffffff Addon! Config set to: Sound = |cff33ff99 on")
	end

	if (msg=="sound off") then
		MageAlert.Sound = false;
		DEFAULT_CHAT_FRAME:AddMessage("|cff99cc01Mage|cffFF0000Alert|cffffffff Addon! Config set to: Sound = |cffffff78 off")
	end
	if (msg=="flash on") then
		MageAlert.Flash = true;
		DEFAULT_CHAT_FRAME:AddMessage("|cff99cc01Mage|cffFF0000Alert|cffffffff Addon! Config set to: Flash = |cff33ff99 on")
	end

	if (msg=="flash off") then
		MageAlert.Flash = false;
		DEFAULT_CHAT_FRAME:AddMessage("|cff99cc01Mage|cffFF0000Alert|cffffffff Addon! Config set to: Flash = |cffffff78 off")
	end

	if (msg=="fofsound on") then
		MageAlert.Fofsound = true;
		DEFAULT_CHAT_FRAME:AddMessage("|cff99cc01Mage|cffFF0000Alert|cffffffff Addon! Config set to: FoFSound = |cff33ff99 on")
	end
	
	if (msg=="fofsound off") then
		MageAlert.Fofsound = false;
		DEFAULT_CHAT_FRAME:AddMessage("|cff99cc01Mage|cffFF0000Alert|cffffffff Addon! Config set to: FoFSound = |cffffff78 off")
	end

	if (msg=="") then
			DEFAULT_CHAT_FRAME:AddMessage("/magealert sound on/off - enable/disable the sound")
			DEFAULT_CHAT_FRAME:AddMessage("/magealert flash on/off - enable/disable the flash")
			DEFAULT_CHAT_FRAME:AddMessage("/magealert fofsound on/off - enable/disable the Fingers of Frost sound")
	end
	if (msg=="ver") then
			DEFAULT_CHAT_FRAME:AddMessage("|cff99cc01Mage|cffFF0000Alert|cffffffff by Yheen")
			DEFAULT_CHAT_FRAME:AddMessage("Version 1.2 update by Nekrotik on Shandris")
			DEFAULT_CHAT_FRAME:AddMessage("You can always find the latest version on curse.com")
	end
		if (msg=="version") then
			DEFAULT_CHAT_FRAME:AddMessage("|cff99cc01Mage|cffFF0000Alert|cffffffff by Yheen")
			DEFAULT_CHAT_FRAME:AddMessage("Version 1.2 update by Nekrotik on Shandris")
			DEFAULT_CHAT_FRAME:AddMessage("You can always find the latest version on curse.com")
	end

end



function MageAlert_OnEvent(self,event, ...)
		--local timestamp, eventType, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags = select(1, ...) 
		--local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11 = select(9, ...) 
		

	if (event == "COMBAT_LOG_EVENT_UNFILTERED") then
		if (arg3 == UnitGUID("player")) then
			name, rank, icon, count, debuffType, duration, expirationTime, caster, isStealable = UnitBuff("player", BFname)
			if not (name == nil) then
					if (BFICON == "OFF") then
						if (MageAlert.Sound == true) then
						PlaySoundFile("Interface\\AddOns\\MageAlert\\Sounds\\brainfreeze.mp3")
						end
						if (MageAlert.Flash == true) then
						Flash_Blue:Show()
  						Red = 1
						end
					BFICON = "ON"
				end
			end
			if (name == nil) then
				BFICON = "OFF"
			end
			
			name, rank, icon, count, debuffType, duration, expirationTime, caster, isStealable = UnitBuff("player", MBname)
			if not (name == nil) then
					if (MBICON == "OFF") then
						if (MageAlert.Sound == true) then
						PlaySoundFile("Interface\\AddOns\\MageAlert\\Sounds\\missilebarrage.mp3")
						end
						if (MageAlert.Flash == true) then
						Flash_Orange:Show()
  						Red = 1
						end
					MBICON = "ON"
				end
			end
			if (name == nil) then
				MBICON = "OFF"
			end
			
			name, rank, icon, count, debuffType, duration, expirationTime, caster, isStealable = UnitBuff("player", HSname)
			if not (name == nil) then
					if (HSICON == "OFF") then
						if (MageAlert.Sound == true) then
						PlaySoundFile("Interface\\AddOns\\MageAlert\\Sounds\\hotstreak.mp3")
						end
						if (MageAlert.Flash == true) then
						Flash_Red:Show()
  						Red = 1
						end
					HSICON = "ON"
				end
			end
			if (name == nil) then
				HSICON = "OFF"
			end

			name, rank, icon, count, debuffType, duration, expirationTime, caster, isStealable = UnitBuff("player", FFname)
			if not (name == nil) then
					if (FFICON == "OFF") then
						if (MageAlert.Sound == true) then
						PlaySoundFile("Interface\\AddOns\\MageAlert\\Sounds\\fingeroffrost.mp3")
						end
					FFICON = "ON"
				end
			end
			if (name == nil) then
				FFICON = "OFF"
			end


				--if (arg9 == FoF) then
					--if (MageAlert.Sound == true) and (MageAlert.Fofsound == true) then
						--PlaySoundFile("Interface\\AddOns\\MageAlert\\Sounds\\fingeroffrost.mp3")
					--end
					--if (MageAlert.Flash == true) then
						--Flash_Purple:Show()
  						--Red = 1
  					--end
				--end
			end
		end
	end
