// Created by Crowbar 0.74

$modelname "dqr/mw2/x123/v_x123.mdl"

$bodygroup "receiver_0"
{    
	studio "att_vm_p24_pi_golf18_rec_v0_LOD0.smd"
	blank
}
$bodygroup "ammo"
{    
	studio "ammo.smd"
	blank
}

$surfaceprop "weapon"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "mw2/x123/"
$cdmaterials "mw2/x123/mag/"
$cdmaterials "mw2/x123/psg/"

$attachment "shell_eject" "tag_brass" 0 0 0 rotate -30 0 0
$attachment "camera" "tag_playerhelmet" 0 0 0 rotate 0 0 0
$attachment "reflex" "tag_reflex" 0 0 0 rotate 0 0 0
$attachment "holo" "tag_holo" 0 0 0 rotate 0 0 0
$attachment "scope" "tag_scope" 0 0 0 rotate 0 0 0
$attachment "acog" "tag_acog_2" 0 0 0 rotate 0 0 0
$attachment "hybrid" "tag_hybrid" 0 0 0 rotate 0 0 0
$attachment "thermal" "tag_thermal" 0 0 0 rotate 0 0 0
$attachment "laser" "tag_laser_attach" 0 0 0 rotate 0 0 0
$attachment "align" "tag_align_gun" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -8.163 -33.701 -64.32 36.52 14.585 64.32

