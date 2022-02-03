// Created by Crowbar 0.29.0.0

$ModelName "v_cw2_mk18.mdl"

$BodyGroup "studio" {
	studio "body.smd"
}

$BodyGroup "hands" {
	studio "hands.smd"
	blank
}

$BodyGroup "sights" {
	studio "mp7_sights.smd"
	studio "troy_sights.smd"
	blank
}

$BodyGroup "tritium" {
	blank
	studio "tritium.smd"
}

$BodyGroup "magazines" {
	studio "default_mag.smd"
	studio "pmag.smd"
	studio "60roundmag.smd"
}

$BodyGroup "stocks" {
	studio "default_stock.smd"
	studio "m4stock.smd"
	studio "m16stock.smd"
}


$SurfaceProp "default"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models\weapons\V_models\MK18\"
$CDMaterials "models\weapons\V_models\hands\"

$TextureGroup "skinfamilies"
{
	{
		"m4_rails_col.vmt"
		"handguard_d.vmt"
		"body.vmt"
		"mp7_diffuse.vmt"
		"pmag.vmt"
		"ExtendedMag_Col.vmt"
		"stock.vmt"
		"m4furniture_col.vmt"
	}
	{
		"m4_rails_col_scifi.vmt"
		"handguard_d_scifi.vmt"
		"body_scifi.vmt"
		"mp7_diffuse_scifi.vmt"
		"pmag_scifi.vmt"
		"extendedmag_col_scifi.vmt"
		"stock_scifi.vmt"
		"m4furniture_col_scifi.vmt"
	}
}

$Attachment "1" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "2" "shell_ejection" 0 0 0 rotate 0 0 0

$CBox 0 0 0 0 0 0

$BBox -5.464 -9.154 -12.884 19.834 7.22 0.215


$SectionFrames 30 292

$Sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE_SILENCED" 1
	fadein 0
	fadeout 0
	fps 30
}

$Sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD_SILENCED" 1
	{ event 5004 1 "mk18.Cloth" }
	{ event 5004 14 "mk18.Magout" }
	{ event 5004 51 "mk18.Magin" }
	{ event 5004 73 "mk18.Boltpull" }
	{ event 5004 93 "mk18.Cloth" }
	fadein 0.2
	fadeout 0.2
	fps 35
}

$Sequence "shoot1" {
	"anims\shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 0 "muzzle_pistol_smoke follow_attachment 1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "shoot2" {
	"anims\shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 0 "muzzle_pistol_smoke follow_attachment 1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "shoot3" {
	"anims\shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 0 "muzzle_pistol_smoke follow_attachment 1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$Sequence "first_draw" {
	"anims\first_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "mk18.cloth" }
	{ event 5004 8 "mk18.Boltpull" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "draw" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "mk18.cloth" }
	fadein 0.2
	fadeout 0.2
	fps 30
}
