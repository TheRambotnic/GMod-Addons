local att = {}
att.name = "mk18_pmag"
att.displayName = "PMAG Gen M3"
att.displayNameShort = "PMAG"
att.isBG = true

att.statModifiers = {
	ReloadSpeedMult = -0.10,
	OverallMouseSensMult = -0.05
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/pmag")
	att.description = {
		[1] = {t = "Increases the magazine's size to 36 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
	}
end

function att:attachFunc()
	self:setBodygroup(self.MagBGs.main, self.MagBGs.pmag)
	self:unloadWeapon()
	self.Primary.ClipSize = 36
	self.Primary.ClipSize_Orig = 36

	if self.WMEnt then
		self.WMEnt:SetBodygroup(2,1)
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
