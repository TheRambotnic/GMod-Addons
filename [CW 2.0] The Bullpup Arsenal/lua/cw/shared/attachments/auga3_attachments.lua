AddCSLuaFile()

--[[=========================================
	White Skin
===========================================]]

local att = {}
att.name = "auga3_white"
att.displayName = "White Skin"
att.displayNameShort = "White"
att.isBG = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/auga3_white")
	att.description = {
		[1] = {t = "Changes the weapon's body to White.", c = CustomizableWeaponry.textColors.COSMETIC}
	}
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
	Tan Skin
===========================================]]

local att = {}
att.name = "auga3_tan"
att.displayName = "Tan Skin"
att.displayNameShort = "Tan"
att.isBG = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/auga3_tan")
	att.description = {
		[1] = {t = "Changes the weapon's body to Tan.", c = CustomizableWeaponry.textColors.COSMETIC}
	}
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
	Green Skin
===========================================]]

local att = {}
att.name = "auga3_green"
att.displayName = "Green Skin"
att.displayNameShort = "Green"
att.isBG = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/auga3_green")
	att.description = {
		[1] = {t = "Changes the weapon's body to Green.", c = CustomizableWeaponry.textColors.COSMETIC}
	}
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
	Futuristic.O! (Sci-Fi Skin)
===========================================]]

local att = {}
att.name = "auga3_scifi"
att.displayName = "Futuristic.O!"
att.displayNameShort = "Sci-Fi"
att.isBG = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/auga3_scifi")
	att.description = {
		[1] = {t = "Changes the weapon's body to a Futuristic look.", c = CustomizableWeaponry.textColors.COSMETIC}
	}
end

function att:attachFunc()
	if SERVER then
		return
	end

	if self.CW_VM then
		self.CW_VM:SetSkin(4)
	end
	if self.WMEnt then
		self.WMEnt:SetSkin(4)
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
	Light Suppressor
===========================================]]

local att = {}
att.name = "auga3_silencer"
att.displayName = "Light Suppressor"
att.displayNameShort = "Silencer"
att.isSuppressor = true
att.isBG = true

att.statModifiers = {
	RecoilMult = -0.05,
	OverallMouseSensMult = -0.05
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/auga3_silencer")
	att.description = {
		[1] = {t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE},
		[2] = {t = "No damage loss.", c = CustomizableWeaponry.textColors.VPOSITIVE}
	}
end

function att:attachFunc()
	self.dt.Suppressed = true
	self:setBodygroup(self.SilencerBGs.main, self.SilencerBGs.sil)
end

function att:detachFunc()
	self.dt.Suppressed = false
	self:setBodygroup(self.SilencerBGs.main, self.SilencerBGs.none)
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	Extended Magazine
===========================================]]

local att = {}
att.name = "auga3_extmag"
att.displayName = "Extended Magazine"
att.displayNameShort = "Ext. Mag"
att.isBG = true
att.SpeedDec = 2

att.statModifiers = {
	ReloadSpeedMult = -0.1,
	OverallMouseSensMult = -0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/auga3_extmag")
	att.description = {
		[1] = {t = "Increases the magazine's size to 42 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
	}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.extmag)
	self:unloadWeapon()
	self.Primary.ClipSize = 42
	self.Primary.ClipSize_Orig = 42
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	Heavy Barrel
===========================================]]

local att = {}
att.name = "auga3_heavybarrel"
att.displayName = "Heavy Barrel"
att.displayNameShort = "Heavy"
att.isBG = true

att.statModifiers = {
	DamageMult = 0.1,
	AimSpreadMult = -0.1,
	RecoilMult = 0.1,
	OverallMouseSensMult = -0.05
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/auga3_heavybarrel")
	att.description = {
		[1] = {t = "A heavy barrel for long range engagements.", c = CustomizableWeaponry.textColors.REGULAR}
	}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.heavy)
	self:updateSoundTo("CW_AUGA3_HEAVY_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
	self:updateSoundTo("CW_AUGA3_HEAVY_FIRE_SUPPRESSED", CustomizableWeaponry.sounds.SUPPRESSED)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
	self:restoreSound()
end

CustomizableWeaponry:registerAttachment(att)

--[[=========================================
	Bolt Catch Reloading Method
===========================================]]

local att = {}
att.name = "auga3_catch"
att.displayName = "Bolt Catch"
att.displayNameShort = "Catch"

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/auga3_catch")
	att.description = {
		[1] = {t = "Perform the Bolt Catch method during an empty reload.", c = CustomizableWeaponry.textColors.COSMETIC}
	}
end

function att:attachFunc()
	self.Animations = {
		fire = {"shoot1", "shoot2", "shoot3"},
		reload = "reload",
		reload_empty = "reload_boltclatch",
		idle = "idle",
		draw = "draw"
	}
	self:sendWeaponAnim("idle")
end

function att:detachFunc()
	self.Animations = {
		fire = {"shoot1", "shoot2", "shoot3"},
		reload = "reload",
		reload_empty = "reload_empty",
		idle = "idle",
		draw = "draw"
	}
	self:sendWeaponAnim("idle")
end

CustomizableWeaponry:registerAttachment(att)