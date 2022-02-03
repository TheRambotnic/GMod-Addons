AddCSLuaFile()

--[[==========================================
	Folding Stock
============================================]]

local att = {}
att.name = "skorp_stock"
att.displayName = "Folding Stock"
att.displayNameShort = "Stock"
att.isBG = true

att.statModifiers = {
	RecoilMult = -0.15,
	OverallMouseSensMult = -0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/skorp_stock")
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.fold)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)

--[[==========================================
	30 Round Mag
============================================]]

local att = {}
att.name = "skorp_30rnd"
att.displayName = "30 Round Magazine"
att.displayNameShort = "30RND"
att.isBG = true
att.SpeedDec = -1

att.statModifiers = {
	ReloadSpeedMult = -0.1,
	OverallMouseSensMult = -0.05
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/skorp_30rnd")
	att.description = {
		[1] = {t = "Increases the magazine's size to 30 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
	}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.skorp30)
	self:unloadWeapon()
	self.Primary.ClipSize = 30
	self.Primary.ClipSize_Orig = 30
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)