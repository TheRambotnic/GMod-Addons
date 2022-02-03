// Created by Crowbar 0.71

$modelname "weapons\v_cw2_skorpion_vz61.mdl"

$bodygroup "studio"
{
	studio "reference.smd"
}
$bodygroup "hands"
{
	studio "hands.smd"
}
$bodygroup "stock"
{
	studio "stock.smd"
	studio "stock_unfolded.smd"
}
$bodygroup "magazines"
{
	studio "mag.smd"
	studio "30rndmag.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0.601 -2.395 -6.318

$cdmaterials "models\weapons\V_models\SlaYeR's_Vz.61\"
$cdmaterials "models\weapons\v_models\hands\"

$attachment "1" "Muzzle_Flash" 0 0 0 rotate 0 0 0
$attachment "2" "Shell_Eject" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -10.99 -8.409 -10.495 17.26 8.617 -0.632

$definebone "Skorp_Magazine" "" -1.182319 -8.854492 -4.210777 0 89.999982 0 0 0 0 0 0 0
$definebone "Skorp_Charger" "" -1.184689 -8.82041 -4.200648 0 89.999982 0 0 0 0 0 0 0
$definebone "Skorp_Bolt" "" -1.184688 -8.820412 -4.200648 0 89.999982 0 0 0 0 0 0 0
$definebone "Skorp_FireSelector" "" -1.184689 -8.82041 -4.200648 0 89.999982 0 0 0 0 0 0 0
$definebone "Skorp_MagRelease" "" -1.184688 -8.820412 -4.200648 0 89.999982 0 0 0 0 0 0 0
$definebone "Skorp_Bullets" "" -1.184689 -8.820411 -4.200648 0 89.999982 0 0 0 0 0 0 0
$definebone "Skorp_Bullets001" "" -1.182319 -8.854492 -4.879589 0 89.999982 0 0 0 0 0 0 0
$definebone "Skorp_Body" "" -7.706025 -11.417287 -3.75037 0 -89.999927 89.999982 0 0 0 0 0 0
$definebone "Muzzle_Flash" "" -1.740075 -17.058102 -1.650112 0 -89.999982 0 0 0 0 0 0 0
$definebone "Shell_Eject" "" -1.718364 -10.717278 -1.230253 -69.999918 -179.999964 89.999982 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "" 1.510186 2.670961 -6.828427 0.004125 0 -0.039076 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 5.853648 0 0 -0.104221 -89.622805 -89.845224 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 9.961164 0 0 0 -0.729261 0 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 8.503067 0 0 -0.48266 0.986576 -89.951454 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 0.756619 0.677738 -1.164276 26.75707 24.397461 99.663313 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 1.815093 0 -0.000003 0.000002 12.472147 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 1.031527 -0.000002 0.000001 0 11.714239 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 3.560264 0.118227 -1.221193 3.125714 5.505953 9.669291 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 1.161263 0.000001 0 0 19.24789 0 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" 0.705673 -0.000004 -0.000001 0.000001 24.755396 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" 3.535867 -0.001417 -0.449377 0.556915 9.319502 5.599804 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" 1.25942 0 0 0.000001 30.239918 0 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 0.945209 0.000002 -0.000001 0 23.883295 0 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" 3.379947 -0.050748 0.292731 -3.079076 16.275385 -7.944231 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" 1.267426 -0.000003 0 0 30.13362 0 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" 0.855791 0 -0.000001 0 25.611954 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger4" "Bip01 L Hand" 3.272117 0.110096 1.013747 -3.908088 22.484523 -10.975866 0 0 0 0 0 0
$definebone "Bip01 L Finger41" "Bip01 L Finger4" 0.753933 -0.000001 0 0 21.277877 0.000002 0 0 0 0 0 0
$definebone "Bip01 L Finger42" "Bip01 L Finger41" 0.703494 0.000002 -0.000001 -0.000001 17.192283 0.000002 0 0 0 0 0 0
$definebone "Bip01 L ForeTwist" "Bip01 L UpperArm" 9.961164 0 0 0 -0.729261 0.006933 0 0 0 0 0 0
$definebone "Bip01 L ForeTwist1" "Bip01 L ForeTwist" 1.417176 0 0 0 0 0.006933 0 0 0 0 0 0
$definebone "Bip01 L ForeTwist2" "Bip01 L ForeTwist1" 1.417181 0 0 0 0 0.006933 0 0 0 0 0 0
$definebone "Bip01 L ForeTwist3" "Bip01 L ForeTwist2" 1.417176 0 0 0 0 0.006933 0 0 0 0 0 0
$definebone "Bip01 L ForeTwist4" "Bip01 L ForeTwist3" 1.417179 0 0 0 0 0.006933 0 0 0 0 0 0
$definebone "Bip01 L ForeTwist5" "Bip01 L ForeTwist4" 1.417176 0 0 0 0 0.006933 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "" -1.505977 2.670953 -6.827188 -0.042972 -179.999745 -179.96095 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 5.853648 0 0 0.103935 -89.622518 89.892325 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 9.961161 0.000001 0 0 -0.729261 0 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 8.503067 0 0 0.48266 0.986576 89.951454 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" 0.756623 0.677738 1.164276 -26.757068 24.397463 -99.663313 0 0 0 0 0 0
$definebone "Bip01 R Finger01" "Bip01 R Finger0" 1.815093 0 -0.000001 -0.000003 12.472149 0 0 0 0 0 0 0
$definebone "Bip01 R Finger02" "Bip01 R Finger01" 1.031526 -0.000002 0 -0.000003 11.714235 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" 3.560266 0.118225 1.221194 -3.125713 5.505953 -9.669292 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 1.161268 0.000001 -0.000002 -0.000001 19.247895 0.000003 0 0 0 0 0 0
$definebone "Bip01 R Finger12" "Bip01 R Finger11" 0.705667 0.000002 0 -0.000002 24.755396 0.000002 0 0 0 0 0 0
$definebone "Bip01 R Finger2" "Bip01 R Hand" 3.535859 -0.001417 0.44938 -0.556915 9.319503 -5.599804 0 0 0 0 0 0
$definebone "Bip01 R Finger21" "Bip01 R Finger2" 1.25943 0.000002 0 -0.000001 30.239918 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger22" "Bip01 R Finger21" 0.945207 0 0 -0.000001 23.883297 0 0 0 0 0 0 0
$definebone "Bip01 R Finger3" "Bip01 R Hand" 3.379945 -0.050749 -0.29273 3.079075 16.275381 7.944232 0 0 0 0 0 0
$definebone "Bip01 R Finger31" "Bip01 R Finger3" 1.267437 -0.000002 0 0 30.133623 0 0 0 0 0 0 0
$definebone "Bip01 R Finger32" "Bip01 R Finger31" 0.855783 0 0 -0.000001 25.611954 0 0 0 0 0 0 0
$definebone "Bip01 R Finger4" "Bip01 R Hand" 3.272117 0.110096 -1.013746 3.908087 22.484525 10.975866 0 0 0 0 0 0
$definebone "Bip01 R Finger41" "Bip01 R Finger4" 0.75394 -0.000001 0 0 21.277877 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger42" "Bip01 R Finger41" 0.703498 0.000002 0 0.000001 17.192288 0 0 0 0 0 0 0
$definebone "Bip01 R ForeTwist" "Bip01 R UpperArm" 9.961161 0.000001 0 0 -0.729261 -0.006933 0 0 0 0 0 0
$definebone "Bip01 R ForeTwist1" "Bip01 R ForeTwist" 1.417178 0 0 0 0 -0.006933 0 0 0 0 0 0
$definebone "Bip01 R ForeTwist2" "Bip01 R ForeTwist1" 1.417181 0 0 0 0 -0.006933 0 0 0 0 0 0
$definebone "Bip01 R ForeTwist3" "Bip01 R ForeTwist2" 1.417176 0 0 0 0 -0.006933 0 0 0 0 0 0
$definebone "Bip01 R ForeTwist4" "Bip01 R ForeTwist3" 1.41718 0 0 0 0 -0.006933 0 0 0 0 0 0
$definebone "Bip01 R ForeTwist5" "Bip01 R ForeTwist4" 1.417176 0 0 0 0 -0.006933 0 0 0 0 0 0


$sectionframes 30 171

$sequence "idle" {
	"v_cw2_skorpion_vz61_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 100
	fadeout 0.2
	fps 30
}

$sequence "shoot1" {
	"v_cw2_skorpion_vz61_anims\shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 80" }
	fadein 0.2
	fadeout 100
	snap
	fps 30
}

$sequence "shoot2" {
	"v_cw2_skorpion_vz61_anims\shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 80" }
	fadein 0.2
	fadeout 100
	snap
	fps 30
}

$sequence "shoot3" {
	"v_cw2_skorpion_vz61_anims\shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 80" }
	fadein 0.2
	fadeout 100
	snap
	fps 30
}

$sequence "reload_empty" {
	"v_cw2_skorpion_vz61_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 18 "Vz.Magout" }
	{ event 5004 74 "Vz.Magin" }
	{ event 5004 114 "Vz.Bolt" }
	{ event 5004 145 "Vz.Foley" }
	fadein 0.2
	fadeout 100
	snap
	fps 44
}

$sequence "reload" {
	"v_cw2_skorpion_vz61_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 18 "Vz.Magout" }
	{ event 5004 74 "Vz.Magin" }
	{ event 5004 103 "Vz.Foley" }
	fadein 0.2
	fadeout 100
	snap
	fps 44
}

$sequence "draw" {
	"v_cw2_skorpion_vz61_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Vz.Deploy" }
	{ event 5004 24 "Vz.Foley" }
	fadein 0.2
	fadeout 100
	snap
	fps 31
}

$collisionmodel "v_cw2_skorpion_vz61_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
