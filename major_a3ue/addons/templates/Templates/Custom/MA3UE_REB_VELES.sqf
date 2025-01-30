private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Veles"] call _fnc_saveToTemplate;

["flag", "Flag_FIA_F"] call _fnc_saveToTemplate;
["flagTexture", "a3\data_f\flags\flag_fia_co.pa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_FIA"] call _fnc_saveToTemplate;

["vehiclesBasic", ["CUP_I_Hilux_unarmed_NAPA", "I_G_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", []] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_I_Hilux_M2_IND_G_F", "CUP_I_LR_MG_AAF"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["I_Truck_02_transport_F"]] call _fnc_saveToTemplate;
["vehiclesAT", ["CUP_I_Hilux_SPG9_NAPA"]] call _fnc_saveToTemplate;
["vehiclesAA", []] call _fnc_saveToTemplate;

["vehiclesBoat", []] call _fnc_saveToTemplate;

["vehiclesPlane", ["CUP_I_CESSNA_T41_UNARMED_RACS"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["I_E_Truck_02_Medical_F"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["C_Offroad_01_F","CUP_C_TT650_CIV"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["CUP_C_Ural_Civ_02"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", ["CUP_C_412"]] call _fnc_saveToTemplate;
["vehiclesCivBoat", []] call _fnc_saveToTemplate;
["vehiclesCivPlane", ["CUP_C_CESSNA_CIV"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_B_l111A1_BAF_WDL"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_B_SPG9_CDF"]] call _fnc_saveToTemplate;
["staticAA", []] call _fnc_saveToTemplate;
["staticMortars", ["CUP_B_L16A2_BAF_DDPM"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["CUP_MineE_M"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine_Range_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["tsp_breach_block_mag", 2], ["DemoCharge_Remote_Mag"], 1]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["tsp_breach_block_mag", 3],["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

//animation sources - camo nets, slat cages, decals etc, digit is probability of appearance
["animations", [
    ["vehClass", ["animsource_example_1", 0.25, "animsource_example_2", 0.3]]
]] call _fnc_saveToTemplate;

//vehicle skins
["variants", [
    ["vehClass", ["paint", 1]]
]] call _fnc_saveToTemplate;



///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "CUP_srifle_Mosin_Nagant", ["CUP_optic_PEM",5], "CUP_sgun_CZ584", "CUP_hgun_FlareGun", "CUP_hgun_TaurusTracker455",  //weapons, optics
    "CUP_5Rnd_762x54_Mosin_M" ,"CUP_1Rnd_12Gauge_Pellets_No0_Buck", ["CUP_FlareWhite_265_M", 20], "CUP_6Rnd_45ACP_M",  //ammo
    "tsp_meleeWeapon_training", "tsp_meleeWeapon_kitchen", "tsp_meleeWeapon_splittingexe", //melee
    "CUP_V_I_Guerilla_Jacket", "V_BandolierB_wdl", "CUP_V_I_Carrier_Belt",  //vests
    "B_FieldPack_green_F", ["CUP_B_HikingPack_Civ",5],  //Backpacks
    ["CUP_IED_V3_M", 10], ["CUP_IED_V2_M", 3],  //explosives
    "CUP_HandGrenade_RGD5", "SmokeShell","SmokeShellRed", "SmokeShellGreen", "SmokeShellBlue", //grenades
    "tsp_lockpick", "Binocular"//misc
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
if (A3A_hasKAT) then {_initialRebelEquipment append ["kat_suction"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = ["CUP_I_B_PARA_Unit_4", "CUP_I_B_PARA_Unit_8", "CUP_U_I_GUE_WorkU_01", "CUP_U_I_GUE_WorkU_02", "CUP_U_I_GUE_Anorak_03"];          //Uniforms given to Normal Rebels

private _dlcUniforms = [];          //Uniforms given if DLCs are enabled, only given to the Arsenal not Rebels

if (_hasContact) then {_dlcUniforms append [];
};

if (_hasApex) then {_dlcUniforms append [];
};

["uniforms", _rebUniforms + _dlcUniforms] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", []] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
["faces", ["AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem","GreekHead_A3_05",
"GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09",
"Sturrock","WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04",
"WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09",
"WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14",
"WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_19","WhiteHead_20",
"WhiteHead_21"]] call _fnc_saveToTemplate;
["voices", ["CUP_D_Male01_CZ_ACR","CUP_D_Male02_CZ_ACR","CUP_D_Male03_CZ_ACR","CUP_D_Male04_CZ_ACR","CUP_D_Male05_CZ_ACR"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["facewear", []];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    ["facewear"] call _fnc_setFacewear;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