$definebone "tag_origin" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_view" "tag_origin" -0.106 3.193533 65.086945 0 -89.999982 0 0 0 0 0 0 0
$definebone "tag_ads" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_torso" "tag_ads" -0.904 0 -11.806 0 0 0 0 0 0 0 0 0
$definebone "j_mainroot" "tag_torso" 0 0 -14.313999 -89.999982 90.003479 0 0 0 0 0 0 0
$definebone "j_spinelower" "j_mainroot" 3.533001 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_spineupper" "j_spinelower" 6.25 0.000003 0 0 0 0 0 0 0 0 0 0
$definebone "j_clavicle_le" "j_spineupper" 8.980732 -2.943577 -2.869731 84.803 120.473977 120.327825 0 0 0 0 0 0
$definebone "j_shoulder_le" "j_clavicle_le" 5.784615 -0.000028 0.000229 47.175679 -3.685279 1.00321 0 0 0 0 0 0
$definebone "j_elbow_le" "j_shoulder_le" 11.530247 -0.000299 0.000183 1.654167 4.07211 0.000007 0 0 0 0 0 0
$definebone "j_elbowdq_le" "j_elbow_le" 0.119205 -0.27576 -0.000145 -0.000031 23.48321 -0.000064 0 0 0 0 0 0
$definebone "j_wrist_le" "j_elbow_le" 11.041271 -0.000359 -0.000641 -2.335176 -2.116058 6.80216 0 0 0 0 0 0
$definebone "j_metaindex_le_1" "j_wrist_le" 0.610313 -0.939534 0.070271 -7.625747 -8.521767 -95.17469 0 0 0 0 0 0
$definebone "j_index_le_1" "j_metaindex_le_1" 2.619614 0.000153 0.000405 -3.027621 27.825844 5.94517 0 0 0 0 0 0
$definebone "j_index_le_2" "j_index_le_1" 1.867863 -0.000053 -0.000523 0.000008 23.16541 -0.00001 0 0 0 0 0 0
$definebone "j_index_le_3" "j_index_le_2" 0.920017 -0.000299 -0.000418 0.00001 19.588561 -0.000009 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger12" "j_index_le_3" -0.175201 -0.011333 0.025321 -6.75986 -4.163811 -172.98913 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger11" "j_index_le_2" -0.336788 -0.098448 -0.065715 -4.727008 1.5025 -171.607219 0 0 0 0 0 0
$definebone "j_indexbulge_le_1" "j_index_le_1" 1.200439 0.398914 -0.000742 0.921718 0.408317 -0.542318 0 0 0 0 0 0
$definebone "j_proc_index_le_1" "j_index_le_1" 0.000101 0.099689 -0.000888 -1.256325 -12.010135 -6.87746 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger1" "j_index_le_1" -0.117605 -0.346886 -0.103427 -1.238903 4.131231 -170.569262 0 0 0 0 0 0
$definebone "j_metamid_le_1" "j_wrist_le" 0.639954 -0.199152 0.060169 -8.125647 -4.125299 -94.931543 0 0 0 0 0 0
$definebone "j_mid_le_1" "j_metamid_le_1" 2.659569 0.000099 -0.000828 -1.823315 36.031413 -4.058265 0 0 0 0 0 0
$definebone "j_mid_le_2" "j_mid_le_1" 2.008778 -0.000076 -0.00022 0.00001 18.078418 0.000004 0 0 0 0 0 0
$definebone "j_mid_le_3" "j_mid_le_2" 1.099682 -0.000423 0.000134 0.000006 26.567906 0.000008 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger22" "j_mid_le_3" -0.403351 0.18055 -0.027793 -5.246387 -11.417021 -176.939056 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger21" "j_mid_le_2" -0.546238 -0.07707 -0.118231 -4.296023 2.743784 -175.922164 0 0 0 0 0 0
$definebone "j_proc_mid_le_1" "j_mid_le_1" 0.000217 0.098995 0.000206 0.620696 -13.706199 -1.07848 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger2" "j_mid_le_1" -0.204796 -0.239426 -0.186196 -2.257325 -0.113975 -174.770402 0 0 0 0 0 0
$definebone "j_metapinky_le_1" "j_wrist_le" 0.60018 1.080259 -0.339485 -12.175833 6.511706 -103.578275 0 0 0 0 0 0
$definebone "j_pinky_le_1" "j_metapinky_le_1" 2.199732 0.000523 0.00012 0.062357 29.037125 -1.86205 0 0 0 0 0 0
$definebone "j_pinky_le_2" "j_pinky_le_1" 1.179317 0.000214 -0.000694 0.000015 21.835751 0.000015 0 0 0 0 0 0
$definebone "j_pinky_le_3" "j_pinky_le_2" 0.68013 -0.001225 0.000442 0.000005 31.299632 0.000023 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "j_pinky_le_3" -0.019482 0.147083 0.079203 2.210761 -3.471775 165.803389 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "j_pinky_le_2" -0.123848 0.072738 0.029507 -3.473666 5.433632 166.053729 0 0 0 0 0 0
$definebone "j_proc_pinky_le_1" "j_pinky_le_1" -0.000196 0.099625 -0.000034 0.000003 -17.996719 -0.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger4" "j_pinky_le_1" 0.34557 -0.379066 -0.368974 -11.212708 27.586869 162.344881 0 0 0 0 0 0
$definebone "j_metaring_le_1" "j_wrist_le" 0.609755 0.400167 -0.009403 -7.991977 1.981737 -99.407263 0 0 0 0 0 0
$definebone "j_ring_le_1" "j_metaring_le_1" 2.56041 -0.000164 0.00003 1.525055 40.211864 3.256352 0 0 0 0 0 0
$definebone "j_proc_ring_le_1" "j_ring_le_1" 0.00013 0.100431 0.000323 1.325374 -14.945335 -0.62533 0 0 0 0 0 0
$definebone "j_ring_le_2" "j_ring_le_1" 1.708755 0.000723 -0.000201 0.00001 17.841369 0.000002 0 0 0 0 0 0
$definebone "j_ring_le_3" "j_ring_le_2" 1.019997 -0.000795 -0.000213 0.000009 26.165217 0.000006 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger32" "j_ring_le_3" -0.122314 0.129976 0.030934 1.334598 3.438555 168.887383 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger31" "j_ring_le_2" -0.336082 -0.04981 -0.040218 -3.399291 5.3682 169.331045 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger3" "j_ring_le_1" -0.107193 -0.394081 -0.198659 -5.900992 9.186674 170.473967 0 0 0 0 0 0
$definebone "j_proc_metaknuckle_le_1" "j_wrist_le" 0.657073 0.008398 0.040352 -7.529082 -0.000809 -95.451675 0 0 0 0 0 0
$definebone "j_proc_knuckle_le_1" "j_proc_metaknuckle_le_1" 1.799658 -0.00024 0.00023 -1.908564 27.378624 1.569156 0 0 0 0 0 0
$definebone "j_thumb_le_1" "j_wrist_le" 0.629731 -0.690042 -0.229774 13.699832 -72.195018 15.937481 0 0 0 0 0 0
$definebone "j_thumb_le_2" "j_thumb_le_1" 2.099438 0.000477 -0.000412 16.278933 38.714445 -28.606881 0 0 0 0 0 0
$definebone "j_thumb_le_3" "j_thumb_le_2" 1.290012 -0.000221 0.000591 -0.000022 16.090193 0.000076 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger02" "j_thumb_le_3" -0.23177 -0.119981 -0.00169 9.880517 1.166934 5.964226 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger01" "j_thumb_le_2" -0.080179 -0.100325 0.236382 11.347351 -3.84706 2.03397 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger0" "j_thumb_le_1" 0.447235 -0.48885 0.7995 17.295607 17.209089 -33.763968 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_hand" "j_wrist_le" -0.671117 -0.105824 0.391094 -5.45733 0.120429 83.106839 0 0 0 0 0 0
$definebone "j_wristfronttwist1_le" "j_elbow_le" 10.600048 -0.000348 -0.000626 -0.000026 -0.000073 -0.000052 0 0 0 0 0 45
$definebone "valvebiped.bip01_l_forearm" "j_elbow_le" -1.079338 0.913674 0.013863 -1.665267 -5.199315 -0.100146 0 0 0 0 0 0
$definebone "j_shouldertwist_le" "j_shoulder_le" 0.500225 0.000133 -0.000061 -0.000024 -0.000012 0.000007 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_upperarm" "j_shoulder_le" -1.293232 0.358266 0.044594 -0.002887 2.333989 -0.250719 0 0 0 0 0 0
$definebone "j_teres_le" "j_clavicle_le" 5.999792 -0.000402 -4.000004 0 -0.000001 -0.000045 0 0 0 0 0 0
$definebone "j_clavicle_ri" "j_spineupper" 10.8936 -3.008277 3.542333 -77.058502 160.088064 -158.379109 0 0 0 0 0 0
$definebone "j_shoulder_ri" "j_clavicle_ri" 5.784617 -0.000033 -0.00024 -41.256108 -2.906042 -15.31367 0 0 0 0 0 0
$definebone "j_elbow_ri" "j_shoulder_ri" 11.530243 -0.000299 -0.000187 -1.762699 5.736001 0.000014 0 0 0 0 0 0
$definebone "j_elbowdq_ri" "j_elbow_ri" 0.119221 -0.275761 0.000137 0 23.483425 0.000078 0 0 0 0 0 0
$definebone "j_wrist_ri" "j_elbow_ri" 11.041271 -0.000331 0.000641 4.479623 3.716843 16.11578 0 0 0 0 0 0
$definebone "j_metaindex_ri_1" "j_wrist_ri" 0.610316 -0.939535 -0.070282 2.028052 -16.234759 90.245213 0 0 0 0 0 0
$definebone "j_index_ri_1" "j_metaindex_ri_1" 2.619613 0.000149 -0.000405 4.09161 22.032394 -12.423796 0 0 0 0 0 0
$definebone "j_index_ri_2" "j_index_ri_1" 1.86787 -0.000053 0.000524 0.000013 23.506163 -0.00007 0 0 0 0 0 0
$definebone "j_index_ri_3" "j_index_ri_2" 0.919384 0.000414 0.000088 0.000018 20.98458 0.000052 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger12" "j_index_ri_3" 0.057266 -0.077173 -0.022277 6.123736 -3.012954 175.989318 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger11" "j_index_ri_2" -0.092777 -0.127136 0.068685 4.739925 3.976842 174.687566 0 0 0 0 0 0
$definebone "j_indexbulge_ri_1" "j_index_ri_1" 1.199587 0.399277 0.000411 -0.921768 0.408398 0.54223 0 0 0 0 0 0
$definebone "j_proc_index_ri_1" "j_index_ri_1" 0.000122 0.099686 0.000886 1.256214 -12.010059 6.87742 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger1" "j_index_ri_1" 0.127419 -0.357056 0.135158 2.198621 6.799106 173.491313 0 0 0 0 0 0
$definebone "j_metamid_ri_1" "j_wrist_ri" 0.639951 -0.199152 -0.060165 4.731722 -12.269833 92.620364 0 0 0 0 0 0
$definebone "j_mid_ri_1" "j_metamid_ri_1" 2.659561 0.000111 0.000826 4.965379 29.886391 -3.852524 0 0 0 0 0 0
$definebone "j_mid_ri_2" "j_mid_ri_1" 2.008768 -0.000874 -0.000381 0.000015 22.851755 -0.000067 0 0 0 0 0 0
$definebone "j_mid_ri_3" "j_mid_ri_2" 1.100361 0.000008 0.000468 0.000015 13.235857 -0.000006 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger22" "j_mid_ri_3" -0.196663 -0.045367 0.000946 5.591001 1.462033 179.840097 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger21" "j_mid_ri_2" -0.284039 -0.136448 0.110417 5.176693 2.249446 178.696259 0 0 0 0 0 0
$definebone "j_proc_mid_ri_1" "j_mid_ri_1" 0.000235 0.09901 -0.000205 -0.62068 -13.706189 1.078461 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger2" "j_mid_ri_1" 0.088821 -0.358681 0.228047 3.93801 4.069668 177.092189 0 0 0 0 0 0
$definebone "j_metapinky_ri_1" "j_wrist_ri" 0.600181 1.080263 0.339485 0.569601 -4.204821 99.642543 0 0 0 0 0 0
$definebone "j_pinky_ri_1" "j_metapinky_ri_1" 2.199733 0.000519 -0.000122 -3.143256 -15.459215 -11.802834 0 0 0 0 0 0
$definebone "j_pinky_ri_2" "j_pinky_ri_1" 1.180096 0.000374 0.000078 0.000014 42.581848 -0.000025 0 0 0 0 0 0
$definebone "j_pinky_ri_3" "j_pinky_ri_2" 0.679462 -0.000813 0.000175 0.000026 31.299475 -0.000015 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "j_pinky_ri_3" 0.044266 0.020131 0.001684 -6.810861 8.319805 -165.211395 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "j_pinky_ri_2" -0.019512 -0.016531 0.038578 2.882263 4.401956 -158.352991 0 0 0 0 0 0
$definebone "j_proc_pinky_ri_1" "j_pinky_ri_1" -0.000196 0.099628 0.000031 -0.000016 -17.996666 0.000033 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "j_pinky_ri_1" 0.036894 -0.634449 0.266284 9.986703 28.127337 -160.489037 0 0 0 0 0 0
$definebone "j_metaring_ri_1" "j_wrist_ri" 0.609756 0.400167 0.009407 6.377534 -8.375783 89.527258 0 0 0 0 0 0
$definebone "j_ring_ri_1" "j_metaring_ri_1" 2.560411 -0.00016 -0.00003 2.903875 31.385327 -0.065504 0 0 0 0 0 0
$definebone "j_proc_ring_ri_1" "j_ring_ri_1" 0.000122 0.100433 -0.000323 -1.325361 -14.945174 0.625311 0 0 0 0 0 0
$definebone "j_ring_ri_2" "j_ring_ri_1" 1.708736 0.000725 0.000199 0.000015 22.801565 -0.000009 0 0 0 0 0 0
$definebone "j_ring_ri_3" "j_ring_ri_2" 1.019798 -0.000032 -0.000396 0.000016 22.132046 -0.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger32" "j_ring_ri_3" 0.117519 -0.000896 0.000818 -1.319561 10.370471 -171.377806 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger31" "j_ring_ri_2" -0.054367 -0.124935 0.050263 2.387932 8.095622 -171.609049 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger3" "j_ring_ri_1" 0.238007 -0.57946 0.16766 4.366524 16.815302 -172.442879 0 0 0 0 0 0
$definebone "j_proc_metaknuckle_ri_1" "j_wrist_ri" 0.657078 0.008401 -0.040359 7.529073 -0.000805 95.451696 0 0 0 0 0 0
$definebone "j_proc_knuckle_ri_1" "j_proc_metaknuckle_ri_1" 1.799658 -0.000244 -0.00023 1.908585 27.378538 -1.569116 0 0 0 0 0 0
$definebone "j_thumb_ri_1" "j_wrist_ri" 0.629738 -0.690042 0.229774 -27.518692 -72.612609 -22.684605 0 0 0 0 0 0
$definebone "j_thumb_ri_2" "j_thumb_ri_1" 2.099438 0.000481 0.000404 -14.152511 34.287174 46.322831 0 0 0 0 0 0
$definebone "j_thumb_ri_3" "j_thumb_ri_2" 1.290005 -0.000225 -0.000587 0.000003 5.030396 0.000072 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger02" "j_thumb_ri_3" -0.043022 -0.28903 0.019093 -5.391078 13.441197 -17.099343 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger01" "j_thumb_ri_2" 0.088469 -0.255657 -0.212933 -11.0547 -1.752849 -14.173133 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger0" "j_thumb_ri_1" 0.552179 -0.334949 -0.689346 -12.569939 13.602824 37.990475 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_hand" "j_wrist_ri" -0.380543 -0.161674 -0.314842 4.533306 -6.729732 -92.423866 0 0 0 0 0 0
$definebone "j_wristfronttwist1_ri" "j_elbow_ri" 10.600052 -0.00032 0.000626 0.000007 0.000063 0.000012 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_forearm" "j_elbow_ri" -0.742136 0.982276 0.740597 5.279474 -5.403964 12.526018 0 0 0 0 0 0
$definebone "j_shouldertwist_ri" "j_shoulder_ri" 0.500244 0.000134 0.000053 0.000019 0.000005 0.000014 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_upperarm" "j_shoulder_ri" -0.983025 0.142274 1.280083 2.759046 3.723145 12.87759 0 0 0 0 0 0
$definebone "j_teres_ri" "j_clavicle_ri" 5.999796 -0.000418 4 0.000003 0 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_RH" "" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_pistol_offset" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_gun" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_slidelock" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_align_gun" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_barrel_attach" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_slide" "tag_barrel_attach" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "j_trigger" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_trigger_attach" "j_trigger" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "j_slidestoplever" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_magrelease" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_laser_attach" "tag_pistol_offset" 0 0 0 0 0 0 0.6 0 0 0 0 0

