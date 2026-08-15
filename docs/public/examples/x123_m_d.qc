// Created by Crowbar 0.74

$modelname "dqr/mw2/x123/x123_m_d.mdl"

$bodygroup "body"
{
	studio "att_wm_p24_pi_golf17_mag_v0_LOD0.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "mw2\x123\mag\"

$cbox 0 0 0 0 0 0

$bbox -1.692 -0.566 -0.781 1.404 0.566 4.805

$definebone "tag_mag_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_mag1" "tag_mag_attach" -0.004001 0 3.384 17.487246 0 0 0 0 0 0 0 0
$definebone "j_ammo_02" "j_mag1" 0.432529 0 1.08304 -17.487246 0 0 0 0 0 0 0 0
$definebone "j_ammo_03" "j_mag1" 0.417257 0 0.675619 -17.487246 0 0 0 0 0 0 0 0
$definebone "j_ammo_04" "j_mag1" 0.42136 0 0.273254 -17.487246 0 0 0 0 0 0 0 0
$definebone "j_follower" "j_mag1" 0.35043 0.04 -0.210418 -17.487246 0 0 0 0 0 0 0 0
$definebone "j_mag2" "tag_mag_attach" -0.004001 0 3.384 17.487246 0 0 0 0 0 0 0 0
$definebone "j_ammo_07" "tag_mag_attach" -0.589001 0 4.163 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"x123_m_d_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$keyvalues
{
}
