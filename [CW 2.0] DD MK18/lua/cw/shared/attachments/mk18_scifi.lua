local att = {}
att.name = "mk18_scifi"
att.displayName = "Futuristic.O!"
att.displayNameShort = "Sci-Fi"
att.isBG = true

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mk18_scifi")
	att.description = {
		[1] = {t = "Changes the gun to a futuristic White, Yellow and Green look.", c = CustomizableWeaponry.textColors.COSMETIC}
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