$definebone "tag_brass" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_ik_loc_ri" "tag_pistol_offset" -0.151477 -0.489000 -4.083269  -2.031333 -0.174476 -0.307400 0 0 0 0 0 0

$definebone "tag_mag_attach" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_align_gun" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_reflex" "j_slide" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_scope" "j_slide" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_thermal" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_acog_2" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_holo" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_acog_ads" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_hybrid" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_stock_attach" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_pistolgrip_attach" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_ik_loc_le" "tag_barrel_attach" 2.734000 1.666000 -2.028000  -1.792456 0.156749 -0.184848 0 0 0 0 0 0

$definebone "j_mag1" "tag_mag_attach" -1.323 0 0.184 0 0 0 0 0 0 0 0 0
$definebone "j_mag2" "tag_mag_attach" -1.323 0 0.184 0 0 0 0 0 0 0 0 0
$definebone "j_ammo_07" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0

$definebone "tag_sync" "tag_origin" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_camera_scripted" "tag_origin" -0.106 0 64.32 0 0 0 0 0 0 0 0 0
$definebone "tag_cambone" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_camera" "tag_cambone" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_weapon" "tag_torso" 19.220901 -3.1474 8.567799 0 0 -2.500674 0 0 0 0 0 0
$definebone "tag_player" "tag_camera" 0.106 0 -64.32 0 0 0 0 0 0 0 0 0
$definebone "tag_playerhelmet" "tag_camera" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_hip_le" "j_mainroot" 0 0 -4.867 -0.000019 -179.255091 180.000005 0 0 0 0 0 0
$definebone "j_hip_ri" "j_mainroot" 0 0 4.867 -0.000019 -179.255091 180.000005 0 0 0 0 0 0
$definebone "j_groinprotector" "j_mainroot" 4 -6.5 0 0 0.055978 0 0 0 0 0 0 0
$definebone "j_crotch" "j_mainroot" -6.5 0 0 89.999982 0 0 0 0 0 0 0 0
$definebone "j_hiptwist_le" "j_hip_le" 1.000088 -0.00003 0 0 0 0 0 0 0 0 0 0
$definebone "j_knee_le" "j_hip_le" 17.162516 -0.000404 0 0 6.830459 0 0 0 0 0 0 0
$definebone "j_hip_proc_le" "j_hip_le" 9.999887 -0.000304 0 0 0 0 0 0 0 0 0 0
$definebone "j_hiptwist_ri" "j_hip_ri" 1.000092 -0.00003 0 0 0 0 0 0 0 0 0 0
$definebone "j_knee_ri" "j_hip_ri" 17.162521 -0.000404 0 0 6.830459 0 0 0 0 0 0 0
$definebone "j_hip_proc_ri" "j_hip_ri" 9.499838 0.000211 0 0 0 0 0 0 0 0 0 0
$definebone "j_proc_spinelower" "j_spinelower" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_ankle_le" "j_knee_le" 17.749376 0.295515 0 0 -66.403393 0 0 0 0 0 0 0
$definebone "j_kneedq_le" "j_knee_le" 0.017889 0.299792 0 0 -3.413797 0 0 0 0 0 0 0
$definebone "tag_stowed_thigh" "j_hiptwist_ri" 12.283573 1.581456 -4.696 -4.969035 5.16722 83.781839 0 0 0 0 0 0
$definebone "j_ankle_ri" "j_knee_ri" 17.749376 0.295515 0 0 -66.403393 0 0 0 0 0 0 0
$definebone "j_kneedq_ri" "j_knee_ri" 0.017891 0.299792 0 0 -3.413797 0 0 0 0 0 0 0
$definebone "j_neck" "j_spineupper" 13.354 0 0 0 -16.850746 0 0 0 0 0 0 0
$definebone "j_spine4" "j_spineupper" 4.530998 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_proc_spineupper" "j_spineupper" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_ball_le" "j_ankle_le" 5.413524 0.000347 0 0 -29.682366 0 0 0 0 0 0 0
$definebone "j_ball_ri" "j_ankle_ri" 5.413525 0.000347 0 0 -29.682366 0 0 0 0 0 0 0
$definebone "tag_carry_attach" "j_clavicle_le" 4.662 -5.366333 4.825191 89.45619 -178.832234 89.93793 0 0 0 0 0 0
$definebone "j_head" "j_neck" 3.11697 -0.000444 0 0 16.850746 0 0 0 0 0 0 0
$definebone "j_chest" "j_spine4" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_eyeball_le" "j_head" 3.512001 -3.547 -1.066 89.999982 0 0 0 0 0 0 0 0
$definebone "j_eyeball_ri" "j_head" 3.456001 -3.517 1.169 89.999982 0 0 0 0 0 0 0 0
$definebone "j_head_end" "j_head" 6.233002 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_jaw" "j_head" -0.171997 -0.106 -0.902 58.967441 -179.596491 89.995228 0 0 0 0 0 0
$definebone "j_nvg" "j_head" 6.241997 -6.38 0 0 0 0 0 0 0 0 0 0
$definebone "j_shield_le" "j_elbow_le" 3.999435 -0.000527 -0.000332 -0.003154 0.001486 -49.665297 0 0 0 0 0 0
$definebone "j_shield_ri" "j_elbow_ri" 3.999897 0.000039 0.001007 0.000009 0.000003 18.333056 0 0 0 0 0 0
$definebone "j_helmet" "j_head_end" 1.598 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_proc_wristfronttwist1_le" "j_wristfronttwist1_le" -1.145531 0.00013 0.000675 -0.000002 0.000003 -0.000001 0 0 0 0 0 0
$definebone "tag_weapon_right" "j_wrist_le" 2.179619 0.848711 -0.758739 -25.275971 -28.653378 145.624769 0 0 0 0 0 0
$definebone "tag_accessory_right" "j_wrist_le" -9.580695 -27.862103 -37.184669 -7.073679 -32.571328 46.574537 0 0 0 0 0 0
$definebone "j_proc_metaindex_le_1" "j_wrist_le" 0.649932 -0.548295 0.093651 -7.528615 -6.420676 -95.449783 0 0 0 0 0 0
$definebone "j_proc_metapinky_le_1" "j_wrist_le" 0.665773 0.747221 -0.02919 -7.529121 5.441729 -95.451047 0 0 0 0 0 0
$definebone "tag_weapon_right" "j_wrist_ri" 13.171429 -2.504943 -0.868362 4.915919 2.901456 111.287728 0 0 0 0 0 0
$definebone "tag_knife_attach2" "j_wrist_ri" 2.762351 0.116951 1.523975 3.675686 99.912383 93.362443 0 0 0 0 0 0
$definebone "tag_accessory_right" "j_wrist_ri" 7.228319 7.928204 -3.925644 7.073686 -32.571342 133.425423 0 0 0 0 0 0
$definebone "j_proc_metaindex_ri_1" "j_wrist_ri" 0.650393 -0.54773 -0.092972 7.528616 -6.420683 95.44979 0 0 0 0 0 0
$definebone "j_proc_metapinky_ri_1" "j_wrist_ri" 0.665776 0.747221 0.02919 7.529124 5.441721 95.451067 0 0 0 0 0 0
$definebone "j_visor" "j_helmet" -4.481003 -0.202 0 0 0 0 0 0 0 0 0 0
$definebone "j_visor_inner" "j_helmet" -5.516998 -0.291 -0.001 0 0 0 0 0 0 0 0 0
$definebone "tag_wrist_attach_le" "j_proc_wristfronttwist1_le" -0.857691 0.104071 0.104683 9.392154 0.781066 1.348511 0 0 0 0 0 0
$definebone "j_proc_metaindex_le_2" "j_proc_metaindex_le_1" 1.899122 0.000423 -0.000439 -1.908588 27.378661 1.5691 0 0 0 0 0 0
$definebone "j_proc_idle_knuckle_le_1" "j_proc_metaknuckle_le_1" 1.799658 -0.000237 0.000231 -1.908584 27.378656 1.569101 0 0 0 0 0 0
$definebone "j_proc_orient_knuckle_le_1" "j_proc_metaknuckle_le_1" 1.799658 -0.000237 0.000231 -1.908584 27.378656 1.569101 0 0 0 0 0 0
$definebone "j_proc_metapinky_le_2" "j_proc_metapinky_le_1" 1.900309 -0.000141 -0.000517 -1.908589 27.378661 1.569101 0 0 0 0 0 0
$definebone "j_proc_metaindex_ri_2" "j_proc_metaindex_ri_1" 1.899439 -0.00032 -0.000151 1.908578 27.378677 -1.56912 0 0 0 0 0 0
$definebone "j_proc_idle_knuckle_ri_1" "j_proc_metaknuckle_ri_1" 1.799664 -0.00024 -0.000233 1.908582 27.378672 -1.569113 0 0 0 0 0 0
$definebone "j_proc_orient_knuckle_ri_1" "j_proc_metaknuckle_ri_1" 1.799664 -0.00024 -0.000233 1.908582 27.378672 -1.569113 0 0 0 0 0 0
$definebone "j_proc_metapinky_ri_2" "j_proc_metapinky_ri_1" 1.900726 0.000549 -0.000072 1.908581 27.378677 -1.569123 0 0 0 0 0 0
$definebone "j_thumb_le_4" "j_thumb_le_3" 0.599886 0.400185 -0.000027 0.000002 0.000003 -0.000005 0 0 0 0 0 0
$definebone "j_thumb_ri_4" "j_thumb_ri_3" 0.599892 0.400187 0.000031 0.000002 -179.999978 -0.000006 0 0 0 0 0 0
$definebone "j_index_le_4" "j_index_le_3" 0.599503 0.400694 0.000236 -0.000005 -0.000019 -0.000004 0 0 0 0 0 0
$definebone "j_index_ri_4" "j_index_ri_3" 0.600407 0.399631 -0.000468 -0.000016 -180.000005 0.000001 0 0 0 0 0 0

