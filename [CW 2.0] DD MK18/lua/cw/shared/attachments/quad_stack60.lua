local att = {}
att.name = "quad_stack60"
att.displayName = "Quad-Stack Magazine"
att.displayNameShort = "Quad"
att.isBG = true

att.statModifiers = {
	ReloadSpeedMult = -0.15,
	OverallMouseSensMult = -0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar1560rndmag")
	att.description = {
		[1] = {t = "Increases the magazine's size to 60 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
	}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.round60)
	self:unloadWeapon()
	self.Primary.ClipSize = 60
	self.Primary.ClipSize_Orig = 60

	if self.WMEnt then
		self.WMEnt:SetBodygroup(2,2)
	end
end

function att:detachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL

	if self.WMEnt then
		self.WMEnt:SetBodygroup(2,0)
	end
end

CustomizableWeaponry:registerAttachment(att)
