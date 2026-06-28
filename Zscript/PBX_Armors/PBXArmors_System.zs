enum PBXArmors_ArmorValues
{
    RED_PERCENT             = 90,
    RED_AMOUNT              = 160,

    PURPLE_PERCENT          = 90,
    PURPLE_AMOUNT           = 140,

    WHITE_PERCENT           = 100,
    WHITE_AMOUNT            = 200,
    REGEN_DURATION          = -60, // Negative value means seconds instead of tic
    REGEN_STRENGTH          = 8,

    ORANGE_PERCENT          = 70,
    ORANGE_AMOUNT           = 160,

    YELLOW_PERCENT          = 50,
    YELLOW_AMOUNT           = 130,

    BLACK_PERCENT           = 70,
    BLACK_AMOUNT            = 160,

    DEMON_PERCENT           = 100,
    DEMON_AMOUNT            = 300,
    FRIGHTENER_DURATION     = -60, // Negative value means seconds instead of tic

    CYAN_PERCENT            = 100,
    CYAN_AMOUNT             = 40,
    TIMEFREEZE_DURATION     = -12, // Negative value means seconds instead of tic
    DOUBLESPEED_DURATION    = -12, // Negative value means seconds instead of tic

    DPURPLE_PERCENT         = 20,
    DPURPLE_AMOUNT          = 100,
    INFAMMO_DURATION        = -12, // Negative value means seconds instead of tic

    DRED_PERCENT            = 100,
    DRED_AMOUNT             = 200,

    GOLD_PERCENT            = 100,
    GOLD_AMOUNT             = 70,

    // Gray Armor values are randomized 
    // between one and this value below
    GRAY_AMOUNT             = 150,

    LBLUE_PERCENT           = 20,
    LBLUE_AMOUNT            = 200,

    // Light Green will give the player the Guardian Armor
    // If they're below a threshold
    LGREEN_PERCENT          = 10,
    LGREEN_AMOUNT           = 10,
    LGREEN_THRESHOLD        = 10,  // Below this value will trigger the life saving effect
    GUARDIAN_HP             = 200,
    GUARDIAN_PERCENT        = 100,
    GUARDIAN_AMOUNT         = 200,

    PINK_PERCENT            = 100,
    PINK_AMOUNT             = 200

}

class PBXArmors_Handler : EventHandler
{

    Override void PlayerEntered(PlayerEvent e)
    {
		// Get player pointer
        let pm = players[e.PlayerNumber].mo;
		if(!pm) return;

		// Dont continue if its the titlemap
        if (level.MapName == "TITLEMAP") return;

		PBXCore_Handler.TryGiveInventory(pm,whatToGive:'PBXArmors_TipsManager', diffCheck:false);
        return;
    }

}