$bonemerge "tag_origin"
$bonemerge "tag_view"
$bonemerge "tag_ads"
$bonemerge "tag_torso"
$bonemerge "tag_pistol_offset"
$bonemerge "j_gun"
$bonemerge "j_mainroot"
$bonemerge "j_spinelower"
$bonemerge "j_spineupper"
$bonemerge "j_clavicle_le"
$bonemerge "j_clavicle_ri"
$bonemerge "j_shoulder_le"
$bonemerge "j_teres_le"
$bonemerge "j_shoulder_ri"
$bonemerge "j_teres_ri"
$bonemerge "j_shouldertwist_le"
$bonemerge "j_elbow_le"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "j_shouldertwist_ri"
$bonemerge "j_elbow_ri"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "j_wristfronttwist1_le"
$bonemerge "j_elbowdq_le"
$bonemerge "j_wrist_le"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "j_wristfronttwist1_ri"
$bonemerge "j_elbowdq_ri"
$bonemerge "j_wrist_ri"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "j_metaindex_le_1"
$bonemerge "j_metamid_le_1"
$bonemerge "j_metapinky_le_1"
$bonemerge "j_metaring_le_1"
$bonemerge "j_thumb_le_1"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "j_metaindex_ri_1"
$bonemerge "j_metamid_ri_1"
$bonemerge "j_metapinky_ri_1"
$bonemerge "j_metaring_ri_1"
$bonemerge "j_thumb_ri_1"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "j_index_le_1"
$bonemerge "j_mid_le_1"
$bonemerge "j_pinky_le_1"
$bonemerge "j_webbing_le_3"
$bonemerge "j_ring_le_1"
$bonemerge "j_thumb_le_ads"
$bonemerge "j_webbing_le_ads"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "j_index_ri_1"
$bonemerge "j_mid_ri_1"
$bonemerge "j_pinky_ri_1"
$bonemerge "j_webbing_ri_3"
$bonemerge "j_ring_ri_1"
$bonemerge "j_thumb_ri_ads"
$bonemerge "j_webbing_ri_ads"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "j_index_le_ads"
$bonemerge "j_indexbulge_le_1"
$bonemerge "j_proc_index_le_1"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "j_mid_le_ads"
$bonemerge "j_proc_mid_le_1"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "j_pinky_le_ads"
$bonemerge "j_proc_pinky_le_1"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "j_ring_le_ads"
$bonemerge "j_proc_ring_le_1"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "j_thumb_le_3"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "j_index_ri_ads"
$bonemerge "j_indexbulge_ri_1"
$bonemerge "j_proc_index_ri_1"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "j_mid_ri_ads"
$bonemerge "j_proc_mid_ri_1"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "j_pinky_ri_ads"
$bonemerge "j_proc_pinky_ri_1"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "j_ring_ri_ads"
$bonemerge "j_proc_ring_ri_1"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "j_thumb_ri_3"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "j_index_le_3"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "j_mid_le_3"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "j_pinky_le_3"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "j_ring_le_3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "j_index_ri_3"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "j_mid_ri_3"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "j_pinky_ri_3"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "j_ring_ri_3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Anim_Attachment_RH"
$bonemerge "tag_sync"
$bonemerge "tag_camera_scripted"
$bonemerge "tag_cambone"
$bonemerge "tag_camera"
$bonemerge "tag_weapon"
$bonemerge "tag_player"
$bonemerge "tag_playerhelmet"
$bonemerge "j_hip_le"
$bonemerge "j_hip_ri"
$bonemerge "j_groinprotector"
$bonemerge "j_crotch"
$bonemerge "j_hiptwist_le"
$bonemerge "j_knee_le"
$bonemerge "j_hip_proc_le"
$bonemerge "j_hiptwist_ri"
$bonemerge "j_knee_ri"
$bonemerge "j_hip_proc_ri"
$bonemerge "j_proc_spinelower"
$bonemerge "j_ankle_le"
$bonemerge "j_kneedq_le"
$bonemerge "tag_stowed_thigh"
$bonemerge "j_ankle_ri"
$bonemerge "j_kneedq_ri"
$bonemerge "j_neck"
$bonemerge "j_spine4"
$bonemerge "j_proc_spineupper"
$bonemerge "j_ball_le"
$bonemerge "j_ball_ri"
$bonemerge "tag_carry_attach"
$bonemerge "j_head"
$bonemerge "j_chest"
$bonemerge "j_eyeball_le"
$bonemerge "j_eyeball_ri"
$bonemerge "j_head_end"
$bonemerge "j_jaw"
$bonemerge "j_nvg"
$bonemerge "j_shield_le"
$bonemerge "j_shield_ri"
$bonemerge "j_helmet"
$bonemerge "j_proc_wristfronttwist1_le"
$bonemerge "j_webbing_le_1"
$bonemerge "tag_weapon_right"
$bonemerge "tag_accessory_right"
$bonemerge "j_proc_metaindex_le_1"
$bonemerge "j_proc_metaknuckle_le_1"
$bonemerge "j_proc_metapinky_le_1"
$bonemerge "j_webbing_ri_1"
$bonemerge "tag_weapon_right"
$bonemerge "tag_knife_attach2"
$bonemerge "tag_accessory_right"
$bonemerge "j_proc_metaindex_ri_1"
$bonemerge "j_proc_metaknuckle_ri_1"
$bonemerge "j_proc_metapinky_ri_1"
$bonemerge "j_visor"
$bonemerge "j_visor_inner"
$bonemerge "tag_wrist_attach_le"
$bonemerge "j_proc_metaindex_le_ads"
$bonemerge "j_proc_knuckle_le_1"
$bonemerge "j_proc_idle_knuckle_le_1"
$bonemerge "j_proc_orient_knuckle_le_1"
$bonemerge "j_proc_metapinky_le_ads"
$bonemerge "j_proc_metaindex_ri_ads"
$bonemerge "j_proc_knuckle_ri_1"
$bonemerge "j_proc_idle_knuckle_ri_1"
$bonemerge "j_proc_orient_knuckle_ri_1"
$bonemerge "j_proc_metapinky_ri_ads"
$bonemerge "j_thumb_le_4"
$bonemerge "j_thumb_ri_4"
$bonemerge "j_index_le_4"
$bonemerge "j_index_ri_4"
$bonemerge "tag_ik_loc_ri"
$bonemerge "tag_ik_loc_le"

$bonemerge "j_barrel"
$bonemerge "j_trigger"
$bonemerge "tag_barrel_attach"
$bonemerge "tag_laser_attach"
$bonemerge "tag_holo"
$bonemerge "tag_reflex"
$bonemerge "tag_mag_attach"
$bonemerge "j_mag1"
$bonemerge "j_mag2"
$bonemerge "tag_stock_attach"
$bonemerge "tag_pistolgrip_attach"
$bonemerge "j_slidestoplever"
$bonemerge "j_magrelease"
$bonemerge "j_slidelock"
$bonemerge "j_ammo_07"
$bonemerge "tag_brass"
$bonemerge "j_fireselect"
$bonemerge "tag_trigger_attach"

