if CustomizableWeaponry then

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

util.PrecacheModel("models/weapons/Rambotnic/v_cw2_mp9.mdl")
util.PrecacheModel("models/weapons/Rambotnic/w_cw2_mp9.mdl")

local USE_OLD_WELEMENTS = true

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "BT MP9"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
	function SWEP:IndividualThink()
		if self.dt.State == CW_AIMING then
			self.ViewModelMovementScale = 0.3
		else
			self.ViewModelMovementScale = 1
		end
	end
	
	SWEP.IconLetter = "d"
	killicon.Add("cw_tr09_mp9", "vgui/kills/cw_tr09_mp9_kill", Color(255, 80, 0, 150))
	SWEP.SelectIcon = surface.GetTextureID("vgui/kills/cw_tr09_mp9_select")
	
	SWEP.MuzzleEffect = "muzzleflash_OTS"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -5, y = -1.5, z = -3}
	
	SWEP.IronsightPos = Vector(-2.762, -2.5, 0.560)
	SWEP.IronsightAng = Vector(-0.08, -0.38, 5)
	SWEP.ZoomAmount = 5
	SWEP.FOVPerShot = 0.45
	
	SWEP.MicroT1Pos = Vector(-2.695, 0.5, -0.16)
	SWEP.MicroT1Ang = Vector(0, 0, 5)
	
	SWEP.CmorePos = Vector(-2.675, -4, -0.2)
	SWEP.CmoreAng = Vector(0, 0, 5)
	
	SWEP.WS_CMOREPos = Vector(-2.665, -4, -0.22)
	SWEP.WS_CMOREAng = Vector(0, 0, 5)
	
	SWEP.WS_BarskaPos = Vector(-2.695, -4, -0.19)
	SWEP.WS_BarskaAng = Vector(0, 0, 5)
	
	SWEP.ReflexPos = Vector(-2.7, -4.2, -0.035)
	SWEP.ReflexAng = Vector(0, 0, 5)
	
	SWEP.CoD4ReflexPos = Vector(-2.675, -4.5, 0.01)
	SWEP.CoD4ReflexAng = Vector(0, 0, 5)
	
	SWEP.TrijiconPos = Vector(-2.63, -4.2, -0.145)
	SWEP.TrijiconAng = Vector(0, 0, 5)
		
	SWEP.EoTechPos = Vector(-2.66, -3.5, -0.325)
	SWEP.EoTechAng = Vector(0, 0, 5)
	
	SWEP.EoTech553Pos = Vector(-2.68, -4, -0.22)
	SWEP.EoTech553Ang = Vector(0, 0, 5)
	
	SWEP.WS_EoTech557Pos = Vector(-2.675, -3.5, -0.3)
	SWEP.WS_EoTech557Ang = Vector(0, 0, 5)
	
	SWEP.HoloPos = Vector(-2.64, -3.5, -0.27)
	SWEP.HoloAng = Vector(0, 0, 5)
	
	SWEP.AimpointPos = Vector(-2.675, -4.2, -0.12)
	SWEP.AimpointAng = Vector(0, 0, 5)
	
	SWEP.CoD4TascoPos = Vector(-2.015, -2, 0.48)
	SWEP.CoD4TascoAng = Vector(0, 0, 0)
	
	SWEP.FAS2AimpointPos = Vector(-2.675, -4, -0.04)
	SWEP.FAS2AimpointAng = Vector(0, 0, 5)
	
	SWEP.SprintPos = Vector(2, 0, -1)
	SWEP.SprintAng = Vector(-10, 35, -10)
	
	SWEP.AlternativePos = Vector(-0.7, 0.4, -0.45)
	SWEP.AlternativeAng = Vector(0, 0, 4)
	
	SWEP.CustomizePos = Vector(3.5, -0.5, -0.85)
	SWEP.CustomizeAng = Vector(20, 35, 10)

	SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 3, roll = 1, forward = 1, pitch = 1}
	SWEP.SprintViewNormals = {x = 1, y = -1, z = 1}

	SWEP.AttachmentModelsVM = {
		["md_microt1"] = {type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "gun", pos = Vector(0, -0.322, 2.42), angle = Angle(0, 180, 0), size = Vector(0.35, 0.349, 0.349)},
		["md_eotech"] = {type = "Model", model = "models/wystan/attachments/2otech557sight.mdl", bone = "gun", pos = Vector(0.23, -8.462, -6.659), angle = Angle(2.7, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_ws_c_more"] = {type = "Model", model = "models/attachments/white_snow/ws_c_more.mdl", bone = "gun", rel = "", pos = Vector(-0.05, 0.317, 2.37), angle = Angle(0, 0, 0), size = Vector(0.22, 0.22, 0.22)},
		["md_ws_barska"] = {type = "Model", model = "models/attachments/white_snow/ws_barska.mdl", bone = "gun", rel = "", pos = Vector(-0.010, 0.239, 2.360), angle = Angle(0, 0, 0), size = Vector(0.16, 0.16, 0.16)},
		["md_fas2_eotech"] = {type = "Model", model = "models/c_fas2_eotech.mdl", bone = "gun", rel = "", pos = Vector(0.01, 2.6, 1.9), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_fas2_aimpoint"] = {type = "Model", model = "models/c_fas2_aimpoint_rigged.mdl", bone = "gun", rel = "", pos = Vector(0.01, 2.7, 1.7), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85)},
		["md_fas2_holo"] = {type = "Model", model = "models/v_holo_sight_kkrc.mdl", bone = "gun", rel = "", pos = Vector(0.01, -1.9, -1.06), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_fas2_holo_aim"] = {type = "Model", model = "models/v_holo_sight_orig_hx.mdl", bone = "gun", rel = "", pos = Vector(0.01, -1.9, -1.06), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_ws_scifi_silencer"] = {type = "Model", model = "models/attachments/White_Snow/ws_scifi_silencer.mdl", bone = "gun", rel = "", pos = Vector(-4.58, -47.6, -8.41), angle = Angle(0, 0, 0), size = Vector(1.7, 1.7, 1.7)},
		["md_cod4_reflex"] = {type = "Model", model = "models/v_cod4_reflex.mdl", bone = "gun", rel = "", pos = Vector(0, -2.4, 0.28), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_cod4_aimpoint_v2"] = {type = "Model", model = "models/v_cod4_aimpoint.mdl", bone = "gun", rel = "", pos = Vector(0, 2.4, -1.3), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_aimpoint"] = {type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "gun", pos = Vector(-0.175, -3.917, -1.693), angle = Angle(0, 0, 0), size = Vector(0.7, 0.7, 0.7)},
		["md_ws_eotech557"] = {type = "Model", model = "models/attachments/ws_eotech557.mdl", bone = "gun", pos = Vector(-0.77, -6.09, -2.44), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85)},
		["md_reflex"] = {type = "Model", model = "models/attachments/kascope.mdl", bone = "gun", rel = "", pos = Vector(-0.01, 2.259, 2.46), angle = Angle(0, 0, 0), size = Vector(0.55, 0.55, 0.55)},
		["md_cmore"] = {type = "Model", model = "models/attachments/cmore.mdl", bone = "gun", rel = "", pos = Vector(0, 0.319, 2.26), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6)},
		["md_trijicon"] = {type = "Model", model = "models/att_trijicon.mdl", bone = "gun", rel = "", pos = Vector(0.04, 1.986, 0.3), angle = Angle(0, 0, 0), size = Vector(1.7, 1.7, 1.7)},
		["md_tundra9mm"] = {type = "Model", model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "gun", pos = Vector(0, 9.078, 0.07), angle = Angle(0, 180, 0), size = Vector(1, 1, 1)}
	}
	
	SWEP.WElements = {
		["md_microt1"] = {type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(0, -0.322, 2.42), angle = Angle(0, 180, 0), size = Vector(0.35, 0.349, 0.349), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_eotech"] = {type = "Model", model = "models/wystan/attachments/2otech557sight.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(0.23, -8.462, -6.659), angle = Angle(2.7, -90, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_ws_c_more"] = {type = "Model", model = "models/attachments/white_snow/ws_c_more.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.05, 0.317, 2.37), angle = Angle(0, 0, 0), size = Vector(0.22, 0.22, 0.22), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_ws_barska"] = {type = "Model", model = "models/attachments/white_snow/ws_barska.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.010, 0.239, 2.360), angle = Angle(0, 0, 0), size = Vector(0.16, 0.16, 0.16), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_fas2_eotech"] = {type = "Model", model = "models/c_fas2_eotech.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.01, 2.6, 1.9), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_fas2_aimpoint"] = {type = "Model", model = "models/c_fas2_aimpoint_rigged.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.01, 2.7, 1.7), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_fas2_holo"] = {type = "Model", model = "models/v_holo_sight_kkrc.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.01, -1.9, -1.06), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_fas2_holo_aim"] = {type = "Model", model = "models/v_holo_sight_orig_hx.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.01, -1.9, -1.06), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_ws_scifi_silencer"] = {type = "Model", model = "models/attachments/White_Snow/ws_scifi_silencer.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-4.58, -47.6, -8.41), angle = Angle(0, 0, 0), size = Vector(1.7, 1.7, 1.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_cod4_reflex"] = {type = "Model", model = "models/v_cod4_reflex.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, -2.4, 0.28), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_cod4_aimpoint_v2"] = {type = "Model", model = "models/v_cod4_aimpoint.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 2.4, -1.3), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_aimpoint"] = {type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(-0.175, -3.917, -1.693), angle = Angle(0, 0, 0), size = Vector(0.7, 0.7, 0.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_ws_eotech557"] = {type = "Model", model = "models/attachments/ws_eotech557.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(-0.77, -6.09, -2.44), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_reflex"] = {type = "Model", model = "models/attachments/kascope.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.01, 2.259, 2.46), angle = Angle(0, 0, 0), size = Vector(0.55, 0.55, 0.55), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_cmore"] = {type = "Model", model = "models/attachments/cmore.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 0.319, 2.26), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_trijicon"] = {type = "Model", model = "models/att_trijicon.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.04, 1.986, 0.3), angle = Angle(0, 0, 0), size = Vector(1.7, 1.7, 1.7), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}},
		["md_tundra9mm"] = {type = "Model", model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "ValveBiped.Bip01_R_Hand", pos = Vector(0, 9.078, 0.07), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}}
	}

	SWEP.LaserPosAdjust = {x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = {p = 2, y = 180, r = 0}
	SWEP.CustomizationMenuScale = 0.013
end

SWEP.StockBGs = {main = 2, regular = 0, fold = 1}
SWEP.LuaViewmodelRecoil = false

if CLIENT then
    function SWEP:createCustomVM(mdl)
        self.CW_VM = self:createManagedCModel(mdl, RENDERGROUP_BOTH)
        self.CW_VM:SetNoDraw(true)
        self.CW_VM:SetupBones()
        self.CW_VM:SetOwner( self.Owner ) -- FIX: PlayerWeaponColor can't find owner for proxy.
       
        if self.ViewModelFlip then
            local mtr = Matrix()
            mtr:Scale(Vector(1, -1, 1))
           
            self.CW_VM:EnableMatrix("RenderMultiply", mtr)
        end
    end
end

SWEP.AttachmentDependencies = {
	["md_ws_scifi_silencer"] = {"mp9_chromosynth"}}

if CustomizableWeaponry_KK_HK416 and CustomizableWeaponry_G4P_UECW and CustomizableWeaponry_WS_Pack then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {50, -400}, atts = {"md_microt1", "md_cmore", "md_ws_c_more", "md_reflex", "md_cod4_reflex", "md_ws_barska", "md_trijicon", "md_eotech", "md_fas2_eotech", "md_ws_eotech557", "md_fas2_holo", "md_aimpoint", "md_cod4_aimpoint_v2", "md_fas2_aimpoint"}},
		[2] = {header = "Barrel", offset = {-300, -200}, atts = {"md_tundra9mm", "md_ws_scifi_silencer"}},
		[3] = {header = "Stock", offset = {950, 350}, atts = {"mp9_stock"}},
		["impulse 100"] = {header = "Skin", offset = {950, 0}, atts = {"mp9_tan", "mp9_chromosynth"}},
		["+reload"] = {header = "Ammo", offset = {-300, 250}, atts = {"am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_WS_Pack and CustomizableWeaponry_KK_HK416 then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {150, -400}, atts = {"md_microt1", "md_ws_c_more", "md_cod4_reflex", "md_ws_barska", "md_eotech", "md_fas2_eotech", "md_ws_eotech557", "md_fas2_holo", "md_aimpoint", "md_cod4_aimpoint_v2", "md_fas2_aimpoint"}},
		[2] = {header = "Barrel", offset = {-300, -200}, atts = {"md_tundra9mm", "md_ws_scifi_silencer"}},
		[3] = {header = "Stock", offset = {950, 350}, atts = {"mp9_stock"}},
		["impulse 100"] = {header = "Skin", offset = {950, 0}, atts = {"mp9_tan", "mp9_chromosynth"}},
		["+reload"] = {header = "Ammo", offset = {-300, 250}, atts = {"am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_G4P_UECW and CustomizableWeaponry_KK_HK416 then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {150, -400}, atts = {"md_microt1", "md_cmore", "md_reflex", "md_cod4_reflex", "md_trijicon", "md_eotech", "md_fas2_eotech", "md_fas2_holo", "md_aimpoint", "md_cod4_aimpoint_v2", "md_fas2_aimpoint"}},
		[2] = {header = "Barrel", offset = {-300, -200}, atts = {"md_tundra9mm"}},
		[3] = {header = "Stock", offset = {950, 350}, atts = {"mp9_stock"}},
		["impulse 100"] = {header = "Skin", offset = {950, 0}, atts = {"mp9_tan", "mp9_chromosynth"}},
		["+reload"] = {header = "Ammo", offset = {-300, 250}, atts = {"am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_WS_Pack and CustomizableWeaponry_G4P_UECW then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {150, -400}, atts = {"md_microt1", "md_cmore", "md_ws_c_more", "md_reflex", "md_ws_barska", "md_trijicon", "md_eotech", "md_ws_eotech557", "md_aimpoint"}},
		[2] = {header = "Barrel", offset = {-300, -200}, atts = {"md_tundra9mm", "md_ws_scifi_silencer"}},
		[3] = {header = "Stock", offset = {950, 350}, atts = {"mp9_stock"}},
		["impulse 100"] = {header = "Skin", offset = {950, 0}, atts = {"mp9_tan", "mp9_chromosynth"}},
		["+reload"] = {header = "Ammo", offset = {-300, 250}, atts = {"am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_KK_HK416 then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {200, -400}, atts = {"md_microt1", "md_cod4_reflex", "md_eotech", "md_fas2_eotech", "md_fas2_holo", "md_aimpoint", "md_cod4_aimpoint_v2", "md_fas2_aimpoint"}},
		[2] = {header = "Barrel", offset = {-300, -200}, atts = {"md_tundra9mm"}},
		[3] = {header = "Stock", offset = {950, 350}, atts = {"mp9_stock"}},
		["impulse 100"] = {header = "Skin", offset = {950, 0}, atts = {"mp9_tan", "mp9_chromosynth"}},
		["+reload"] = {header = "Ammo", offset = {-300, 250}, atts = {"am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_G4P_UECW then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {200, -400}, atts = {"md_microt1", "md_cmore", "md_reflex", "md_trijicon", "md_eotech", "md_aimpoint"}},
		[2] = {header = "Barrel", offset = {-300, -200}, atts = {"md_tundra9mm"}},
		[3] = {header = "Stock", offset = {950, 350}, atts = {"mp9_stock"}},
		["impulse 100"] = {header = "Skin", offset = {950, 0}, atts = {"mp9_tan", "mp9_chromosynth"}},
		["+reload"] = {header = "Ammo", offset = {-300, 250}, atts = {"am_magnum", "am_matchgrade"}}
	}
elseif CustomizableWeaponry_WS_Pack then
	SWEP.Attachments = {[1] = {header = "Sight", offset = {200, -400}, atts = {"md_microt1", "md_ws_c_more", "md_ws_barska", "md_eotech", "md_ws_eotech557", "md_aimpoint"}},
		[2] = {header = "Barrel", offset = {-300, -200}, atts = {"md_tundra9mm", "md_ws_scifi_silencer"}},
		[3] = {header = "Stock", offset = {950, 350}, atts = {"mp9_stock"}},
		["impulse 100"] = {header = "Skin", offset = {950, 0}, atts = {"mp9_tan", "mp9_chromosynth"}},
		["+reload"] = {header = "Ammo", offset = {-300, 250}, atts = {"am_magnum", "am_matchgrade"}}
	}
else
	SWEP.Attachments = {[1] = {header = "Sight", offset = {400, -400}, atts = {"md_microt1", "md_eotech", "md_aimpoint"}},
		[2] = {header = "Barrel", offset = {-300, -200}, atts = {"md_tundra9mm"}},
		[3] = {header = "Stock", offset = {950, 350}, atts = {"mp9_stock"}},
		["impulse 100"] = {header = "Skin", offset = {950, 0}, atts = {"mp9_tan", "mp9_chromosynth"}},
		["+reload"] = {header = "Ammo", offset = {-300, 250}, atts = {"am_magnum", "am_matchgrade"}}
	}
end

SWEP.Animations = {fire = {"fire2"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_MP9_DEPLOY"}},

	reload = {[1] = {time = 0.6, sound = "CW_MP9_CLIPOUT"},
	[2] = {time = 1.7, sound = "CW_MP9_CLIPIN"}}}

SWEP.SpeedDec = 15
SWEP.MoveType = 1

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0 - Rambotnic"

SWEP.Author			= "Rambotnic & Niggarto el Negro"
SWEP.Contact		= "Via Steam: http://steamcommunity.com/id/therambotniczeronove/"
SWEP.Purpose		= "To kill bad guys. Duh!"
SWEP.Instructions	= "Press your primary PEW-PEW key to kill the bad guys."

SWEP.ViewModelFOV	= 75
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/Rambotnic/v_cw2_mp9.mdl"
SWEP.WorldModel		= "models/weapons/Rambotnic/w_cw2_mp9.mdl"
SWEP.DrawTraditionalWorldModel = false
SWEP.WM = "models/weapons/Rambotnic/w_cw2_mp9.mdl"
SWEP.WMPos = Vector(-1, -0.5, -1)
SWEP.WMAng = Vector(0, 0, 180)

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 150
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.0667
SWEP.FireSound = "CW_MP9_FIRE"
SWEP.FireSoundSuppressed = "CW_MP9_FIRE_SUPPRESSED"
SWEP.Recoil = 0.6

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.006
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 23
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 1
SWEP.ReloadTime_Empty = 1
SWEP.ReloadHalt = 2.4
SWEP.ReloadHalt_Empty = 2.4

if USE_OLD_WELEMENTS then

if CLIENT then

	CustomizableWeaponry.callbacks:addNew("initialize", "cw_tr09_mp9", function(wep) -- instead of copy pasting 50+ lines of func, 5 lines can do even more
		if wep and wep:GetClass() == "cw_tr09_mp9" then
			wep:CreateModels(wep.WElements)
		end
	end)
	
	function SWEP:WElementThink()
		
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
        else
			self.WElements.md_fas2_holo.hide = true
		end
		
		if self.ActiveAttachments.md_aimpoint then
            self.WElements.md_aimpoint.hide = false
        else
			self.WElements.md_aimpoint.hide = true
		end
		
		if self.ActiveAttachments.md_cod4_aimpoint_v2 then
            self.WElements.md_cod4_aimpoint_v2.hide = false
        else
			self.WElements.md_cod4_aimpoint_v2.hide = true
		end
		
		if self.ActiveAttachments.md_fas2_aimpoint then
            self.WElements.md_fas2_aimpoint.hide = false
        else
			self.WElements.md_fas2_aimpoint.hide = true
		end
		
		if self.ActiveAttachments.md_tundra9mm then
            self.WElements.md_tundra9mm.hide = false
        else
			self.WElements.md_tundra9mm.hide = true
		end
		
		if self.ActiveAttachments.md_ws_scifi_silencer then
            self.WElements.md_ws_scifi_silencer.hide = false
        else
			self.WElements.md_ws_scifi_silencer.hide = true
		end
		
		if self.ActiveAttachments.mp9_stock then
			if self.WMEnt then
				self.WMEnt:SetBodygroup(3,1)
			end
		else
			if self.WMEnt then
				self.WMEnt:SetBodygroup(3,0)
			end
		end
		
		if self.ActiveAttachments.mp9_tan then
			if self.WMEnt then
				self.WMEnt:SetSkin(1)
			end
		elseif self.ActiveAttachments.mp9_chromosynth then
			if self.WMEnt then
				self.WMEnt:SetSkin(2)
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
	end
end