AddCSLuaFile()

--[[-----------------------------------------
	Tan Skin
-------------------------------------------]]

local att = {}
att.name = "mp9_tan"
att.displayName = "Tan"
att.displayNameShort = "Tan"
att.isBG = true

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mp9_tan")
	att.description = {
		[1] = {t = "Changes the weapon's body to Tan.", c = CustomizableWeaponry.textColors.COSMETIC}
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

--[[-----------------------------------------
	Chromosynth Skin
-------------------------------------------]]

local att = {}
att.name = "mp9_chromosynth"
att.displayName = "Chromosynth"
att.displayNameShort = "Sci-Fi"
att.isBG = true

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mp9_chromosynth")
	att.description = {
		[1] = {t = "Changes the gun to a futuristic Gray look with glowy spots. ", c = CustomizableWeaponry.textColors.COSMETIC},
		[2] = {t = "(Color changes depending on Physics Gun color.)", c = CustomizableWeaponry.textColors.REGULAR}
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

--[[-----------------------------------------
	Folding Stock
-------------------------------------------]]

local att = {}
att.name = "mp9_stock"
att.displayName = "Folding Stock"
att.displayNameShort = "Stock"
att.isBG = true

att.statModifiers = {RecoilMult = -0.15,
DrawSpeedMult = -0.1,
OverallMouseSensMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mp9_stock")
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.fold)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)