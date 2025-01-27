    /*
        Each addon entry can use these values:
        addons[] = {};
        weapons = traderWeapons entry;
        vehicles = traderVehicles entry;

        Essentially, this is the core file. It links to other files.
    */
    
    class addons_rksl : addons_base
    {
        addons[] = {"RKSL_EOT552", "RKSL_LDS", "RKSL_PMII", "RKSL_PMII_525", "RKSL_RMR"};
        weapons = "weapons_rksl";
    };

    class addons_breach : addons_base
    {
        addons[] = {"tsp_breach"};
        weapons = "weapons_breach";
    };

    class addons_melee : addons_base
    {
        addons[] = {"tsp_melee","tsp_core"};
        weapons = "weapons_melee";
    };

    class addons_majors : addons_base
    {
        addons[] = {"tdd_main"};
        weapons = "weapons_majors";
    };