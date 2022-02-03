local att = {}
att.name = "troy_sights"
att.displayName = "Troy Battle Sights"
att.displayNameShort = "Troy"
att.isBG = true
att.isSight = true
att.aimPos = {"TroySightPos", "TroySightAng"}
att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_SIGHT
 
if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/troy_sights")
	att.description = {
		[1] = {t = "A folding ironsight variant.", c = CustomizableWeaponry.textColors.COSMETIC}
	}
	
	att.reticle = "atts/icontrit"
	att._reticleSize = 1
	
	function att:elementRender()
		local rc = self:getSightColor(att.name)
		local vec = Vector((rc.r / 255) * (rc.r / 255), (rc.g / 255) * (rc.g / 255), (rc.b / 255) * (rc.b / 255)) -- saturated
		local mat = Material("models/weapons/v_models/mk18/diffuse")
		
		mat:SetVector("$selfillumtint", vec)
	end
end

function att:attachFunc()
	self:setBodygroup(self.SightBGs.main, self.SightBGs.troy)

	if self.WMEnt then
		self.WMEnt:SetBodygroup(1,1)
	end
end

function att:detachFunc()
	if self.WMEnt then
		self.WMEnt:SetBodygroup(1,0)
	end
end
 
CustomizableWeaponry:registerAttachment(att)
