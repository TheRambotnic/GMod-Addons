local att = {}
att.name = "heavy_stock"
att.displayName = "Heavy Stock"
att.displayNameShort = "Heavy"
att.isBG = true

att.statModifiers = {
	RecoilMult = -0.1,
	DrawSpeedMult = -0.1,
	OverallMouseSensMult = -0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15heavystock")
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.heavy)

	if self.WMEnt then
		self.WMEnt:SetBodygroup(3,2)
	end
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	
	if self.WMEnt then
		self.WMEnt:SetBodygroup(3,0)
	end
end

CustomizableWeaponry:registerAttachment(att)