$sectionframes 30 29

$poseparameter "aim_offset" 0 1 loop 0
$poseparameter "jog_offset" 0 1 loop 0
$poseparameter "jog_loop" 0 1 loop 0
$poseparameter "walk_loop" 0 1 loop 0
$poseparameter "sprint_loop" 0 1 loop 0
$poseparameter "sprint_offset" 0 1 loop 0
$poseparameter "freefall_loop" 0 1 loop 0
$poseparameter "empty_offset" 0 1 loop 0
$poseparameter "firemode_offset" 0 1 loop 0

$ikchain "rhand" "j_wrist_ri" knee 0.707 0.707 0
$ikchain "lhand" "j_wrist_le" knee 0.707 0.707 0

$animation "a_firemode_idle_corrective_animation" "v_mike4_anims\a_firemode_idle_corrective_animation.smd" {
}

$animation "a_semi_override_additive_corrective_animation" "v_mike4_anims\a_semi_override_additive_corrective_animation.smd" {
}

$animation "a_empty_idle_to_sub_corrective_animation" "v_mike4_anims\a_empty_idle_to_sub_corrective_animation.smd" {
}

$animation "a_delta_empty_additive_for_offset_corrective_animation" "anims\corrective.smd" {
}

$animation "a_jog_offset_idle_corrective_animation" "v_romeo870_anims\a_jog_offset_idle_corrective_animation.smd" {
}

$animation "a_jog_offset_corrective_animation" "v_romeo870_anims\a_jog_offset_corrective_animation.smd" {
}

$animation "@a_jog_to_walk_corrective_animation" "v_romeo870_anims\@a_jog_to_walk_corrective_animation.smd" {
}

$animation "a_jog_idle_corrective_animation" "v_romeo870_anims\a_jog_idle_corrective_animation.smd" {
}

$animation "a_jog_corrective_animation" "v_romeo870_anims\a_jog_corrective_animation.smd" {
}

$animation "a_walk_idle_corrective_animation" "v_romeo870_anims\a_walk_idle_corrective_animation.smd" {
}

$animation "a_walk_corrective_animation" "v_romeo870_anims\a_walk_corrective_animation.smd" {
}

$animation "@a_walk_to_sprint_corrective_animation" "v_sprint\@a_walk_to_sprint_corrective_animation.smd" {
}

$animation "a_sprint_idle_corrective_animation" "v_sprint\a_sprint_idle_corrective_animation.smd" {
}

$animation "a_sprint_corrective_animation" "v_sprint\a_sprint_corrective_animation.smd" {
}

$animation "@a_sprint_to_walk_corrective_animation" "v_sprint\@a_sprint_to_walk_corrective_animation.smd" {
}

$animation "a_sprint_offset_idle_corrective_animation" "v_sprint\a_sprint_offset_idle_corrective_animation.smd" {
}

$animation "a_sprint_offset_corrective_animation" "v_sprint\a_sprint_offset_corrective_animation.smd" {
}

$animation "a_fidget_corrective_animation" "v_romeo870_anims\a_fidget_corrective_animation.smd" {
}

$animation "a_zerodiff_corrective_animation" "v_romeo870_anims\a_zerodiff_corrective_animation.smd" {
}

$animation "a_freefall_idle_corrective_animation" "v_romeo870_anims\a_freefall_idle_corrective_animation.smd" {
}

$animation "a_freefall_corrective_animation" "v_romeo870_anims\a_freefall_corrective_animation.smd" {
}

$animation "@a_landdelta_corrective_animation" "v_romeo870_anims\@a_landdelta_corrective_animation.smd" {
}

$animation "@a_jumpdelta_corrective_animation" "v_romeo870_anims\@a_jumpdelta_corrective_animation.smd" {
}

$animation "empty_idle_to_sub" "v_mike4_anims\empty_idle_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
}

$animation "a_empty_idle_to_sub" "v_mike4_anims\a_empty_idle_to_sub.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_empty_idle_to_sub_corrective_animation" 0
}

$animation "a_delta_empty_additive_for_offset" "anims\empty.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_delta_empty_additive_for_offset_corrective_animation" 0
}

$animation "aim_idle_to_sub" "x123_smd\vm_p24_pi_golf17_idle.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
}

$animation "a_aim_idle_to_sub" 	"x123_smd\vm_p24_pi_golf17_idle.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract aim_idle_to_sub 0
}

$animation "a_delta_ads_additive_for_offset" "anims\ads_add_1.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract aim_idle_to_sub 0
}

$animation "jog_offset_to_sub" "v_romeo870_anims\jog_offset_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 1
}

$animation "jog_idle_to_sub" "v_romeo870_anims\jog_idle_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
}

$animation "a_jog_offset_idle" "v_romeo870_anims\a_jog_offset_idle.smd" {
	fps 0.416
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_jog_offset_idle_corrective_animation" 0
}

$animation "a_jog_offset" "v_romeo870_anims\a_jog_offset.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_jog_offset_corrective_animation" 0
}

$animation "jog_out_to_sub" "anims\vm_ar_mike4_jog_to_walk.smd" {
	fps 30
}

$animation "a_jog_idle_to_sub" "v_romeo870_anims\a_jog_idle_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 72 72 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 72 72 target 1
}

$animation "a_jog_to_sub" "v_romeo870_anims\a_jog_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 72 72 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 72 72 target 1
}

$animation "a_jog_idle" "v_romeo870_anims\a_jog_idle.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_jog_idle_corrective_animation" 0
}

$animation "a_jog" "v_romeo870_anims\a_jog.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_jog_corrective_animation" 0
}

$animation "a_walk_idle_to_sub" "v_romeo870_anims\a_walk_idle_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 112 112 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 112 112 target 1
}

$animation "a_walk_to_sub" "v_romeo870_anims\a_walk_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 112 112 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 112 112 target 1
}

$animation "a_walk_idle" "v_romeo870_anims\a_walk_idle.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_walk_idle_corrective_animation" 0
}

$animation "a_walk" "v_romeo870_anims\a_walk.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_walk_corrective_animation" 0
}

$animation "sprint_in_to_sub" "v_sprint\sprint_in_to_sub.smd" {
	fps 32
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 23 23 target 1
}

$animation "a_sprint_idle_to_sub" "v_sprint\a_sprint_idle_to_sub.smd" {
	fps 32
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 64 64 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 64 64 target 1
}

$animation "a_sprint_to_sub" "v_sprint\a_sprint_to_sub.smd" {
	fps 32
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 64 64 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 64 64 target 1
}

$animation "a_sprint_idle" "v_sprint\a_sprint_idle.smd" {
	fps 32
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_sprint_idle_corrective_animation" 0
}

$animation "a_sprint" "v_sprint\a_sprint.smd" {
	fps 32
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_sprint_corrective_animation" 0
}

$animation sprint_out_to_sub "v_sprint\a_sprint_to_walk.smd"

$animation "sprint_offset_to_sub" "v_sprint\sprint_offset_to_sub.smd" {
	fps 32
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
}

$animation "sprint_idle_to_sub" "v_sprint\sprint_idle_to_sub.smd" {
	fps 32
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
}

$animation "a_sprint_offset_idle" "v_sprint\anims\a_sprint_offset_idle.smd" {
	fps 0.416
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_sprint_offset_idle_corrective_animation" 0
}

$animation "a_sprint_offset" "v_sprint\a_sprint_offset.smd" {
	fps 32
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_sprint_offset_corrective_animation" 0
}

$animation "a_normalidle_to_sub" "v_romeo870_anims\a_normalidle_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
}

$animation "fuckedpose_to_sub" "v_romeo870_anims\fuckedpose_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 770 770 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 770 770 target 1
}

$animation "a_zerodiff" "v_romeo870_anims\a_zerodiff.smd" {
	fps 0.0389
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_zerodiff_corrective_animation" 0
}

$animation "a_fidget" "v_romeo870_anims\a_fidget.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_fidget_corrective_animation" 0
}

$animation "freefall_idle_to_sub" "v_romeo870_anims\freefall_idle_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
}

$animation "freefall_to_sub" "v_romeo870_anims\freefall_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 99 99 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 99 99 target 1
}

$animation "a_freefall_idle" "v_romeo870_anims\a_freefall_idle.smd" {
	fps 0.303
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_freefall_idle_corrective_animation" 0
}

$animation "a_freefall" "v_romeo870_anims\a_freefall.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_freefall_corrective_animation" 0
}

$animation "jump_land_to_sub" "v_romeo870_anims\jump_land_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 22 22 target 1
}

$animation "jump_to_sub" "v_romeo870_anims\jump_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 18 18 target 1
}

$animation "fix_semi_add" "anims\semi_add.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract aim_idle_to_sub 0
}

$animation "firemode_idle_to_sub" "v_mike4_anims\firemode_idle_to_sub.smd" {
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 1 1 target 1
}

