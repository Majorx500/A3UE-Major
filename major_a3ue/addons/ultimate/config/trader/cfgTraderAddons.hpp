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