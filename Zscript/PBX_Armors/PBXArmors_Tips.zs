enum PBXArmors_TipFlags
{
    PBXArmors_DemonArmorTip     = 1 < 0,
    PBXArmors_DarkRedArmorTip   = 1 < 1,
    PBXArmors_GrayArmorTip      = 1 < 2,
    PBXArmors_LBlueArmorTip     = 1 < 3,
    PBXArmors_LGreenArmorTip    = 1 < 4,
    PBXArmors_PinkArmorTip      = 1 < 5
}

class PBXArmors_TipsManager : PBXCore_TipsManager
{
	override bool HandlePickup(Inventory item)
	{
        bool returnValue = super.HandlePickup(item);
        if(!PBXArmors_SendTip) return returnValue;

		string armorHelpCvar = "PBXArmors_HelpFlags";

        switch(item.getClassName())
        {
            default:
                break;

            case 'PBX_DemonArmor':
            {
                Array<String> tips;
                tips.Push("$PBXArmors_Demon_Tip1");
                PBXCore_TipsManager.SendTipArrayIfNeeded(tips, armorHelpCvar, PBXArmors_DemonArmorTip);
            }
            break;

            case 'PBX_DarkRedArmor':
            {
                Array<String> tips;
                tips.Push("$PBXArmors_DarkRed_Tip1");
                tips.Push("$PBXArmors_DarkRed_Tip2");
                PBXCore_TipsManager.SendTipArrayIfNeeded(tips, armorHelpCvar, PBXArmors_DarkRedArmorTip);
            }
            break;

            case 'PBX_GrayArmor':
            {
                Array<String> tips;
                tips.Push("$PBXArmors_Gray_Tip1");
                PBXCore_TipsManager.SendTipArrayIfNeeded(tips, armorHelpCvar, PBXArmors_GrayArmorTip);
            }
            break;

            case 'PBX_LightBlueArmor':
            {
                Array<String> tips;
                tips.Push("$PBXArmors_LBlue_Tip1");
                PBXCore_TipsManager.SendTipArrayIfNeeded(tips, armorHelpCvar, PBXArmors_LBlueArmorTip);
            }
            break;

            case 'PBX_LightGreenArmor':
            {
                Array<String> tips;
                tips.Push("$PBXArmors_LGreen_Tip1");
                tips.Push(String.Format(StringTable.Localize("$PBXArmors_LGreen_Tip2"),LGREEN_THRESHOLD, GUARDIAN_HP, GUARDIAN_AMOUNT, GUARDIAN_PERCENT));
                PBXCore_TipsManager.SendTipArrayIfNeeded(tips, armorHelpCvar, PBXArmors_LGreenArmorTip);
            }
            break;

            case 'PBX_PinkArmor':
            {
                Array<String> tips;
                tips.Push("$PBXArmors_Pink_Tip1");
                PBXCore_TipsManager.SendTipArrayIfNeeded(tips, armorHelpCvar, PBXArmors_PinkArmorTip);
            }
            break;

        }

		return returnValue;
	}
}