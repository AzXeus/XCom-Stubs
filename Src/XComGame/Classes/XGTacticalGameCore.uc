class XGTacticalGameCore extends XGTacticalGameCoreNativeBase
    hidecategories(Navigation)
    config(GameCore)
    notplaceable;

var init const localized string m_aExpandedLocalizedStrings[21];
var int m_iDifficulty;

simulated function int GetXPRequired(int iRank) {}
	
simulated function int GetExtraArmorStatBonus(int iStat, int iArmor) {}

simulated function GetBackpackItemArray(TInventory kInventory, out array<int> arrBackPackItems) {}

simulated function TWeapon GetTWeapon(int iWeapon) {}

static final function XGTacticalGameCoreData.EWeaponClass GetWeaponClass(XGGameData.EItemType eItem) {}

simulated function bool WeaponHasProperty(int iWeapon, int iWeaponProperty) {}

simulated function int GetBackpackStatBonus(int iStat, array<int> arrBackPackItems, out TCharacter kCharacter) {}

simulated function int CalcHitChance_NonUnitTarget(int iWeapon, int kShooter, int aShooterStats, int fDistanceToTarget, bool bIsPoisoned) {}

simulated function XGGameData.EItemType GetEquipWeapon(TInventory kInventory) {}

simulated function string GetUnexpandedLocalizedMessageString(byte eString) {}

simulated function GetInventoryStatModifiers(out int aModifiers[ECharacterStat], out TCharacter kCharacter, XGGameData.EItemType iEquippedWeapon, array<int> arrBackPackItems)
{
    local int iStat;

    // End:0x16B
    if(XComTacticalGame(XComGameInfo(WorldInfo.Game)) != none)
    {
        LogInternal(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, name("MagicVar"));
    }
    iStat = 0;
    J0x176:
    // End:0x84A [Loop If]
    if(iStat < 19)
    {
        aModifiers[iStat] = GetWeaponStatBonus(iStat, iEquippedWeapon, kCharacter);
        aModifiers[iStat] += (GetArmorStatBonus(iStat, kCharacter.kInventory.iArmor, kCharacter));
        // End:0x29D
        if(kCharacter.aUpgrades[27] > 0)
        {
            aModifiers[iStat] += (GetExtraArmorStatBonus(iStat, kCharacter.kInventory.iArmor));
        }
        // End:0x334
        if(XComTacticalGame(XComGameInfo(WorldInfo.Game)) != none)
        {
            // End:0x301
            if(iStat == 1)
            {
                aModifiers[iStat] += int(Left(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), inStr(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_")));
            }
            // End:0x334
            if(iStat == 13)
            {
                aModifiers[iStat] += int(Left(Split(Split(Split(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_", true), "_", true), "_", true), inStr(Split(Split(Split(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_", true), "_", true), "_", true), "_")));	
            }
        }
        // End:0x83C
        if(!WeaponHasProperty(iEquippedWeapon, 2) || (iStat != 1) && iStat != 13)
        {
            aModifiers[iStat] += (GetBackpackStatBonus(iStat, arrBackPackItems, kCharacter));
            switch(iStat)
            {
                // End:0x4AA
                case 0:
                    // End:0x41B
                    if(XComTacticalGame(XComGameInfo(WorldInfo.Game)) != none)
                    {
                        aModifiers[iStat] += int(Left(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, InStr(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_")));
                    }
                    // End:0x4A7
                    if((kCharacter.aUpgrades[123] & 1) > 0)
                    {
                        // End:0x4A7
                        if((kCharacter.iType == 3) || kCharacter.eClass == 6)
                        {
                            aModifiers[iStat] += 3;
                        }
                    }
                    // End:0x83C
                    break;
                // End:0x508
                case 2:
                    // End:0x505
                    if(XComTacticalGame(XComGameInfo(WorldInfo.Game)) != none)
                    {
                        aModifiers[iStat] += int(Left(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), inStr(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_")));
                    }
                    // End:0x83C
                    break;
                // End:0x5FC
                case 3:
                    // End:0x563
                    if(XComTacticalGame(XComGameInfo(WorldInfo.Game)) != none)
                    {
                        aModifiers[iStat] += int(GetRightMost(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2));
                    }
                    aModifiers[iStat] += (CalcHitChance_NonUnitTarget(kCharacter.kInventory.iArmor, 0, 0, iStat, false));
                    // End:0x5F9
                    if(kCharacter.aUpgrades[31] > 0)
                    {
                        aModifiers[iStat] += 4;
                    }
                    // End:0x83C
                    break;
                // End:0x72C
                case 4:
                    // End:0x657
                    if(XComTacticalGame(XComGameInfo(WorldInfo.Game)) != none)
                    {
                        aModifiers[iStat] += int(Left(Split(Split(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_", true), "_", true), inStr(Split(Split(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_", true), "_", true), "_")));
                    }
                    aModifiers[iStat] += (CalcHitChance_NonUnitTarget(kCharacter.kInventory.iArmor, 0, 0, iStat, false));
                    // End:0x6ED
                    if(kCharacter.aUpgrades[132] > 0)
                    {
                        aModifiers[iStat] += 5;
                    }
                    // End:0x729
                    if(kCharacter.aUpgrades[148] > 0)
                    {
                        aModifiers[iStat] += 10;
                    }
                    // End:0x83C
                    break;
                // End:0x78E
                case 1:
                    aModifiers[iStat] += (CalcHitChance_NonUnitTarget(kCharacter.kInventory.iArmor, 0, 0, iStat, false));
                    // End:0x83C
                    break;
                // End:0x7EC
                case 7:
                    // End:0x7E9
                    if(XComTacticalGame(XComGameInfo(WorldInfo.Game)) != none)
                    {
                        aModifiers[iStat] += int(Left(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), inStr(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_")));
                    }
                    // End:0x83C
                    break;
                // End:0x836
                case 17:
                    // End:0x833
                    if((kCharacter.aUpgrades[123] & 8) > 0)
                    {
                        aModifiers[iStat] *= float(2);
                    }
                    // End:0x83C
                    break;
                // End:0xFFFF
                default:
                    // End:0x83C
                    break;
                }
        }
        ++ iStat;
        // [Loop Continue]
        goto J0x176;
    }
    //return;    
}