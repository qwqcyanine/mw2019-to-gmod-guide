// Created by Crowbar 0.74

$modelname "dqr/mw2/x123/x123_b_d.mdl"

$bodygroup "bar_1"
{
	studio "att_vm_p24_pi_golf18_barrel_v0_LOD0.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "mw2/x123/bar/"
$cdmaterials "mw2/x123/"

$cbox 0 0 0 0 0 0

$bbox -9.147 -1.396 -4.275 0 1.389 0.638

$attachment "muzzle" "tag_flash_attachment" 0 0 0 rotate 0 0 0
$attachment "silencer" "tag_silencer" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -10.627 -0.492 -1.694 0 0.65 3.445

$definebone "tag_barrel_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_barrel" "tag_barrel_attach" 4.462 0 0.302 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "j_barrel" 3.017 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_flash_attachment" "j_barrel" 3.017 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_slide" "tag_barrel_attach" 3.673 0 0.292 0 0 0 0 0 0 0 0 0
$definebone "j_fireselect" "j_slide" -2.856 -0.494 -0.05 0 0 0 0 0 0 0 0 0
$definebone "tag_tip" "j_barrel" 3.018 0 0 0 0 0 0 0 0 0 0 0





$sequence "reference" {
	"anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$keyvalues
{
}
