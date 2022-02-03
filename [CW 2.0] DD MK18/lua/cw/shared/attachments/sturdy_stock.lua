local att = {}
att.name = "sturdy_stock"
att.displayName = "Sturdy Stock"
att.displayNameShort = "Sturdy"
att.isBG = true

att.statModifiers = {
	RecoilMult = -0.05,
	OverallMouseSensMult = -0.05
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar15sturdystock")
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.sturdy)

	if self.WMEnt then
		self.WMEnt:SetBodygroup(3,1)
	end
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
	
	if self.WMEnt then
		self.WMEnt:SetBodygroup(3,0)
	end
end

CustomizableWeaponry:registerAttachment(att)
