if CustomizableWeaponry then

	AddCSLuaFile()
	AddCSLuaFile("sh_sounds.lua")
	include("sh_sounds.lua")

	util.PrecacheModel("models/weapons/Rambotnic/v_cw2_skorpion_vz61.mdl")
	util.PrecacheModel("models/weapons/Rambotnic/w_cw2_skorpion_vz61.mdl")

	CustomizableWeaponry:registerAmmo("7.65x17MM", "7.65x17MM Rounds", 7.65, 17)

	if CLIENT then
		SWEP.DrawCrosshair = false
		SWEP.PrintName = "Skorpion Vz. 61"
		SWEP.CSMuzzleFlashes = true
		SWEP.ViewModelMovementScale = 0.8
		
		function SWEP:IndividualThink()
			if self.dt.State == CW_AIMING then
				self.ViewModelMovementScale = 0.2
			else
				self.ViewModelMovementScale = 0.8
			end
		end
		
		SWEP.IconLetter = "l"
		killicon.Add("cw_tr09_skorpion", "vgui/kills/cw_tr09_skorpion_kill", Color(255, 80, 0, 150))
		SWEP.SelectIcon = surface.GetTextureID("vgui/kills/cw_tr09_skorpion_select")
		
		SWEP.MuzzleEffect = "muzzleflash_pistol"
		SWEP.PosBasedMuz = true
		SWEP.SnapToGrip = true
		SWEP.Shell = "smallshell"
		SWEP.ShellScale = 0.7
		SWEP.ShellOffsetMul = 1
		SWEP.ShellPosOffset = {x = 0.5, y = -3, z = -3}
		
		SWEP.CustomizePos = Vector(5, -1, -2)
		SWEP.CustomizeAng = Vector(25, 30, 15)
		
		SWEP.IronsightPos = Vector(-1.74, -2, 0.8)
		SWEP.IronsightAng = Vector(-0.32, 0, 0)
		SWEP.ZoomAmount = 10
		SWEP.FOVPerShot = 0
		
		SWEP.AlternativePos = Vector(-0.5, 1, -0.5)
		SWEP.AlternativeAng = Vector(0, 0, 0)
		
		SWEP.SprintPos = Vector(4, -1, 1)
		SWEP.SprintAng = Vector(-25, 35, -15)
		
		SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
		
		SWEP.BaseArm = "Bip01 L Clavicle"
		SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
		SWEP.BoltBone = "Skorp_Charger"
		SWEP.BoltShootOffset = Vector(-3.2, 0, 0)
		SWEP.CustomizationMenuScale = 0.01
		
		SWEP.AttachmentModelsVM = {
			["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "Skorp_Body", pos = Vector(8.3, -2.1, -5.05), angle = Angle(0, 90, 180), size = Vector(0.75, 0.75, 0.75)},
			["md_insight_x2"] = { type = "Model", model = "models/cw2/attachments/pistollaser.mdl", bone = "Skorp_Body", pos = Vector(2.06, -1.55, -5.97), angle = Angle(180, 0, -90), size = Vector(0.1, 0.1, 0.1), bodygroups = {[1] = 1}}
		}
		
		SWEP.LaserPosAdjust = Vector(-0.5, 0, -1)
		SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	end

	SWEP.StockBGs = {main = 2, regular = 0, fold = 1}
	SWEP.MagBGs = {main = 3, regular = 0, skorp30 = 1}
	SWEP.LuaViewmodelRecoil = false
	SWEP.DontMoveBoltOnHipFire = true

	SWEP.Attachments = {
		[1] = {header = "Barrel", offset = {-500, -250}, atts = {"md_tundra9mm"}},
		[2] = {header = "Laser", offset = {-500, 200}, atts = {"md_insight_x2"}},
		[3] = {header = "Magazine", offset = {150, 450}, atts = {"skorp_30rnd"}},
		[4] = {header = "Stock", offset = {700, 200}, atts = {"skorp_stock"}},
		["+reload"] = {header = "Ammo", offset = {700, -250}, atts = {"am_magnum", "am_matchgrade"}}
	}

	SWEP.Animations = {
		fire = {"shoot1", "shoot2", "shoot3"},
		reload = "reload",
		reload_empty = "reload_empty",
		idle = "idle",
		draw = "draw"
	}
		
	SWEP.Sounds = {
		draw = {
			{time = 0, sound = "CW_SKORPION_DEPLOY"}
		},

		reload = {
			[1] = {time = 0.3, sound = "CW_SKORPION_MAGOUT"},
			[2] = {time = 1.6, sound = "CW_SKORPION_MAGIN"},
			[3] = {time = 1.65, sound = "CW_SKORPION_FOLEY"}
		},
		
		reload_empty = {
			[1] = {time = 0.3, sound = "CW_SKORPION_MAGOUT"},
			[2] = {time = 1.6, sound = "CW_SKORPION_MAGIN"},
			[3] = {time = 2.5, sound = "CW_SKORPION_BOLTPULL"},
			[4] = {time = 2.75, sound = "CW_SKORPION_BOLTFOWARD"},
			[5] = {time = 2.85, sound = "CW_SKORPION_FOLEY"}
		}
	}

	SWEP.SpeedDec = 15

	SWEP.Slot = 1
	SWEP.SlotPos = 0
	SWEP.NormalHoldType = "pistol"
	SWEP.RunHoldType = "passive"
	SWEP.FireModes = {"auto", "semi"}
	SWEP.Base = "cw_base"
	SWEP.Category = "CW 2.0 Rambotnic"

	SWEP.Author	= "Rambotnic"
	SWEP.Contact = "Via Steam: http://steamcommunity.com/id/therambotniczeronove/"
	SWEP.Purpose = "To kill bad guys. Duh!"
	SWEP.Instructions = "Press your primary PEW-PEW key to kill the bad guys."

	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false
	SWEP.ViewModel = "models/weapons/Rambotnic/v_cw2_skorpion_vz61.mdl"
	SWEP.WorldModel = "models/weapons/Rambotnic/w_cw2_skorpion_vz61.mdl"
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/Rambotnic/w_cw2_skorpion_vz61.mdl"
	SWEP.WMPos = Vector(-1, -2, -0.5)
	SWEP.WMAng = Vector(0, 0, 180)

	SWEP.Spawnable = true
	SWEP.AdminSpawnable = true

	SWEP.Primary.ClipSize = 20
	SWEP.Primary.DefaultClip = 100
	SWEP.Primary.Automatic = true
	SWEP.Primary.Ammo = "7.65x17MM"

	SWEP.FireDelay = 0.07055
	SWEP.FireSound = "CW_SKORPION_FIRE"
	SWEP.FireSoundSuppressed = "CW_SKORPION_FIRE_SUPPRESSED"
	SWEP.Recoil = 0.6

	SWEP.HipSpread = 0.04
	SWEP.AimSpread = 0.004
	SWEP.VelocitySensitivity = 1.7
	SWEP.MaxSpreadInc = 0.04
	SWEP.SpreadPerShot = 0.01
	SWEP.SpreadCooldown = 0.1
	SWEP.Shots = 1
	SWEP.Damage = 24
	SWEP.DeployTime = 0.65

	SWEP.ReloadSpeed = 1.15
	SWEP.ReloadTime = 2.3
	SWEP.ReloadHalt = 2.3
	SWEP.ReloadTime_Empty = 3.7
	SWEP.ReloadHalt_Empty = 3.7
	SWEP.SnapToIdlePostReload = true

end