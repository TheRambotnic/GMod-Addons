-- Stolen from Knife Kitty's HK416 (Sorry buddy! :P)

local att = {}
att.name = "mk18_bipod" -- md_hk416_bipod
att.displayName = "Deployable Bipod"
att.displayNameShort = "Bipod"

att.statModifiers = {
	OverallMouseSensMult = -0.1,
	DrawSpeedMult = -0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/mk18_bipod")
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
			self.AttachmentModelsVM.mk18_bipod.ent:SetBodygroup(1,1)
			self:EmitSound("CW_MK18Bipod_Down")
		else
			self.AttachmentModelsVM.mk18_bipod.ent:SetBodygroup(1,0)
			self:EmitSound("CW_MK18Bipod_Up")
		end	
	end
	
	self.BipodWasDeployed = is
end

CustomizableWeaponry:registerAttachment(att)

CustomizableWeaponry:addReloadSound("CW_MK18Bipod_Down", {"weapons/cw_tr09_mk18/harrisbipod_down1.wav", "weapons/cw_tr09_mk18/harrisbipod_down2.wav"})
CustomizableWeaponry:addReloadSound("CW_MK18Bipod_Up", {"weapons/cw_tr09_mk18/harrisbipod_up1.wav", "weapons/cw_tr09_mk18/harrisbipod_up2.wav"})
