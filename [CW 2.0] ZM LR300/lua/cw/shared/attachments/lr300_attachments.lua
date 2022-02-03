AddCSLuaFile()

--[[=========================================
	Tan Skin
===========================================]]

local att = {}
att.name = "lr300_tan"
att.displayName = "Tan Handle"
att.displayNameShort = "Tan"
att.isBG = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/lr300_tan")
	att.description = {[1] = {t = "Changes the polymer's color to Tan.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if SERVER then
		return
	end

	if self.CW_VM then
		self.CW_VM:SetSkin(1)
	end
	if self.WMEnt then
		self.WMEnt:SetSkin(1)
	end
end

function att:detachFunc()
	if SERVER then
		return
	end

	if self.CW_VM then
		self.CW_VM:SetSkin(0)
	end
	if self.WMEnt then
		self.WMEnt:SetSkin(0)
	end
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	Green Skin
===========================================]]

local att = {}
att.name = "lr300_green"
att.displayName = "Green Handle"
att.displayNameShort = "Green"
att.isBG = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/lr300_green")
	att.description = {[1] = {t = "Changes the polymer's color to Green.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if SERVER then
		return
	end

	if self.CW_VM then
		self.CW_VM:SetSkin(2)
	end
	if self.WMEnt then
		self.WMEnt:SetSkin(2)
	end
end

function att:detachFunc()
	if SERVER then
		return
	end

	if self.CW_VM then
		self.CW_VM:SetSkin(0)
	end
	if self.WMEnt then
		self.WMEnt:SetSkin(0)
	end
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	Marpshyr Skin (Sci-Fi)
===========================================]]

local att = {}
att.name = "lr300_scifi"
att.displayName = "Marpshyr"
att.displayNameShort = "Marpshyr"
att.isBG = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/lr300_scifi")
	att.description = {[1] = {t = "Changes the gun to a futuristic Red, Orange & Black look.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if SERVER then
		return
	end

	if self.CW_VM then
		self.CW_VM:SetSkin(3)
	end
	if self.WMEnt then
		self.WMEnt:SetSkin(3)
	end
end

function att:detachFunc()
	if SERVER then
		return
	end

	if self.CW_VM then
		self.CW_VM:SetSkin(0)
	end
	if self.WMEnt then
		self.WMEnt:SetSkin(0)
	end
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	Long Barrel
===========================================]]

local att = {}
att.name = "lr300_longbarrel"
att.displayName = "Long Barrel"
att.displayNameShort = "Long"
att.isBG = true

