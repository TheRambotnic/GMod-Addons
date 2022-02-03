if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

util.PrecacheModel("models/weapons/Rambotnic/v_cw2_lr300.mdl")
util.PrecacheModel("models/weapons/Rambotnic/w_cw2_lr300.mdl")

local USE_OLD_WELEMENTS = true

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "ZM LR300"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
	function SWEP:IndividualThink()
		if self.dt.State == CW_AIMING then
			self.ViewModelMovementScale = 0.3
		else
			self.ViewModelMovementScale = 1
		end
	end
	
	SWEP.IconLetter = "w"
	killicon.Add("cw_tr09_lr300", "vgui/kills/cw_tr09_lr300_kill", Color(255, 80, 0, 150))
	SWEP.SelectIcon = surface.GetTextureID("vgui/kills/cw_tr09_lr300_select")
	
	SWEP.MuzzleEffect = "muzzleflash_6"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0.3
	SWEP.ForeGripOffsetCycle_Reload = 0.75
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.75
	SWEP.M203OffsetCycle_Reload = 0.75
	SWEP.M203OffsetCycle_Reload_Empty = 0.75
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.CustomizePos = Vector(5, 0, -0.5)
	SWEP.CustomizeAng = Vector(20, 35, 15)
	
	SWEP.IronsightPos = Vector(-2.025, -2, 0.3)
	SWEP.IronsightAng = Vector(-0.13, -0.02, 0)
	SWEP.FOVPerShot = 0
	
	SWEP.MicroT1Pos = Vector(-2.025, 0, 0.695)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.CmorePos = Vector(-2.03, -3, 0.59)
	SWEP.CmoreAng = Vector(0, 0, 0)
	
	SWEP.WS_CMOREPos = Vector(-2.02, -3, 0.57)
	SWEP.WS_CMOREAng = Vector(0, 0, 0)
	
	SWEP.ReflexPos = Vector(-2.03, -3, 0.72)
	SWEP.ReflexAng = Vector(0, 0, 0)
	
	SWEP.CoD4ReflexPos = Vector(-2.02, -3, 0.76)
	SWEP.CoD4ReflexAng = Vector(0, 0, 0)
	
	SWEP.WS_BarskaPos = Vector(-2.03, -2.5, 0.57)
	SWEP.WS_BarskaAng = Vector(0, 0, 0)
	
	SWEP.TrijiconPos = Vector(-1.995, -3, 0.65)
	SWEP.TrijiconAng = Vector(0, 0, 0)
		
	SWEP.EoTechPos = Vector(-2.04, -2, 0.18)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.EoTech553Pos = Vector(-2.04, -2, 0.42)
	SWEP.EoTech553Ang = Vector(0, 0, 0)
	
	SWEP.WS_EoTech557Pos = Vector(-2.03, -2, 0.355)
	SWEP.WS_EoTech557Ang = Vector(0, 0, 0)
	
	SWEP.HoloPos = Vector(-2.02, -2, 0.49)
	SWEP.HoloAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.035, -2, 0.545)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.CoD4TascoPos = Vector(-2.035, -3, 0.85)
	SWEP.CoD4TascoAng = Vector(0, 0, 0)
	
	SWEP.FAS2AimpointPos = Vector(-2.02, -2.5, 0.695)
	SWEP.FAS2AimpointAng = Vector(0, 0, 0)
	
	SWEP.ShortDotPos = Vector(-2.015, -2.5, 0.66)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.ELCANPos = Vector(-2.015, -2, 0.4)
	SWEP.ELCANAng = Vector(0, 0, 0)
	
	SWEP.WS_ELCANPos = Vector(-2.015, -2, 0.36)
	SWEP.WS_ELCANAng = Vector(0, 0, 0)
	SWEP.WS_ELCANAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.ACOGPos = Vector(-2.015, -2.5, 0.485)
	SWEP.ACOGAng = Vector(0, 0, 0)
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.CSGOACOGPos = Vector(-2.01, -2.5, 0.62)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)
	SWEP.CSGOACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.CoD4ACOGPos = Vector(-2.02, -3.5, 0.7)
	SWEP.CoD4ACOGAng = Vector(0, 0, 0)
	SWEP.CoD4ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.WS_ACOGPos  = Vector(-2.035, -2.5, 0.58)
	SWEP.WS_ACOGAng = Vector(0 ,0 , 0)
	SWEP.WS_ACOGAxisAlign = {right = -0.05, up = 0.03, forward = -135}
	
	SWEP.LeupoldPos = Vector(-2.035, -2, 0.48)
	SWEP.LeupoldAng = Vector(0, 0, 0)
	SWEP.LeupoldAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.CSGOSSGPos = Vector(-2.015, -1, 0.61)
	SWEP.CSGOSSGAng = Vector(0, 0, 0)
	SWEP.CSGOSSGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.M203Pos = Vector(-0.6, -2.5, 0.7)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(3, 0, -0.5)
	SWEP.SprintAng = Vector(-13.75, 37, -15)
	
	SWEP.AlternativePos = Vector(-0.5, 1, -0.3)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {["md_acog"] = {[1] = Vector(-2.015, -2.5, -0.17), [2] = Vector(0, 0, 0)},
	["md_elcan"] = {[1] = Vector(-2.02, -1.5, -0.16), [2] = Vector(-0.06, -0.12, 0)},
	["md_ws_elcan"] = {[1] = Vector(-2, -1.5, -0.23), [2] = Vector(0, 0.1, 0)},
	["md_ws_acog"] = {[1] = Vector(-2.018, -2.5, 0.04), [2] = Vector(-0.55, 0, 0)}}

	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	SWEP.CustomizationMenuScale = 0.011
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_fas2_leupold"] = { type = "Model", model = "models/v_fas2_leupold.mdl", bone = "Honey_Body", rel = "", pos = Vector(-0.01, 9.17, 47.72), angle = Angle(0, -90, 0), size = Vector(1.15, 1.15, 1.15)},
		["md_fas2_leupold_mount"] = { type = "Model", model = "models/v_fas2_leupold_mounts.mdl", bone = "Honey_Body", rel = "", pos = Vector(-0.01, 9.17, 47.72), angle = Angle(0, -90, 0), size = Vector(1.15, 1.15, 1.15)},
		["md_uecw_csgo_scope_ssg"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_scope_bender.mdl", bone = "Honey_Body", rel = "", pos = Vector(0.035, 10.13, 46.79), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_cod4_reflex"] = {model = "models/v_cod4_reflex.mdl", bone = "Honey_Body", rel = "", pos = Vector(0, 7.85, 45.25), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_ws_eotech557"] = {model = "models/attachments/ws_eotech557.mdl", bone = "Honey_Body", pos = Vector(-0.72, 3.9, 42.51), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_ws_elcan"] = { type = "Model", model = "models/attachments/ws_elcan.mdl", bone = "Honey_Body", rel = "", pos = Vector(-0.08, 6.22, 44.42), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_ws_grippod"] = {model = "models/attachments/white_snow/ws_grippod.mdl", bone = "Honey_Body", rel = "", pos = Vector(-14.49, 20.35, 42.42), angle = Angle(0, -15, 0), size = Vector(2.4, 2.4, 2.4)},
		["md_ws_dbal"] = { type = "Model", model = "models/attachments/White_Snow/ws_dbal.mdl", bone = "Honey_Body", rel = "", pos = Vector(0.9, 20.45, 45.68), angle = Angle(180, -90, -90), size = Vector(0.5, 0.5, 0.5)},
		["md_ws_c_more"] = { type = "Model", model = "models/attachments/white_snow/ws_c_more.mdl", bone = "Honey_Body", rel = "", pos = Vector(-0.04, 10.45, 47), angle = Angle(0, 0, 0), size = Vector(0.18, 0.18, 0.18)},
		["md_ws_barska"] = { type = "Model", model = "models/attachments/white_snow/ws_barska.mdl", bone = "Honey_Body", rel = "", pos = Vector(0, 9.95, 46.98), angle = Angle(0, 0, 0), size = Vector(0.14, 0.14, 0.14)},
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "Honey_Body", rel = "", pos = Vector(0, 10.45, 46.9), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_fas2_eotech"] = { type = "Model", model = "models/c_fas2_eotech.mdl", bone = "Honey_Body", rel = "", pos = Vector(0.01, 12.590, 46.54), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_fas2_aimpoint"] = {model = "models/c_fas2_aimpoint_rigged.mdl", bone = "Honey_Body", rel = "", pos = Vector(0.01, 12, 46.4), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_fas2_holo_aim"] = {model = "models/v_holo_sight_orig_hx.mdl", bone = "Honey_Body", rel = "", pos = Vector(0, 8, 44.16), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_fas2_holo"] = {model = "models/v_holo_sight_kkrc.mdl", bone = "Honey_Body", rel = "", pos = Vector(0, 8, 44.16), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_cod4_aimpoint_v2"] = { type = "Model", model = "models/v_cod4_aimpoint.mdl", bone = "Honey_Body", rel = "", pos = Vector(0, 6.95, 44.74), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "Honey_Body", rel = "", pos = Vector(-0.21, 6.5, 43.51), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "Honey_Body", rel = "", pos = Vector(-0.005, 11.77, 47.07), angle = Angle(0, 0, 0), size = Vector(0.46, 0.46, 0.46)},
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "Honey_Body", rel = "", pos = Vector(0.03, 11.6, 45.27), angle = Angle(0, 0, 0), size = Vector(1.4, 1.4, 1.4)},
		["md_cod4_acog_v2"] = {model = "models/v_cod4_acog.mdl", bone = "Honey_Body", rel = "", pos = Vector(0, 8.1, 45.31), angle = Angle(0, 90, 0), size = Vector(0.52, 0.52, 0.52)},
		["md_ws_acog"] = { type = "Model", model = "models/attachments/White_Snow/ws_acog.mdl", bone = "Honey_Body", rel = "", pos = Vector(-1.395, 1.77, 48.16), angle = Angle(0, 0, 0), size = Vector(0.7, 0.7, 0.7)},
		["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "Honey_Body", rel = "", pos = Vector(0.04, 6.03, 44.57), angle = Angle(0, -90, 0), size = Vector(0.52, 0.52, 0.52)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "Honey_Body", rel = "", pos = Vector(-0.175, 6, 43.26), angle = Angle(0, 0, 0), size = Vector(0.65, 0.65, 0.65)},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "Honey_Body", rel = "", pos = Vector(0.245, 0.55, 36.82), angle = Angle(3, -90, 0), size = Vector(0.9, 0.9, 0.9)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "Honey_Body", rel = "", pos = Vector(-0.28, 12.53, 43.27), angle = Angle(0, 0, 0), size = Vector(0.52, 0.52, 0.52)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "Honey_Body", pos = Vector(0, 10.307, 43.62), angle = Angle(0, 0, 0), size = Vector(0.72, 0.72, 0.72)},
		["md_ws_scifi_silencer"] = { type = "Model", model = "models/attachments/White_Snow/ws_scifi_silencer.mdl", bone = "Honey_Body", rel = "", pos = Vector(-3.78, -20.6, 37.77), angle = Angle(0, 0, 0), size = Vector(1.4, 1.4, 1.4)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "Honey_Body", pos = Vector(0.01, 10, 47.02), angle = Angle(0, 180, 0), size = Vector(0.26, 0.26, 0.26)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "Honey_Body", pos = Vector(-0.21, 6.6, 43.61), angle = Angle(0, 0, 0), size = Vector(0.58, 0.58, 0.58)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "Honey_Body", pos = Vector(0.52, 20.5, 45.71), angle = Angle(180, -90, -90), size = Vector(0.4, 0.4, 0.4)},
		["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "Honey_Body", pos = Vector(-0.21, 6.6, 43.62), angle = Angle(0, -90, 0), size = Vector(0.58, 0.58, 0.58)},
		["lr300_bipod"] = { type = "Model", model = "models/attachments/lr300_bipod.mdl", bone = "Honey_Body", rel = "", pos = Vector(0.03, 20.5, 44.5), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "Honey_Body", pos = Vector(1.65, 4.4, 46.95), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7), animated = true}
	}
	
	SWEP.WElements = {
		["md_fas2_leupold"] = { type = "Model", model = "models/v_fas2_leupold.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.01, 9.17, 47.72), angle = Angle(0, -90, 0), size = Vector(1.15, 1.15, 1.15)},
		["md_fas2_leupold_mount"] = { type = "Model", model = "models/v_fas2_leupold_mounts.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.01, 9.17, 47.72), angle = Angle(0, -90, 0), size = Vector(1.15, 1.15, 1.15)},
		["md_uecw_csgo_scope_ssg"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_scope_bender.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.035, 10.13, 46.79), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_cod4_reflex"] = { type = "Model", model = "models/v_cod4_reflex.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 7.85, 45.25), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_ws_eotech557"] = { type = "Model", model = "models/attachments/ws_eotech557.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(-0.72, 3.9, 42.51), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_ws_elcan"] = { type = "Model", model = "models/attachments/ws_elcan.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.08, 6.22, 44.42), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_ws_grippod"] = { type = "Model", model = "models/attachments/white_snow/ws_grippod.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-14.49, 20.35, 42.42), angle = Angle(0, -15, 0), size = Vector(2.4, 2.4, 2.4)},
		["md_ws_dbal"] = { type = "Model", model = "models/attachments/White_Snow/ws_dbal.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.9, 20.45, 45.68), angle = Angle(180, -90, -90), size = Vector(0.5, 0.5, 0.5)},
		["md_ws_c_more"] = { type = "Model", model = "models/attachments/white_snow/ws_c_more.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.04, 10.45, 47), angle = Angle(0, 0, 0), size = Vector(0.18, 0.18, 0.18)},
		["md_ws_barska"] = { type = "Model", model = "models/attachments/white_snow/ws_barska.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 9.95, 46.98), angle = Angle(0, 0, 0), size = Vector(0.14, 0.14, 0.14)},
		["md_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 10.45, 46.9), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_fas2_eotech"] = { type = "Model", model = "models/c_fas2_eotech.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.01, 12.590, 46.54), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_fas2_aimpoint"] = { type = "Model", model = "models/c_fas2_aimpoint_rigged.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.01, 12, 46.4), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_fas2_holo_aim"] = { type = "Model", model = "models/v_holo_sight_orig_hx.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 8, 44.16), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_fas2_holo"] = { type = "Model", model = "models/v_holo_sight_kkrc.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 8, 44.16), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5)},
		["md_cod4_aimpoint_v2"] = { type = "Model", model = "models/v_cod4_aimpoint.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 6.95, 44.74), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65)},
		["md_elcan"] = { type = "Model", model = "models/bunneh/elcan.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.21, 6.5, 43.51), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.005, 11.77, 47.07), angle = Angle(0, 0, 0), size = Vector(0.46, 0.46, 0.46)},
		["md_trijicon"] = { type = "Model", model = "models/att_trijicon.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.03, 11.6, 45.27), angle = Angle(0, 0, 0), size = Vector(1.4, 1.4, 1.4)},
		["md_cod4_acog_v2"] = { type = "Model", model = "models/v_cod4_acog.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 8.1, 45.31), angle = Angle(0, 90, 0), size = Vector(0.52, 0.52, 0.52)},
		["md_ws_acog"] = { type = "Model", model = "models/attachments/White_Snow/ws_acog.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-1.395, 1.77, 48.16), angle = Angle(0, 0, 0), size = Vector(0.7, 0.7, 0.7)},
		["md_uecw_csgo_acog"] = { type = "Model", model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.04, 6.03, 44.57), angle = Angle(0, -90, 0), size = Vector(0.52, 0.52, 0.52)},
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.175, 6, 43.26), angle = Angle(0, 0, 0), size = Vector(0.65, 0.65, 0.65)},
		["md_eotech"] = { type = "Model", model = "models/wystan/attachments/2otech557sight.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.245, 0.55, 36.82), angle = Angle(3, -90, 0), size = Vector(0.9, 0.9, 0.9)},
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.28, 12.53, 43.27), angle = Angle(0, 0, 0), size = Vector(0.52, 0.52, 0.52)},
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(0, 10.307, 43.62), angle = Angle(0, 0, 0), size = Vector(0.72, 0.72, 0.72)},
		["md_ws_scifi_silencer"] = { type = "Model", model = "models/attachments/White_Snow/ws_scifi_silencer.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-3.78, -20.6, 37.77), angle = Angle(0, 0, 0), size = Vector(1.4, 1.4, 1.4)},
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(0.01, 10, 47.02), angle = Angle(0, 180, 0), size = Vector(0.26, 0.26, 0.26)},
		["md_acog"] = {type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(-0.21, 6.6, 43.61), angle = Angle(0, 0, 0), size = Vector(0.58, 0.58, 0.58)},
		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(0.52, 20.5, 45.71), angle = Angle(180, -90, -90), size = Vector(0.4, 0.4, 0.4)},
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(-0.21, 6.6, 43.62), angle = Angle(0, -90, 0), size = Vector(0.58, 0.58, 0.58)},
		["lr300_bipod"] = { type = "Model", model = "models/attachments/lr300_bipod.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.03, 20.5, 44.5), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6)}
	}
	
	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -2), angle = Angle(0, 0, 0) }
	}
	
	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, 45, 45) },
		["Bip01 L Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, 25, 0) },
		["Bip01 L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 80, 40) },
		["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(3, -1.15, -1.079), angle = Angle(-30, 10, 0) },
		["Bip01 L Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 20, 0) },
		["Bip01 L Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(7, 25, 0) },
		["Bip01 L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 55, 0) },
		["Bip01 L Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 60, -15) },
		["Bip01 L Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5, 20, 35) },
		["Bip01 L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 105, 55) },
		["Bip01 L Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, 80, 0) },
		["Bip01 L Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 42.409) },
		["Bip01 L Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(12, 60, 0) },
		["Bip01 L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, -10, 0) },
		["Bip01 L Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 25, 0) },
		["Bip01 L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-15, 15, -10) },
		["Bip01 L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5, 50, -20) }
	}
	
	SWEP.ForegripOverridePos = {
		["md_ws_grippod"] = {
			["Bip01 L Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, 45, 45) },
			["Bip01 L Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5, 25, 0) },
			["Bip01 L Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 80, 40) },
			["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(3, -1.15, -1.079), angle = Angle(-30, 10, 0) },
			["Bip01 L Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 20, 0) },
			["Bip01 L Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(7, 25, 0) },
			["Bip01 L Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 55, 0) },
			["Bip01 L Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 60, -15) },
			["Bip01 L Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5, 20, 35) },
			["Bip01 L Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 105, 55) },
			["Bip01 L Finger42"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, 80, 0) },
			["Bip01 L Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 42.409) },
			["Bip01 L Finger32"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(12, 60, 0) },
			["Bip01 L Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10, -10, 0) },
			["Bip01 L Finger21"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 25, 0) },
			["Bip01 L Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-15, 15, -10) },
			["Bip01 L Finger01"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-5, 50, -20) }}
	}
	
	SWEP.LaserPosAdjust = Vector(0, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	SWEP.WS_DbalPosAdjust = Vector(0, 0, 0)
	SWEP.WS_DbalAngAdjust = Angle(0, 180, 0)
end

SWEP.SightBGs = {main = 2, none = 1}
SWEP.ReceiverBGs = {main = 3, regular = 0, m16 = 1} //lua_run Entity(1):GetViewModel():SetBodygroup(3,1)
SWEP.BarrelBGs = {main = 4, regular = 0, long = 1}
SWEP.MagBGs = {main = 5, regular = 0, pmag = 1, round60 = 2}
SWEP.StockBGs = {main = 6, regular = 0, assault = 1}
SWEP.LuaViewmodelRecoil = true
SWEP.BipodFireAnim = true

function SWEP:fireAnimFunc()
	local cyc = 0
	local clip = self:Clip1()
		
	if self:isAiming() or self.ActiveAttachments.md_m203 then
		cyc = 1
	end
		
	if clip > 1 then
		self:sendWeaponAnim("fire",1,cyc)
	end
end

SWEP.AttachmentDependencies = {
	["md_ws_scifi_silencer"] = {"lr300_scifi"},
	["md_ws_dbal"] = {"lr300_scifi"},
	["md_m203"] = {"lr300_longreceiver"}}
	
SWEP.AttachmentPosDependency = {
	["md_anpeq15"] = {["lr300_longreceiver"] = Vector(0.65, 20.3, 45.9)},
	["md_ws_dbal"] = {["lr300_longreceiver"] = Vector(0.9, 20.4, 45.84)},
	["md_saker"] = {["lr300_longbarrel"] = Vector(0, 14.8, 43.62)},
	["md_ws_scifi_silencer"] = {["lr300_longbarrel"] = Vector(-3.78, -16, 37.77)},
}

if CustomizableWeaponry_KK_HK416 and CustomizableWeaponry_G4P_UECW and CustomizableWeaponry_WS_Pack then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {-550, -520}, atts = {"md_microt1", "md_cmore", "md_ws_c_more", "md_reflex", "md_cod4_reflex", "md_ws_barska", "md_trijicon", "md_eotech", "md_fas2_eotech", "md_ws_eotech557", "md_fas2_holo", "md_aimpoint", "md_cod4_aimpoint_v2", "md_fas2_aimpoint", "md_schmidt_shortdot", "md_elcan", "md_ws_elcan", "md_acog", "md_uecw_csgo_acog", "md_cod4_acog_v2", "md_ws_acog", "md_fas2_leupold", "md_uecw_csgo_scope_ssg"}},
		[2] = {header = "Suppressor", offset = {-550, -100}, atts = {"md_saker", "md_ws_scifi_silencer"}},
		[3] = {header = "Laser", offset = {-550, 320}, atts = {"md_anpeq15", "md_ws_dbal"}},
		[4] = {header = "Handguard", offset = {150, 500}, atts = {"md_foregrip", "md_ws_grippod", "lr300_bipod", "md_m203"}},
		[5] = {header = "Receiver", offset = {150, -100}, atts = {"lr300_longreceiver"}},
		[6] = {header = "Barrel", offset = {700, -100}, atts = {"lr300_longbarrel"}},
		[7] = {header = "Magazine", offset = {850, 700}, atts = {"lr300_pmag", "lr300_quadstack60"}},
		[8] = {header = "Stock", offset = {1450, 700}, atts = {"lr300_assault"}},
		["impulse 100"] = {header = "Skin", offset = {1300, 300}, atts = {"lr300_tan", "lr300_green", "lr300_scifi"}},
		["+reload"] = {header = "Ammo", offset = {1300, -100}, atts = {"am_greentip", "am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_WS_Pack and CustomizableWeaponry_KK_HK416 then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {100, -400}, atts = {"md_microt1", "md_ws_c_more", "md_cod4_reflex", "md_ws_barska", "md_eotech", "md_fas2_eotech", "md_ws_eotech557", "md_fas2_holo", "md_aimpoint", "md_cod4_aimpoint_v2", "md_fas2_aimpoint", "md_schmidt_shortdot", "md_ws_elcan", "md_acog", "md_cod4_acog_v2", "md_ws_acog", "md_fas2_leupold"}},
		[2] = {header = "Suppressor", offset = {-400, -400}, atts = {"md_saker", "md_ws_scifi_silencer"}},
		[3] = {header = "Laser", offset = {-400, 50}, atts = {"md_anpeq15", "md_ws_dbal"}},
		[4] = {header = "Handguard", offset = {-400, 500}, atts = {"md_foregrip", "md_ws_grippod", "lr300_bipod", "md_m203"}},
		[5] = {header = "Receiver", offset = {500, 50}, atts = {"lr300_longreceiver"}},
		[6] = {header = "Barrel", offset = {500, 400}, atts = {"lr300_longbarrel"}},
		[7] = {header = "Magazine", offset = {500, 850}, atts = {"lr300_pmag", "lr300_quadstack60"}},
		[8] = {header = "Stock", offset = {1450, 700}, atts = {"lr300_assault"}},
		["impulse 100"] = {header = "Skin", offset = {1200, 400}, atts = {"lr300_tan", "lr300_green", "lr300_scifi"}},
		["+reload"] = {header = "Ammo", offset = {1200, 50}, atts = {"am_greentip", "am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_G4P_UECW and CustomizableWeaponry_KK_HK416 then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {100, -400}, atts = {"md_microt1", "md_cmore", "md_reflex", "md_cod4_reflex", "md_trijicon", "md_eotech", "md_fas2_eotech", "md_fas2_holo", "md_aimpoint", "md_cod4_aimpoint_v2", "md_fas2_aimpoint", "md_schmidt_shortdot", "md_elcan", "md_acog", "md_uecw_csgo_acog", "md_cod4_acog_v2", "md_fas2_leupold", "md_uecw_csgo_scope_ssg"}},
		[2] = {header = "Suppressor", offset = {-400, -400}, atts = {"md_saker"}},
		[3] = {header = "Laser", offset = {-400, 50}, atts = {"md_anpeq15"}},
		[4] = {header = "Handguard", offset = {-400, 500}, atts = {"md_foregrip", "lr300_bipod", "md_m203"}},
		[5] = {header = "Receiver", offset = {500, 50}, atts = {"lr300_longreceiver"}},
		[6] = {header = "Barrel", offset = {500, 400}, atts = {"lr300_longbarrel"}},
		[7] = {header = "Magazine", offset = {500, 850}, atts = {"lr300_pmag", "lr300_quadstack60"}},
		[8] = {header = "Stock", offset = {1450, 700}, atts = {"lr300_assault"}},
		["impulse 100"] = {header = "Skin", offset = {1200, 400}, atts = {"lr300_tan", "lr300_green", "lr300_scifi"}},
		["+reload"] = {header = "Ammo", offset = {1200, 50}, atts = {"am_greentip", "am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_WS_Pack and CustomizableWeaponry_G4P_UECW then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {100, -400}, atts = {"md_microt1", "md_cmore", "md_ws_c_more", "md_reflex", "md_ws_barska", "md_trijicon", "md_eotech", "md_ws_eotech557", "md_aimpoint", "md_schmidt_shortdot", "md_elcan", "md_ws_elcan", "md_acog", "md_uecw_csgo_acog", "md_ws_acog", "md_uecw_csgo_scope_ssg"}},
		[2] = {header = "Suppressor", offset = {-400, -400}, atts = {"md_saker", "md_ws_scifi_silencer"}},
		[3] = {header = "Laser", offset = {-400, 50}, atts = {"md_anpeq15", "md_ws_dbal"}},
		[4] = {header = "Handguard", offset = {-400, 500}, atts = {"md_foregrip", "md_ws_grippod", "lr300_bipod", "md_m203"}},
		[5] = {header = "Receiver", offset = {500, 50}, atts = {"lr300_longreceiver"}},
		[6] = {header = "Barrel", offset = {500, 400}, atts = {"lr300_longbarrel"}},
		[7] = {header = "Magazine", offset = {500, 850}, atts = {"lr300_pmag", "lr300_quadstack60"}},
		[8] = {header = "Stock", offset = {1450, 700}, atts = {"lr300_assault"}},
		["impulse 100"] = {header = "Skin", offset = {1200, 400}, atts = {"lr300_tan", "lr300_green", "lr300_scifi"}},
		["+reload"] = {header = "Ammo", offset = {1200, 50}, atts = {"am_greentip", "am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_KK_HK416 then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {300, -400}, atts = {"md_microt1", "md_cod4_reflex", "md_eotech", "md_fas2_eotech", "md_fas2_holo", "md_aimpoint", "md_cod4_aimpoint_v2", "md_fas2_aimpoint", "md_schmidt_shortdot", "md_acog", "md_cod4_acog_v2", "md_fas2_leupold"}},
		[2] = {header = "Suppressor", offset = {-400, -400}, atts = {"md_saker"}},
		[3] = {header = "Laser", offset = {-400, 50}, atts = {"md_anpeq15"}},
		[4] = {header = "Handguard", offset = {-400, 500}, atts = {"md_foregrip", "lr300_bipod", "md_m203"}},
		[5] = {header = "Receiver", offset = {500, 50}, atts = {"lr300_longreceiver"}},
		[6] = {header = "Barrel", offset = {500, 400}, atts = {"lr300_longbarrel"}},
		[7] = {header = "Magazine", offset = {500, 850}, atts = {"lr300_pmag", "lr300_quadstack60"}},
		[8] = {header = "Stock", offset = {1450, 700}, atts = {"lr300_assault"}},
		["impulse 100"] = {header = "Skin", offset = {1200, 400}, atts = {"lr300_tan", "lr300_green", "lr300_scifi"}},
		["+reload"] = {header = "Ammo", offset = {1200, 50}, atts = {"am_greentip", "am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_G4P_UECW then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {300, -400}, atts = {"md_microt1", "md_cmore", "md_reflex", "md_trijicon", "md_eotech", "md_aimpoint", "md_schmidt_shortdot", "md_elcan", "md_acog", "md_uecw_csgo_acog", "md_uecw_csgo_scope_ssg"}},
		[2] = {header = "Suppressor", offset = {-400, -400}, atts = {"md_saker"}},
		[3] = {header = "Laser", offset = {-400, 50}, atts = {"md_anpeq15"}},
		[4] = {header = "Handguard", offset = {-400, 500}, atts = {"md_foregrip", "lr300_bipod", "md_m203"}},
		[5] = {header = "Receiver", offset = {500, 50}, atts = {"lr300_longreceiver"}},
		[6] = {header = "Barrel", offset = {500, 400}, atts = {"lr300_longbarrel"}},
		[7] = {header = "Magazine", offset = {500, 850}, atts = {"lr300_pmag", "lr300_quadstack60"}},
		[8] = {header = "Stock", offset = {1450, 700}, atts = {"lr300_assault"}},
		["impulse 100"] = {header = "Skin", offset = {1200, 400}, atts = {"lr300_tan", "lr300_green", "lr300_scifi"}},
		["+reload"] = {header = "Ammo", offset = {1200, 50}, atts = {"am_greentip", "am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_WS_Pack then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {300, -400}, atts = {"md_microt1", "md_ws_c_more", "md_ws_barska", "md_eotech", "md_ws_eotech557", "md_aimpoint", "md_schmidt_shortdot", "md_ws_elcan", "md_acog", "md_ws_acog"}},
		[2] = {header = "Suppressor", offset = {-400, -400}, atts = {"md_saker", "md_ws_scifi_silencer"}},
		[3] = {header = "Laser", offset = {-400, 50}, atts = {"md_anpeq15", "md_ws_dbal"}},
		[4] = {header = "Handguard", offset = {-400, 500}, atts = {"md_foregrip", "md_ws_grippod", "lr300_bipod", "md_m203"}},
		[5] = {header = "Receiver", offset = {500, 50}, atts = {"lr300_longreceiver"}},
		[6] = {header = "Barrel", offset = {500, 400}, atts = {"lr300_longbarrel"}},
		[7] = {header = "Magazine", offset = {500, 850}, atts = {"lr300_pmag", "lr300_quadstack60"}},
		[8] = {header = "Stock", offset = {1450, 700}, atts = {"lr300_assault"}},
		["impulse 100"] = {header = "Skin", offset = {1200, 400}, atts = {"lr300_tan", "lr300_green", "lr300_scifi"}},
		["+reload"] = {header = "Ammo", offset = {1200, 50}, atts = {"am_greentip", "am_magnum", "am_matchgrade"}}
	}
else
	SWEP.Attachments = {[1] = {header = "Sight", offset = {500, -400}, atts = {"md_microt1", "md_eotech", "md_aimpoint", "md_schmidt_shortdot", "md_acog"}},
		[2] = {header = "Suppressor", offset = {-400, -400}, atts = {"md_saker"}},
		[3] = {header = "Laser", offset = {-400, 50}, atts = {"md_anpeq15"}},
		[4] = {header = "Handguard", offset = {-400, 500}, atts = {"md_foregrip", "lr300_bipod", "md_m203"}},
		[5] = {header = "Receiver", offset = {500, 50}, atts = {"lr300_longreceiver"}},
		[6] = {header = "Barrel", offset = {500, 400}, atts = {"lr300_longbarrel"}},
		[7] = {header = "Magazine", offset = {500, 850}, atts = {"lr300_pmag", "lr300_quadstack60"}},
		[8] = {header = "Stock", offset = {1450, 700}, atts = {"lr300_assault"}},
		["impulse 100"] = {header = "Skin", offset = {1200, 400}, atts = {"lr300_tan", "lr300_green", "lr300_scifi"}},
		["+reload"] = {header = "Ammo", offset = {1200, 50}, atts = {"am_greentip", "am_magnum", "am_matchgrade"}}
	}
end

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload",
//	reload_empty = "reload_empty", [[the animation is broken]]
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_LR300_DEPLOY"}},

	reload = {[1] = {time = 0.1, sound = "CW_LR300_MAGOUT"},
	[2] = {time = 1.65, sound = "CW_LR300_MAGIN"},
	[3] = {time = 1.9, sound = "CW_LR300_FOLEY"}}}

--[[
	reload_empty = {[1] = {time = 0.1, sound = "CW_LR300_MAGOUT"},
	[2] = {time = 1.75, sound = "CW_LR300_MAGIN"},
	[3] = {time = 2.45, sound = "CW_LR300_BOLTPULL"},
	[4] = {time = 2.95, sound = "CW_LR300_FOLEY"}}}
]]--
//[[in order to use the reload_empty sounds table, the animation needs to be fixed first!]]

SWEP.SpeedDec = 30

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Rambotnic"

SWEP.Author			= "Rambotnic"
SWEP.Contact		= "Via Steam: http://steamcommunity.com/id/therambotniczeronove/"
SWEP.Purpose		= "To kill bad guys. Duh!"
SWEP.Instructions	= "Press your primary PEW-PEW key to kill the bad guys."

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/Rambotnic/v_cw2_lr300.mdl"
SWEP.WorldModel	= "models/weapons/Rambotnic/w_cw2_lr300.mdl"
SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/weapons/Rambotnic/w_cw2_lr300.mdl"
SWEP.WMPos = Vector(-0.5, -0.5, 0)
SWEP.WMAng = Vector(0, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 150
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.06315
SWEP.FireSound = "CW_LR300_FIRE"
SWEP.FireSoundSuppressed = "CW_AR15_FIRE_SUPPRESSED"
SWEP.Recoil = 0.85

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.9
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.1
SWEP.Shots = 1
SWEP.Damage = 26
SWEP.DeployTime = 0.7

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.7
SWEP.ReloadHalt = 2.7
SWEP.ReloadTime_Empty = 2.7 -- 3.8
SWEP.ReloadHalt_Empty = 2.7 -- 3.8
SWEP.SnapToIdlePostReload = true

CustomizableWeaponry.callbacks:addNew("initialize", "cw_tr09_lr300", function(wep) -- instead of copy pasting 50+ lines of func, 5 lines can do even more
	if wep and wep:GetClass() == "cw_tr09_lr300" then
		wep:CreateModels(wep.WElements)
	end
end)
	
	function SWEP:WElementThink()
	
		if (self.ActiveAttachments.md_microt1 or self.ActiveAttachments.md_cmore or self.ActiveAttachments.md_ws_c_more or self.ActiveAttachments.md_reflex or
		self.ActiveAttachments.md_cod4_reflex or self.ActiveAttachments.md_ws_barska or self.ActiveAttachments.md_trijicon or self.ActiveAttachments.md_eotech or
		self.ActiveAttachments.md_fas2_eotech or self.ActiveAttachments.md_ws_eotech557 or self.ActiveAttachments.md_fas2_holo or self.ActiveAttachments.md_aimpoint or
		self.ActiveAttachments.md_cod4_aimpoint_v2 or self.ActiveAttachments.md_fas2_aimpoint or self.ActiveAttachments.md_elcan or self.ActiveAttachments.md_ws_elcan or
		self.ActiveAttachments.md_schmidt_shortdot or self.ActiveAttachments.md_acog or self.ActiveAttachments.md_uecw_csgo_acog or self.ActiveAttachments.md_cod4_acog_v2 or
		self.ActiveAttachments.md_ws_acog or self.ActiveAttachments.md_fas2_leupold or self.ActiveAttachments.md_uecw_csgo_scope_ssg) then
			if self.WMEnt then
				self.WMEnt:SetBodygroup(1,2)
			end
		else
			if self.WMEnt then
				self.WMEnt:SetBodygroup(1,0)
			end
		end
		
		if self.ActiveAttachments.md_microt1 then
			self.WElements.md_microt1.hide = false
		else
			self.WElements.md_microt1.hide = true
		end
		
		if self.ActiveAttachments.md_cmore then
            self.WElements.md_cmore.hide = false
        else
			self.WElements.md_cmore.hide = true
		end
		
		if self.ActiveAttachments.md_ws_c_more then
            self.WElements.md_ws_c_more.hide = false
        else
			self.WElements.md_ws_c_more.hide = true
		end
		
		if self.ActiveAttachments.md_reflex then
			self.WElements.md_reflex.hide = false
        else
			self.WElements.md_reflex.hide = true
		end
		
		if self.ActiveAttachments.md_cod4_reflex then
            self.WElements.md_cod4_reflex.hide = false
        else
			self.WElements.md_cod4_reflex.hide = true
		end
		
		if self.ActiveAttachments.md_ws_barska then
			self.WElements.md_ws_barska.hide = false
        else
			self.WElements.md_ws_barska.hide = true
		end
		
		if self.ActiveAttachments.md_trijicon then
            self.WElements.md_trijicon.hide = false
        else
			self.WElements.md_trijicon.hide = true
		end
		
		if self.ActiveAttachments.md_eotech then
            self.WElements.md_eotech.hide = false
        else
			self.WElements.md_eotech.hide = true
		end
		
		if self.ActiveAttachments.md_fas2_eotech then
            self.WElements.md_fas2_eotech.hide = false
        else
			self.WElements.md_fas2_eotech.hide = true
		end
		
		if self.ActiveAttachments.md_ws_eotech557 then
            self.WElements.md_ws_eotech557.hide = false
        else
			self.WElements.md_ws_eotech557.hide = true
		end
		
		if self.ActiveAttachments.md_fas2_holo then
            self.WElements.md_fas2_holo.hide = false
			self.WElements.md_fas2_holo_aim.hide = false
        else
			self.WElements.md_fas2_holo.hide = true
			self.WElements.md_fas2_holo_aim.hide = true
		end
		
		if self.ActiveAttachments.md_aimpoint then
            self.WElements.md_aimpoint.hide = false
        else
			self.WElements.md_aimpoint.hide = true
		end
		
		if self.ActiveAttachments.md_fas2_aimpoint then
            self.WElements.md_fas2_aimpoint.hide = false
        else
			self.WElements.md_fas2_aimpoint.hide = true
		end
		
		if self.ActiveAttachments.md_cod4_aimpoint_v2 then
            self.WElements.md_cod4_aimpoint_v2.hide = false
        else
			self.WElements.md_cod4_aimpoint_v2.hide = true
		end
		
		if self.ActiveAttachments.md_elcan then
            self.WElements.md_elcan.hide = false
        else
			self.WElements.md_elcan.hide = true
		end
		
		if self.ActiveAttachments.md_ws_elcan then
            self.WElements.md_ws_elcan.hide = false
        else
			self.WElements.md_ws_elcan.hide = true
		end
		
		if self.ActiveAttachments.md_acog then
            self.WElements.md_acog.hide = false
        else
			self.WElements.md_acog.hide = true
		end
		
		if self.ActiveAttachments.md_uecw_csgo_acog then
            self.WElements.md_uecw_csgo_acog.hide = false
        else
			self.WElements.md_uecw_csgo_acog.hide = true
		end
		
		if self.ActiveAttachments.md_cod4_acog_v2 then
            self.WElements.md_cod4_acog_v2.hide = false
        else
			self.WElements.md_cod4_acog_v2.hide = true
		end
		
		if self.ActiveAttachments.md_ws_acog then
            self.WElements.md_ws_acog.hide = false
        else
			self.WElements.md_ws_acog.hide = true
		end
		
		if self.ActiveAttachments.md_fas2_leupold then
            self.WElements.md_fas2_leupold.hide = false
			self.WElements.md_fas2_leupold_mount.hide = false
        else
			self.WElements.md_fas2_leupold.hide = true
			self.WElements.md_fas2_leupold_mount.hide = true
		end
		
		if self.ActiveAttachments.md_uecw_csgo_scope_ssg then
            self.WElements.md_uecw_csgo_scope_ssg.hide = false
        else
			self.WElements.md_uecw_csgo_scope_ssg.hide = true
		end
		
		if self.ActiveAttachments.md_saker then
            self.WElements.md_saker.hide = false
        else
			self.WElements.md_saker.hide = true
		end
		
		if self.ActiveAttachments.md_ws_scifi_silencer then
            self.WElements.md_ws_scifi_silencer.hide = false
        else
			self.WElements.md_ws_scifi_silencer.hide = true
		end
		
		if self.ActiveAttachments.md_anpeq15 then
            self.WElements.md_anpeq15.hide = false
        else
			self.WElements.md_anpeq15.hide = true
		end
		
		if self.ActiveAttachments.md_ws_dbal then
            self.WElements.md_ws_dbal.hide = false
        else
			self.WElements.md_ws_dbal.hide = true
		end
		
		if self.ActiveAttachments.md_foregrip then
            self.WElements.md_foregrip.hide = false
        else
			self.WElements.md_foregrip.hide = true
		end
		
		if self.ActiveAttachments.md_ws_grippod then
            self.WElements.md_ws_grippod.hide = false
        else
			self.WElements.md_ws_grippod.hide = true
		end
		
		if self.ActiveAttachments.lr300_bipod then
            self.WElements.lr300_bipod.hide = false
			if self.dt.BipodDeployed then
				self.WElements.lr300_bipod.modelEnt:SetBodygroup(1,1)
			else
				self.WElements.lr300_bipod.modelEnt:SetBodygroup(1,0)
			end
        else
			self.WElements.lr300_bipod.hide = true
		end
		
		if self.ActiveAttachments.lr300_longbarrel then
			if self.WMEnt then
				self.WMEnt:SetBodygroup(2,1)
			end
		else
			if self.WMEnt then
				self.WMEnt:SetBodygroup(2,0)
			end
		end
		
		if self.ActiveAttachments.lr300_longreceiver then
			if self.WMEnt then
				self.WMEnt:SetBodygroup(3,1)
			end
		else
			if self.WMEnt then
				self.WMEnt:SetBodygroup(2,0)
			end
		end
		
		if self.ActiveAttachments.lr300_pmag then
			if self.WMEnt then
				self.WMEnt:SetBodygroup(4,1)
			end
        elseif self.ActiveAttachments.lr300_quadstack60 then
			if self.WMEnt then
				self.WMEnt:SetBodygroup(4,2)
			end
		else
			if self.WMEnt then
				self.WMEnt:SetBodygroup(4,0)
			end
		end
		
		if self.ActiveAttachments.lr300_assault then
			if self.WMEnt then
				self.WMEnt:SetBodygroup(5,1)
			end
		else
			if self.WMEnt then
				self.WMEnt:SetBodygroup(5,0)
			end
		end
		
		if self.ActiveAttachments.lr300_tan then
			if self.WMEnt then
				self.WMEnt:SetSkin(1)
			end
		elseif self.ActiveAttachments.lr300_green then
			if self.WMEnt then
				self.WMEnt:SetSkin(2)
			end
		elseif self.ActiveAttachments.lr300_scifi then
			if self.WMEnt then
				self.WMEnt:SetSkin(3)
			end
		else
			if self.WMEnt then
				self.WMEnt:SetSkin(0)
			end
		end

	end
 
            local Vec0, Ang0 = Vector(0, 0, 0), Angle(0, 0, 0)
            local TargetPos, TargetAng, cos1, sin1, tan, ws, rs, mod, EA, delta, sin2, mul, vm, muz, muz2, tr, att
            local td = {}
            local LerpVector, LerpAngle, Lerp = LerpVector, LerpAngle, Lerp
 
            local reg = debug.getregistry()
            local GetVelocity = reg.Entity.GetVelocity
            local Length = reg.Vector.Length
            local Right = reg.Angle.Right
            local Up = reg.Angle.Up
            local Forward = reg.Angle.Forward
            local RotateAroundAxis = reg.Angle.RotateAroundAxis
            local GetBonePosition = reg.Entity.GetBonePosition  
 
            local ManipulateBonePosition, ManipulateBoneAngles = reg.Entity.ManipulateBonePosition, reg.Entity.ManipulateBoneAngles
           
            local wm, pos, ang
            SWEP.wRenderOrder = nil
 
                function SWEP:DrawWorldModel()
                if self.dt.Safe then
                    if self.CHoldType != self.RunHoldType then
                        self:SetHoldType(self.RunHoldType)
                        self.CHoldType = self.RunHoldType
                    end
                else
                    if self.dt.State == CW_RUNNING or self.dt.State == CW_ACTION then
                        if self.CHoldType != self.RunHoldType then
                            self:SetHoldType(self.RunHoldType)
                            self.CHoldType = self.RunHoldType
                        end
                    else
                        if self.CHoldType != self.NormalHoldType then
                            self:SetHoldType(self.NormalHoldType)
                            self.CHoldType = self.NormalHoldType
                        end
                    end
                end
                   
                if self.DrawTraditionalWorldModel then
                    self:DrawModel()
                else
                    wm = self.WMEnt
                   
                    if IsValid(wm) then
                        if IsValid(self.Owner) then
                            pos, ang = GetBonePosition(self.Owner, self.Owner:LookupBone("ValveBiped.Bip01_R_Hand"))
                           
                            if pos and ang then
                                RotateAroundAxis(ang, Right(ang), self.WMAng[1])
                                RotateAroundAxis(ang, Up(ang), self.WMAng[2])
                                RotateAroundAxis(ang, Forward(ang), self.WMAng[3])
 
                                pos = pos + self.WMPos[1] * Right(ang)
                                pos = pos + self.WMPos[2] * Forward(ang)
                                pos = pos + self.WMPos[3] * Up(ang)
                               
                                wm:SetRenderOrigin(pos)
                                wm:SetRenderAngles(ang)
                                wm:DrawModel()
                            end
                        else
                            wm:SetRenderOrigin(self:GetPos())
                            wm:SetRenderAngles(self:GetAngles())
                            wm:DrawModel()
                            wm:DrawShadow()
                        end
                    else
                        self:DrawModel()
                    end
                end
               
                self:WElementThink()
               
                if (!self.WElements) then return end
               
                if (!self.wRenderOrder) then
                    self.wRenderOrder = {}
 
                    for k, v in pairs( self.WElements ) do
                        if (v.type == "Model") then
                            table.insert(self.wRenderOrder, 1, k)
                        elseif (v.type == "Sprite" or v.type == "Quad") then
                            table.insert(self.wRenderOrder, k)
                        end
                    end
                end
               
                if (IsValid(self.Owner)) then
                    bone_ent = self.Owner
                else
                    -- when the weapon is dropped
                    bone_ent = self
                end
               
                for k, name in pairs( self.wRenderOrder ) do
               
                    local v = self.WElements[name]
                    if (!v) then self.wRenderOrder = nil break end
                    if (v.hide) then continue end
                   
                    local pos, ang
                   
                    if (v.bone) then
                        pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )
                    else
                        pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
                    end
                   
                    if (!pos) then continue end
                   
                    local model = v.modelEnt
                    local sprite = v.spriteMaterial
                   
                    if (v.type == "Model" and IsValid(model)) then
 
                        if IsValid(self.Owner) then
                            model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
                            ang:RotateAroundAxis(ang:Up(), v.angle.y)
                            ang:RotateAroundAxis(ang:Right(), v.angle.p)
                            ang:RotateAroundAxis(ang:Forward(), v.angle.r)
                        else
                            model:SetPos(pos + ang:Forward() * v.pos_dropped.x + ang:Right() * v.pos_dropped.y + ang:Up() * v.pos_dropped.z )
                            ang:RotateAroundAxis(ang:Up(), v.angle_dropped.y)
                            ang:RotateAroundAxis(ang:Right(), v.angle_dropped.p)
                            ang:RotateAroundAxis(ang:Forward(), v.angle_dropped.r)
                        end
                       
                        model:SetAngles(ang)
                        local matrix = Matrix()
                        matrix:Scale(v.size)
                        model:EnableMatrix( "RenderMultiply", matrix )
                       
                        if (v.material == "") then
                            model:SetMaterial("")
                        elseif (model:GetMaterial() != v.material) then
                            model:SetMaterial( v.material )
                        end
                       
                        if (v.skin and v.skin != model:GetSkin()) then
                            model:SetSkin(v.skin)
                        end
                       
                        if (v.bodygroup) then
                            for k, v in pairs( v.bodygroup ) do
                                if (model:GetBodygroup(k) != v) then
                                    model:SetBodygroup(k, v)
                                end
                            end
                        end
                       
                        if (v.surpresslightning) then
                            render.SuppressEngineLighting(true)
                        end
                       
                        render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
                        render.SetBlend(v.color.a/255)
                        model:DrawModel()
                        render.SetBlend(1)
                        render.SetColorModulation(1, 1, 1)
                       
                        if (v.surpresslightning) then
                            render.SuppressEngineLighting(false)
                        end
                       
                    end
                end
            end
       
            function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )
               
                local bone, pos, ang
                if (tab.rel and tab.rel != "") then
                   
                    local v = basetab[tab.rel]
                   
                    if (!v) then return end
                   
                    -- Technically, if there exists an element with the same name as a bone
                    -- you can get in an infinite loop. Let's just hope nobody's that stupid.
                    pos, ang = self:GetBoneOrientation( basetab, v, ent )
                   
                    if (!pos) then return end
                   
                    pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
                    ang:RotateAroundAxis(ang:Up(), v.angle.y)
                    ang:RotateAroundAxis(ang:Right(), v.angle.p)
                    ang:RotateAroundAxis(ang:Forward(), v.angle.r)
                       
                else
               
                    bone = ent:LookupBone(bone_override or tab.bone)
 
                    if (!bone) then return end
                   
                    pos, ang = Vector(0,0,0), Angle(0,0,0)
                    local m = ent:GetBoneMatrix(bone)
                    if (m) then
                        pos, ang = m:GetTranslation(), m:GetAngles()
                    end
                   
                    if (IsValid(self.Owner) and self.Owner:IsPlayer() and
                        ent == self.Owner:GetViewModel() and self.ViewModelFlip) then
                        ang.r = -ang.r -- Fixes mirrored models
                    end
               
                end
               
                return pos, ang
            end
 
            function SWEP:CreateModels( tab )
 
                if (!tab) then return end
 
                -- Create the clientside models here because Garry says we cannot do it in the render hook
                for k, v in pairs( tab ) do
                    if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and
                            string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then
                       
                        v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)
                        if (IsValid(v.modelEnt)) then
                            v.modelEnt:SetPos(self:GetPos())
                            v.modelEnt:SetAngles(self:GetAngles())
                            v.modelEnt:SetParent(self)
                            v.modelEnt:SetNoDraw(true)
                            v.createdModel = v.model
                        else
                            v.modelEnt = nil
                        end
                       
                    elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite)
                        and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then
                       
                        local name = v.sprite.."-"
                        local params = { ["$basetexture"] = v.sprite }
                        -- make sure we create a unique name based on the selected options
                        local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }
                        for i, j in pairs( tocheck ) do
                            if (v[j]) then
                                params["$"..j] = 1
                                name = name.."1"
                            else
                                name = name.."0"
                            end
                        end
 
                        v.createdSprite = v.sprite
                        v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)
                       
                    end
                end
               
            end
           
            /**************************
                Global utility code
            **************************/
 
            // Fully copies the table, meaning all tables inside this table are copied too and so on (Normal table. Copy copies only their reference).
            // Does not copy entities of course.
            // WARNING: do not use on tables that contain themselves somewhere down the line or you will get an infinite loop
            function table.FullCopy( tab )
 
                if (!tab) then return nil end
               
                local res = {}
                for k, v in pairs( tab ) do
                    if (type(v) == "table") then
                        res[k] = table.FullCopy(v) -- recursion ho!
                    elseif (type(v) == "Vector") then
                        res[k] = Vector(v.x, v.y, v.z)
                    elseif (type(v) == "Angle") then
                        res[k] = Angle(v.p, v.y, v.r)
                    else
                        res[k] = v
                    end
                end
               
                return res
            end
end