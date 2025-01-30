class Templates {
    class Vanilla_Base; //import Vanilla_Base from A3A to use with defining a new vanilla template

    class CUP_Core{
        requiredAddons[] = {"CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core"};        // units, weapons, vehicles
        priority = 60;
    };

    class Vanilla_AAF { // overwrite existing template
        basepath = QPATHTOFOLDER(Templates\Vanilla);
        file = "Vanilla_AI_AAF";
    };

    class Vanilla_CSAT2 : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; //the side the faction defaults to, one of the following: Inv, Occ, Reb, Civ
        flagTexture = "A3\Data_F\Flags\Flag_CSAT_CO.paa"; //path to an icon to be displayed in the selector
        name = "A3 CSAT 2"; //the name shown in the selector
        file = "Vanilla_AI_CSAT2"; //the template file name
        maps[] = {}; //if this template should be prioritized on any maps (case sensetive to worldName)
        climate[] = {"arid", "arctic"}; //climate that the template is meant for
    };

        class CUP_VELES : CUP_Core
    {
        basepath = QPATHTOFOLDER(Templates\Custom); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; //the side the faction defaults to, one of the following: Inv, Occ, Reb, Civ
        flagtexture = "A3\Data_F\Flags\Flag_AAF_CO.paa";
        name = "M3AUE Veles"; //the name shown in the selector
        file = "MA3UE_REB_VELES"; //the template file name
        climate[] = {"arid", "arctic", "temperate"}; //climate that the template is meant for
    };
    class CUP_VELES_DES : CUP_Core
    {
        basepath = QPATHTOFOLDER(Templates\Custom);
        side = "Reb";
        flagtexture = "A3\Data_F\Flags\Flag_AAF_CO.paa";
        name = "M3AUE Veles Desert";
        file = "MA3UE_REB_VELES_DES";
        climate[] = {"arctic", "temperate"};
    }

};