$animation "a_firemode_idle" "v_mike4_anims\a_firemode_idle.smd" {
	fps 0.416
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_firemode_idle_corrective_animation" 0
}

$animation "a_semi_override_additive" "anims\a_semi_override_additive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "a_semi_override_additive_corrective_animation" 0
}

$sequence "idle" {
	"x123_smd\vm_p24_pi_golf17_idle.smd"
	{ event 9011 0 "1" }
	{ event 9021 0 "1" }
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"	
	addlayer "empty_offset"
	addlayer "a_idle_active"
	addlayer "firemode_offset"
	fps 0.416
	ikrule rhand touch "tag_pistol_offset" usesource
    ikrule lhand touch "tag_ik_loc_le" usesource 
}

$sequence "holster" {
	"x123_smd\vm_p24_pi_golf17_drop.smd"
	{ event 9011 0 "0" }
	{ event 5004 1 "wfoly_plr_pi_golf17_drop_01" }
	{ event 9011 10 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"	
	addlayer "firemode_offset"
	snap
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0  
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1  
}

$sequence "draw" {
	"x123_smd\vm_p24_pi_golf17_raise.smd"
	{ event 9011 0 "0" }
	{ event 5004 1 "wfoly_plr_pi_golf17_raise_01" }
	{ event 9011 0 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"	
	addlayer "firemode_offset"
	snap
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0  
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1  
}

$sequence "draw_first" {
	"x123_smd\vm_p24_pi_golf17_raise_first.smd"
{ event 9011 1 "0" }
{ event 5004 1 "wfoly_plr_pi_golf17_raise_01" }
{ event 5004 7 "wfoly_plr_pi_golf17_inspect_07" }
{ event 5004 19 "wfoly_plr_pi_golf17_inspect_08" }
{ event 5004 23 "wfoly_plr_pi_golf17_inspect_10" }
{ event 9011 1 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	snap
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0  
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1  
}

$sequence "reload" {
	"x123_smd/vm_p24_pi_golf17_reload.smd"
	"x123_smd/vm_p24_pi_golf17_reload_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
{ event 5004 0 "wfoly_plr_pi_golf17_reload_01" }
{ event 9011 0 "0" }
{ event 5004 8 "wfoly_plr_pi_golf17_reload_02" }
{ event 5004 16 "wfoly_plr_pi_golf17_reload_03" }
{ event 5004 20 "wfoly_plr_pi_golf17_reload_04" }
{ event 5004 30 "wfoly_plr_pi_golf17_reload_05" }
{ event 5004 34 "wfoly_plr_pi_golf17_reload_06" }
{ event 5004 38 "wfoly_plr_pi_golf17_reload_07" }
{ event 9011 49 "1" }

	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "reload_empty" {
	"x123_smd/vm_p24_pi_golf17_reload_empty.smd"
	"x123_smd/vm_p24_pi_golf17_reload_empty_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
{ event 5004 0 "wfoly_plr_pi_golf17_reload_empty_01" }
{ event 9011 0 "0" }
{ event 5004 7 "wfoly_plr_pi_golf17_reload_empty_02" }
{ event 5004 16 "wfoly_plr_pi_golf17_reload_empty_03" }
{ event 5004 16 "wfoly_plr_pi_golf17_reload_empty_04" }
{ event 9031 16 "ResetBullets" }
{ event 5004 19 "wfoly_plr_pi_golf17_reload_empty_05" }
{ event 5004 20 "wfoly_plr_pi_golf17_reload_empty_06" }
{ event 5004 33 "wfoly_plr_pi_golf17_reload_empty_07" }
{ event 5004 37 "wfoly_plr_pi_golf17_reload_empty_08" }
{ event 5004 42 "wfoly_plr_pi_golf17_reload_empty_09" }
{ event 9011 45 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"	
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
}

$sequence "reload_fast" {
	"x123_smd/vm_p24_pi_golf17_reload_fast.smd"
	"x123_smd/vm_p24_pi_golf17_reload_fast_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
{ event 5004 0 "wfoly_plr_pi_golf17_reload_fast_01" }
{ event 9011 0 "0" }
{ event 5004 6 "wfoly_plr_pi_golf17_reload_fast_02" }
{ event 5004 8 "wfoly_plr_pi_golf17_reload_fast_03" }
{ event 5004 13 "wfoly_plr_pi_golf17_reload_fast_04" }
{ event 9031 13 "ResetBullets" }
{ event 5004 18 "wfoly_plr_pi_golf17_reload_fast_06" }
{ event 5004 18 "wfoly_plr_pi_golf17_reload_fast_05" }
{ event 5004 27 "wfoly_plr_pi_golf17_reload_fast_07" }
{ event 9011 27 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "reload_empty_fast" {
	"x123_smd/vm_p24_pi_golf17_reload_empty_fast.smd"
	"x123_smd/vm_p24_pi_golf17_reload_empty_fast_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
{ event 9011 0 "0" }
{ event 5004 0 "wfoly_plr_pi_golf17_reload_empty_fast_01" }
{ event 5004 7 "wfoly_plr_pi_golf17_reload_empty_fast_02" }
{ event 9031 11 "ResetBullets" }
{ event 5004 12 "wfoly_plr_pi_golf17_reload_empty_fast_03" }
{ event 5004 17 "wfoly_plr_pi_golf17_reload_empty_fast_04" }
{ event 5004 24 "wfoly_plr_pi_golf17_reload_empty_fast_05" }
{ event 5004 29 "wfoly_plr_pi_golf17_reload_empty_fast_06" }
{ event 9011 29 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"	
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
}

$sequence "reload_xmag" {
	"x123_smd/anims/vm_p24_pi_golf17_reload_xmag.smd"
	"x123_smd/anims/vm_p24_pi_golf17_reload_xmag_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
{ event 5004 0 "wfoly_plr_pi_golf17_reload_xmag_01" }
{ event 9011 0 "0" }
{ event 5004 16 "wfoly_plr_pi_golf17_reload_xmag_02" }
{ event 5004 17 "wfoly_plr_pi_golf17_reload_xmag_03" }
{ event 5004 25 "wfoly_plr_pi_golf17_reload_xmag_04" }
{ event 5004 29 "wfoly_plr_pi_golf17_reload_xmag_05" }
{ event 5004 36 "wfoly_plr_pi_golf17_reload_xmag_06" }
{ event 5004 47 "wfoly_plr_pi_golf17_reload_xmag_07" }
{ event 9011 56 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "reload_empty_xmag" {
	"x123_smd/vm_p24_pi_golf17_reload_empty_xmag.smd"
	"x123_smd/vm_p24_pi_golf17_reload_empty_xmag_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
{ event 5004 0 "wfoly_plr_pi_golf17_reload_empty_xmag_01" }
{ event 9011 0 "0" }
{ event 5004 6 "wfoly_plr_pi_golf17_reload_empty_xmag_02" }
{ event 5004 8 "wfoly_plr_pi_golf17_reload_empty_xmag_03" }
{ event 5004 16 "wfoly_plr_pi_golf17_reload_empty_xmag_04" }
{ event 9031 17 "ResetBullets" }
{ event 5004 23 "wfoly_plr_pi_golf17_reload_empty_xmag_05" }
{ event 5004 31 "wfoly_plr_pi_golf17_reload_empty_xmag_06" }
{ event 5004 39 "wfoly_plr_pi_golf17_reload_empty_xmag_07" }
{ event 5004 44 "wfoly_plr_pi_golf17_reload_empty_xmag_08" }
{ event 5004 47 "wfoly_plr_pi_golf17_reload_empty_xmag_09" }
{ event 9011 54 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"	
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
}

$sequence "reload_xmaglrg" {
	"x123_smd/vm_p24_pi_golf17_reload_xmaglrg.smd"
	"x123_smd/vm_p24_pi_golf17_reload_xmaglrg_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
{ event 9011 0 "0" }
{ event 5004 1 "wfoly_plr_pi_golf17_reload_xmaglrg_01" }
{ event 5004 10 "wfoly_plr_pi_golf17_reload_xmaglrg_02" }
{ event 5004 17 "wfoly_plr_pi_golf17_reload_xmaglrg_03" }
{ event 5004 19 "wfoly_plr_pi_golf17_reload_xmaglrg_04" }
{ event 5004 25 "wfoly_plr_pi_golf17_reload_xmaglrg_05" }
{ event 5004 28 "wfoly_plr_pi_golf17_reload_xmaglrg_06" }
{ event 5004 39 "wfoly_plr_pi_golf17_reload_xmaglrg_07" }
{ event 5004 44 "wfoly_plr_pi_golf17_reload_xmaglrg_08" }
{ event 5004 54 "wfoly_plr_pi_golf17_reload_xmaglrg_09" }
{ event 9011 64 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "reload_empty_xmaglrg" {
	"x123_smd/vm_p24_pi_golf17_reload_empty_xmaglrg.smd"
	"x123_smd/vm_p24_pi_golf17_reload_empty_xmaglrg_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
{ event 5004 0 "wfoly_plr_pi_golf17_reload_empty_xmaglrg_01" }
{ event 9011 0 "0" }
{ event 5004 6 "wfoly_plr_pi_golf17_reload_empty_xmaglrg_02" }
{ event 5004 17 "wfoly_plr_pi_golf17_reload_empty_xmaglrg_03" }
{ event 9031 28 "ResetBullets" }
{ event 5004 29 "wfoly_plr_pi_golf17_reload_empty_xmaglrg_04" }
{ event 5004 34 "wfoly_plr_pi_golf17_reload_empty_xmaglrg_05" }
{ event 5004 39 "wfoly_plr_pi_golf17_reload_empty_xmaglrg_06" }
{ event 5004 47 "wfoly_plr_pi_golf17_reload_empty_xmaglrg_07" }
{ event 5004 54 "wfoly_plr_pi_golf17_reload_empty_xmaglrg_08" }
{ event 5004 55 "wfoly_plr_pi_golf17_reload_empty_xmaglrg_09" }
{ event 9011 63 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"	
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1
}


$sequence "inspect" {
	"x123_smd/anims/vm_p24_pi_golf17_inspect.smd"
{ event 5004 0 "wfoly_plr_pi_golf17_inspect_01" }
{ event 9011 3 "0" }
{ event 5004 9 "wfoly_plr_pi_golf17_inspect_02" }
{ event 5004 13 "wfoly_plr_pi_golf17_inspect_03" }
{ event 5004 43 "wfoly_plr_pi_golf17_inspect_04" }
{ event 5004 52 "wfoly_plr_pi_golf17_inspect_05" }
{ event 5004 60 "wfoly_plr_pi_golf17_inspect_06" }
{ event 5004 70 "wfoly_plr_pi_golf17_inspect_07" }
{ event 5004 86 "wfoly_plr_pi_golf17_inspect_08" }
{ event 5004 97 "wfoly_plr_pi_golf17_inspect_09" }
{ event 5004 106 "wfoly_plr_pi_golf17_inspect_10" }
{ event 9011 110 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "inspect_empty" {
	"x123_smd/vm_p24_pi_golf17_inspect_empty.smd"
{ event 5004 2 "wfoly_plr_pi_golf17_inspect_empty_01" }
{ event 9011 3 "0" }
{ event 5004 10 "wfoly_plr_pi_golf17_inspect_empty_02" }
{ event 5004 19 "wfoly_plr_pi_golf17_inspect_empty_03" }
{ event 5004 37 "wfoly_plr_pi_golf17_inspect_empty_04" }
{ event 5004 45 "wfoly_plr_pi_golf17_inspect_empty_05" }
{ event 5004 58 "wfoly_plr_pi_golf17_inspect_empty_06" }
{ event 5004 63 "wfoly_plr_pi_golf17_inspect_empty_07" }
{ event 5004 84 "wfoly_plr_pi_golf17_inspect_empty_08" }
{ event 5004 106 "wfoly_plr_pi_golf17_inspect_empty_09" }
{ event 5004 118 "wfoly_plr_pi_golf17_inspect_empty_10" }
{ event 5004 126 "wfoly_plr_pi_golf17_inspect_empty_11" }
{ event 5004 142 "wfoly_plr_pi_golf17_inspect_empty_12" }
{ event 9011 146 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "inspect_xmag" {
	"x123_smd/anims/vm_p24_pi_golf17_inspect_xmag.smd"
{ event 5004 0 "wfoly_plr_pi_golf17_inspect_01" }
{ event 9011 3 "0" }
{ event 5004 9 "wfoly_plr_pi_golf17_inspect_02" }
{ event 5004 13 "wfoly_plr_pi_golf17_inspect_03" }
{ event 5004 43 "wfoly_plr_pi_golf17_inspect_04" }
{ event 5004 52 "wfoly_plr_pi_golf17_inspect_05" }
{ event 5004 60 "wfoly_plr_pi_golf17_inspect_06" }
{ event 5004 70 "wfoly_plr_pi_golf17_inspect_07" }
{ event 5004 86 "wfoly_plr_pi_golf17_inspect_08" }
{ event 5004 97 "wfoly_plr_pi_golf17_inspect_09" }
{ event 5004 106 "wfoly_plr_pi_golf17_inspect_10" }
{ event 9011 110 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "inspect_empty_xmag" {
	"x123_smd/vm_p24_pi_golf17_inspect_empty_xmag.smd"
{ event 5004 2 "wfoly_plr_pi_golf17_inspect_empty_01" }
{ event 9011 3 "0" }
{ event 5004 10 "wfoly_plr_pi_golf17_inspect_empty_02" }
{ event 5004 19 "wfoly_plr_pi_golf17_inspect_empty_03" }
{ event 5004 37 "wfoly_plr_pi_golf17_inspect_empty_04" }
{ event 5004 45 "wfoly_plr_pi_golf17_inspect_empty_05" }
{ event 5004 58 "wfoly_plr_pi_golf17_inspect_empty_06" }
{ event 5004 63 "wfoly_plr_pi_golf17_inspect_empty_07" }
{ event 5004 84 "wfoly_plr_pi_golf17_inspect_empty_08" }
{ event 5004 106 "wfoly_plr_pi_golf17_inspect_empty_09" }
{ event 5004 118 "wfoly_plr_pi_golf17_inspect_empty_10" }
{ event 5004 126 "wfoly_plr_pi_golf17_inspect_empty_11" }
{ event 5004 142 "wfoly_plr_pi_golf17_inspect_empty_12" }
{ event 9011 146 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "inspect_xmaglrg" {
	"x123_smd/anims/vm_p24_pi_golf17_inspect_xmaglrg.smd"
{ event 5004 0 "wfoly_plr_pi_golf17_inspect_01" }
{ event 9011 3 "0" }
{ event 5004 9 "wfoly_plr_pi_golf17_inspect_02" }
{ event 5004 13 "wfoly_plr_pi_golf17_inspect_03" }
{ event 5004 43 "wfoly_plr_pi_golf17_inspect_04" }
{ event 5004 52 "wfoly_plr_pi_golf17_inspect_05" }
{ event 5004 60 "wfoly_plr_pi_golf17_inspect_06" }
{ event 5004 70 "wfoly_plr_pi_golf17_inspect_07" }
{ event 5004 86 "wfoly_plr_pi_golf17_inspect_08" }
{ event 5004 97 "wfoly_plr_pi_golf17_inspect_09" }
{ event 5004 106 "wfoly_plr_pi_golf17_inspect_10" }
{ event 9011 110 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "inspect_empty_xmaglrg" {
	"x123_smd/vm_p24_pi_golf17_inspect_empty_xmaglrg.smd"
{ event 5004 2 "wfoly_plr_pi_golf17_inspect_empty_01" }
{ event 9011 3 "0" }
{ event 5004 10 "wfoly_plr_pi_golf17_inspect_empty_02" }
{ event 5004 19 "wfoly_plr_pi_golf17_inspect_empty_03" }
{ event 5004 37 "wfoly_plr_pi_golf17_inspect_empty_04" }
{ event 5004 45 "wfoly_plr_pi_golf17_inspect_empty_05" }
{ event 5004 58 "wfoly_plr_pi_golf17_inspect_empty_06" }
{ event 5004 63 "wfoly_plr_pi_golf17_inspect_empty_07" }
{ event 5004 84 "wfoly_plr_pi_golf17_inspect_empty_08" }
{ event 5004 106 "wfoly_plr_pi_golf17_inspect_empty_09" }
{ event 5004 118 "wfoly_plr_pi_golf17_inspect_empty_10" }
{ event 5004 126 "wfoly_plr_pi_golf17_inspect_empty_11" }
{ event 5004 142 "wfoly_plr_pi_golf17_inspect_empty_12" }
{ event 9011 146 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "empty_offset"
	addlayer "firemode_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "fire" {
	"x123_smd/anims/vm_p24_pi_golf18_fire.smd"
	"x123_smd/anims/vm_p24_pi_golf18_fire_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
	{ event 9001 1 "MuzzleFlash muzzle" }
	{ event 6001 1 "shell_eject" }
	{ event 9001 1 "Ejection shell_eject" }
	{ event 9011 0 "1" }
	{ event 9021 0 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	//addlayer "empty_offset"
	addlayer "firemode_offset"
	snap
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0  
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1  
}

$sequence "fire_last" {
	"x123_smd\vm_p24_pi_golf18_fire_last.smd"
	"x123_smd\vm_p24_pi_golf18_fire_last_ads.smd"
	blend "aim_offset" 0 1
	blendwidth 2
	{ event 9001 1 "MuzzleFlash muzzle" }
	{ event 6001 1 "shell_eject" }
	{ event 9001 1 "Ejection shell_eject" }
	{ event 9011 0 "1" }
	{ event 9021 0 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"	
addlayer "firemode_offset"
addlayer "firemode_offset"	
	snap
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0  
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1  
}

$sequence "semi_off" {
	"x123_smd/vm_p24_pi_golf18_selectsemi_off.smd"
	{ event 9021 0 "0" }
{ event 5004 1 "fly_plr_smg_saug_selectsemi_off_01" }
{ event 5004 9 "fly_plr_smg_saug_selectsemi_off_02" }
	{ event 9021 1 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"
	snap
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0  
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1  
}

$sequence "semi_on" {
	"x123_smd/vm_p24_pi_golf18_selectsemi_on.smd"
	{ event 9021 0 "0" }
{ event 5004 1 "fly_plr_smg_saug_selectsemi_on_01" }
{ event 5004 9 "fly_plr_smg_saug_selectsemi_on_02" }
	{ event 9021 1 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"
	snap
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 0  
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0 target 1  
}

$sequence "melee_miss_01" {
	"x123_smd/vm_p24_pi_golf17_melee_miss_01.smd"
	{ event 5004 0 "MW_Melee.Miss_Medium" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9011 1 "0" }
    { event 9011 25 "1" }
	{ event 9021 0 "0" }	
	{ event 9021 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"	
	addlayer "firemode_offset"
	
	addlayer "empty_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}


$sequence "melee_miss_02" {
	"x123_smd/vm_p24_pi_golf17_melee_miss_02.smd"
	{ event 5004 0 "MW_Melee.Miss_Medium" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9011 1 "0" }
    { event 9011 26 "1" }
	{ event 9021 0 "0" }	
	{ event 9021 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "firemode_offset"
	
	addlayer "empty_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "melee_miss_03" {
	"x123_smd/vm_p24_pi_golf17_melee_miss_03.smd"
	{ event 5004 0 "MW_Melee.Miss_Medium" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9011 1 "0" }
    { event 9011 25 "1" }
	{ event 9021 0 "0" }	
	{ event 9021 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"	
	addlayer "firemode_offset"
	
	addlayer "empty_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "melee_hit_01" {
	"x123_smd\vm_p24_pi_golf17_melee_hit_01.smd"
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 0 "MW_Melee.Flesh_Medium" }
	{ event 5004 8 "Viewmodel.Medium" }
{ event 9011 1 "0" }
{ event 9011 25 "1" }
	{ event 9021 0 "0" }	
	{ event 9021 26 "1" }	
	{ event 5004 31 "Viewmodel.Small" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"	
	addlayer "firemode_offset"
	
	addlayer "empty_offset"	
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "melee_hit_02" {
	"x123_smd\vm_p24_pi_golf17_melee_hit_02.smd"
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 0 "MW_Melee.Flesh_Medium" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9011 1 "0" }
    { event 9011 26 "1" }
	{ event 9021 0 "0" }	
	{ event 9021 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "firemode_offset"
	
	addlayer "empty_offset"	
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "melee_hit_03" {
	"x123_smd/vm_p24_pi_golf17_melee_hit_03.smd"
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 0 "MW_Melee.Flesh_Medium" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9011 1 "0" }
    { event 9011 26 "1" }
	{ event 9021 0 "0" }	
	{ event 9021 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"	
	addlayer "firemode_offset"
	
	addlayer "empty_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "ads_in" {
	"anims\ads_in.smd"
	{ event 9011 0 "1" }
	{ event 5004 1 "wfoly_ar_akilo47_ads_up" }
	{ event 9011 0 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"	
	addlayer "firemode_offset"
	
	addlayer "empty_offset"	
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "ads_out" {
	"anims\ads_out.smd"
	{ event 9011 0 "1" }
	{ event 5004 1 "wfoly_ar_akilo47_ads_down" }
	{ event 9011 0 "1" }
	fadein 0.2
	fadeout 0.2
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "firemode_offset"
	
	
	addlayer "empty_offset"
	fps 30
	ikrule "rhand" touch "tag_ik_loc_ri" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 0
	ikrule "lhand" touch "tag_ik_loc_le" contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 0 0  target 1
}

$sequence "aim_offset" {
	"a_aim_idle_to_sub"
	"a_delta_ads_additive_for_offset"
	blend "aim_offset" 0 1
	blendwidth 2
	delta
	
	realtime
}

$sequence "jog_offset" {
	"a_jog_offset_idle"
	"a_jog_offset"
	blend "jog_offset" 0 1
	blendwidth 2
	delta
	
	
	realtime
}

$sequence "a_jog_to_walk" {
	"v_romeo870_anims\a_jog_to_walk.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@a_jog_to_walk_corrective_animation" 0
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jog_out" {
	"x123_smd\vm_p24_pi_golf17_idle.smd"
	
	addlayer "a_jog_to_walk"
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"	
	addlayer "empty_offset"	
	addlayer "firemode_offset"

	
	fps 1.304
	ikrule rhand touch "tag_pistol_offset" usesource
    ikrule lhand touch "tag_ik_loc_le" usesource 
}

$sequence "jog_loop" {
	"a_jog_idle"
	"a_jog"
	blend "jog_loop" 0 1
	blendwidth 2
	delta
	realtime
}

$sequence "walk_loop" {
	"a_walk_idle"
	"a_walk"
	blend "walk_loop" 0 1
	blendwidth 2
	delta
	
	
	realtime
}

$sequence "a_walk_to_sprint" {
	"anims/a_walk_to_sprint_nko.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@a_walk_to_sprint_corrective_animation" 0
	fps 30
}

$sequence "sprint_in" {
	"x123_smd\vm_p24_pi_golf17_idle.smd"
	addlayer "a_walk_to_sprint"
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"	
    addlayer "firemode_offset"
	
	fps 1.25
	ikrule rhand touch "tag_pistol_offset" usesource
    ikrule lhand touch "tag_ik_loc_le" usesource 
}

$sequence "sprint_loop" {
	"a_sprint_idle"
	"a_sprint"
	blend "sprint_loop" 0 1
	blendwidth 2
	delta		
	realtime
}

$sequence "a_sprint_to_walk" {
	"v_sprint\a_sprint_to_walk.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@a_walk_to_sprint_corrective_animation" 0
	fps 30
}

$sequence "sprint_out" {
	"x123_smd\vm_p24_pi_golf17_idle.smd"
	addlayer "a_sprint_to_walk"
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"	
	addlayer "firemode_offset"
	
	
	fps 1.25
	ikrule rhand touch "tag_pistol_offset" usesource
    ikrule lhand touch "tag_ik_loc_le" usesource 
}


$sequence "sprint_offset" {
	"a_sprint_offset_idle"
	"a_sprint_offset"
	blend "sprint_offset" 0 1
	blendwidth 2
	delta		
	realtime
}

$sequence "a_idle_active" {
	"a_fidget"
	"a_zerodiff"
	blend "aim_offset" 0 1
	blendwidth 2
	delta	
	realtime
}

$sequence "freefall_loop" {
	"a_freefall_idle"
	"a_freefall"
	blend "freefall_loop" 0 1
	blendwidth 2
	delta	
	realtime
}

$sequence "a_landdelta" {
	"v_romeo870_anims\a_landdelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@a_landdelta_corrective_animation" 0	
	fps 30
}

$sequence "jump_land" {
	"x123_smd\vm_p24_pi_golf17_idle.smd"
	addlayer "a_landdelta"
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"
	addlayer "empty_offset"	
addlayer "firemode_offset"	
	
	
	fps 1.363
	ikrule rhand touch "tag_pistol_offset" usesource
    ikrule lhand touch "tag_ik_loc_le" usesource 
}

$sequence "a_jumpdelta" {
	"v_romeo870_anims\a_jumpdelta.smd"
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@a_jumpdelta_corrective_animation" 0		
	fps 30
}

$sequence "jump" {
	"x123_smd\vm_p24_pi_golf17_idle.smd"
	
	addlayer "a_jumpdelta"
	addlayer "jog_loop"
	addlayer "jog_offset"
	addlayer "walk_loop"
	addlayer "sprint_loop"
	addlayer "sprint_offset"
	addlayer "freefall_loop"
	addlayer "aim_offset"	
	addlayer "empty_offset"	
	fps 2.727
	ikrule rhand touch "tag_pistol_offset" usesource
    ikrule lhand touch "tag_ik_loc_le" usesource 
}

$sequence "empty_offset" {
	"a_empty_idle_to_sub"
	"a_delta_empty_additive_for_offset"
	blend "empty_offset" 0 0.5
	blendwidth 2
	delta
	realtime
}

$sequence "firemode_offset" {
	"a_firemode_idle"
	"fix_semi_add"
	blend "firemode_offset" 0 1
	blendwidth 2
	delta
	realtime
}

$keyvalues
{
	qc_path 
	{
		"value"		"c:\github\source files mw\source-files-mw\weapons\shotguns\romeo870\weapon_viewmodel.qc"
	}
}
