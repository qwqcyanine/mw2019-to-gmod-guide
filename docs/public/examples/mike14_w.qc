// Created by Crowbar 0.74

$modelname "dqr/mw2/x123/w_x123.mdl"

$bodygroup "receiver_0"
{    
	studio "att_vm_p24_pi_golf18_rec_v0_LOD0.smd"
	blank
}

$surfaceprop "weapon"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "mw2/x123/"
$cdmaterials "mw2/x123/mag/"
$cdmaterials "mw2/x123/psg/"

$attachment "muzzle" "tag_flash" 0 0 0 rotate 0 0 0
$attachment "shell_eject" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "reflex" "tag_reflex" 0 0 0 rotate 0 0 0
$attachment "align" "tag_align_gun" 0 0 0 rotate 0 0 0


$cbox 0 0 0 0 0 0

$bbox -21.941 -1.988 -5.807 3.388 2.408 3.006

$definebone "ValveBiped.Bip01_R_Hand" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_pistol_offset" "ValveBiped.Bip01_R_Hand" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_trigger" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "bone_b08a114867c9bac" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "bone_880eaf2b81f03c9" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_barrel_attach" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_mag_attach" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "j_hammer" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_slide_stop" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_bolt" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_stock_attach" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_reflex" "j_slide" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_laser_attach" "tag_pistol_offset" 2.25 0 0.185 0 0 0 0 0 0 0 0 0
$definebone "tag_pistolgrip_attach" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_flash" "tag_barrel_attach" 4.131 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_brass" "tag_pistol_offset" 10.376001 -1.808002 0.77 -14.998262 -95.002536 -0.000171 0 0 0 0 0 0
$definebone "tag_ik_loc_le" "tag_pistol_offset" 10.938001 1.104001 -2.039 5.199834 -37.041581 -131.961236 0 0 0 0 0 0
$definebone "tag_ik_loc_ri" "tag_pistol_offset" -0.071 -2.571002 -4.713 0 0 -90.000009 0 0 0 0 0 0
$definebone "j_charging_handle" "tag_pistol_offset" 8.261 -1.103001 0 0 90.000009 0 0 0 0 0 0 0
$definebone "tag_thermal" "tag_pistol_offset" 1.368325 -1.116235 2.249224 0 0 0 0 0 0 0 0 0
$definebone "j_gun" "" 0 0 0 0 0 0 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "tag_pistol_offset"
$bonemerge "tag_barrel_attach"
$bonemerge "tag_mag_attach"
$bonemerge "tag_stock_attach"
$bonemerge "tag_reflex"
$bonemerge "tag_taclight"
$bonemerge "tag_ik_loc_le"
$bonemerge "tag_ik_loc_ri"
$bonemerge "tag_rack_attach"
$bonemerge "tag_pistolgrip_attach"
$bonemerge "j_hammer"
$bonemerge "j_slide_stop"
$bonemerge "j_bolt"
$bonemerge "tag_laser_attach"


$sequence "reference" {
	"w_stg44_test_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_mike4_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}



$keyvalues
{
}