att.statModifiers = {DamageMult = 0.1,
AimSpreadMult = -0.1,
RecoilMult = 0.1,
OverallMouseSensMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/lr300_longbarrel")
	att.description = {[1] = {t = "A barrel for long range engagements.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.long)
	self:updateSoundTo("CW_LR300_LONGBARREL_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
	self:updateSoundTo("CW_LR300_LONGBARREL_FIRE_SUPPRESSED", CustomizableWeaponry.sounds.SUPPRESSED)
	if self.WMEnt then
		self.WMEnt:SetBodygroup(2,1)
	end
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:restoreSound()
	if self.WMEnt then
		self.WMEnt:SetBodygroup(2,0)
	end
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	EXT RIS Receiver
===========================================]]

local att = {}
att.name = "lr300_longreceiver"
att.displayName = "Long Barrel RIS"
att.displayNameShort = "EXT RIS"
att.isBG = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15longris")
	att.description = {[1] = {t = "A rail interface for your weapon.", c = CustomizableWeaponry.textColors.REGULAR},
	[2] = {t = "Allows additional attachments.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.ReceiverBGs.main, self.ReceiverBGs.m16)
	if self.WMEnt then
		self.WMEnt:SetBodygroup(3,1)
	end
end

function att:detachFunc()
	self:setBodygroup(self.ReceiverBGs.main, self.ReceiverBGs.regular)
	if self.WMEnt then
		self.WMEnt:SetBodygroup(3,0)
	end
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	PMAG Gen M3 36-Rounds
===========================================]]

local att = {}
att.name = "lr300_pmag"
att.displayName = "PMAG Gen M3"
att.displayNameShort = "PMAG"

att.statModifiers = {ReloadSpeedMult = -0.10,
OverallMouseSensMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/pmag")
	att.description = {[1] = {t = "Increases mag size to 36 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.pmag)
	self:unloadWeapon()
	self.Primary.ClipSize = 36
	self.Primary.ClipSize_Orig = 36
	if self.WMEnt then
		self.WMEnt:SetBodygroup(4,1)
	end
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	if self.WMEnt then
		self.WMEnt:SetBodygroup(4,0)
	end
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	Quad-Stack 60 Round Magazine (with "WMEnt" function)
===========================================]]

local att = {}
att.name = "lr300_quadstack60"
att.displayName = "Quad-Stack Magazine"
att.displayNameShort = "Quad"
att.isBG = true

att.statModifiers = {ReloadSpeedMult = -0.15,
OverallMouseSensMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar1560rndmag")
	att.description = {[1] = {t = "Increases mag size to 60 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.round60)
	self:unloadWeapon()
	self.Primary.ClipSize = 60
	self.Primary.ClipSize_Orig = 60
	if self.WMEnt then
		self.WMEnt:SetBodygroup(4,2)
	end
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	if self.WMEnt then
		self.WMEnt:SetBodygroup(4,0)
	end
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	Assault Stock (with "WMEnt" function)
===========================================]]

local att = {}
att.name = "lr300_assault"
att.displayName = "Assault Stock"
att.displayNameShort = "Assault"
att.isBG = true

att.statModifiers = {RecoilMult = -0.15,
DrawSpeedMult = -0.1,
OverallMouseSensMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/assault_stock")
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.assault)
	if self.WMEnt then
		self.WMEnt:SetBodygroup(5,1)
	end
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	if self.WMEnt then
		self.WMEnt:SetBodygroup(5,0)
	end
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	Deployable Bipod
===========================================]]
-- Stolen from Knife Kitty's HK416 (Sorry buddy! :P)

local att = {}
att.name = "lr300_bipod" //md_hk416_bipod
att.displayName = "Deployable Bipod"
att.displayNameShort = "Bipod"

att.statModifiers = {OverallMouseSensMult = -0.1,
DrawSpeedMult = -0.1}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/lr300_bipod")
	att.description = {
		[1] = {t = "When deployed:", c = CustomizableWeaponry.textColors.REGULAR},
		[2] = {t = "Decreases recoil by 70%", c = CustomizableWeaponry.textColors.POSITIVE},
		[3] = {t = "Greatly increases hip fire accuracy", c = CustomizableWeaponry.textColors.POSITIVE}
	}
end

function att:attachFunc()
	self.BipodInstalled = true
	self.BipodWasDeployed = false
end

function att:detachFunc()
	self.BipodInstalled = false
end

function att:elementRender()
	local is = self.dt.BipodDeployed	
	local was = self.BipodWasDeployed
	
	if is != was then
		if is then
			self.AttachmentModelsVM.lr300_bipod.ent:SetBodygroup(1,1)
			self:EmitSound("CW_LR300Bipod_Down")
		else
			self.AttachmentModelsVM.lr300_bipod.ent:SetBodygroup(1,0)
			self:EmitSound("CW_LR300Bipod_Up")
		end	
	end
	
	self.BipodWasDeployed = is
end

CustomizableWeaponry:registerAttachment(att)

CustomizableWeaponry:addReloadSound("CW_LR300Bipod_Down", {"weapons/cw_tr09_lr300/harrisbipod_down1.wav", "weapons/cw_tr09_lr300/harrisbipod_down2.wav"})
CustomizableWeaponry:addReloadSound("CW_LR300Bipod_Up", {"weapons/cw_tr09_lr300/harrisbipod_up1.wav", "weapons/cw_tr09_lr300/harrisbipod_up2.wav"})

--[[=========================================
	Green Tip Rounds
===========================================]]

local att = {}
att.name = "am_greentip"
att.displayName = "Green Tip Rounds"
att.displayNameShort = "Green Tip"

att.statModifiers = {DamageMult = 0.25,
RecoilMult = 0.30}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/green_tip")
	att.description = {[1] = {t = "An excellent choice for armor penetration.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.Ammo = "5.56x45MM Green Tip"
end

function att:detachFunc()
	self:unloadWeapon()
	self.Primary.Ammo = "5.56x45MM"
end

CustomizableWeaponry:registerAttachment(att)