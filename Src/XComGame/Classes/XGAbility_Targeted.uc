class XGAbility_Targeted extends XGAbility
    native(Core)
    notplaceable;
	
struct native TShotInfo
{

};

var bool m_bCritical;
var bool m_bHit;
var bool m_bReflected;
var bool m_bHasFlank;
var bool m_bHasOpenTarget;
var XGWeapon m_kWeapon;

native simulated function XGUnit GetPrimaryTarget();

final simulated function int TShotInfo_ToString(optional TShotInfo kShotInfo)
{
    local int strRep, I;

    I = m_kUnit.m_aCurrentStats[12];
    // End:0x44
    if(m_kWeapon == none)
    {
        return I;
    }
  	if(XGCharacter_Soldier(m_kUnit.GetCharacter()) != none) 
    {
  		class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator.Mutate("ObjectSort" $ "_" $ string(XGCharacter_Soldier(m_kUnit.GetCharacter()).m_kSoldier.iID), class'Engine'.static.GetCurrentWorldInfo().GetALocalPlayerController());
  		I += int(Left(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, InStr(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_")));
  		if(m_bCritical)
    	{
      		I += int(Left(split(split(split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), InStr(split(split(split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_")));
      	}
    }
    switch(class'XGTacticalGameCore'.static.GetWeaponClass(m_kWeapon.ItemType()))
    {
        // End:0x91
        case 1:
        // End:0xA5
        case 3:
            strRep = 31;
            // End:0xE3
            break;
        // End:0xAA
        case 2:
        // End:0xBE
        case 4:
            strRep = 40;
            // End:0xE3
            break;
        // End:0xD2
        case 5:
            strRep = 48;
            // End:0xE3
            break;
        // End:0xFFFF
        default:
            strRep = 0;
            // End:0xE3
            break;
    }
    // End:0x1A8
    if(strRep > 0)
    {
        // End:0x1A8
        if(class'XGTacticalGameCoreNativeBase'.static.TInventoryHasItemType(m_kUnit.GetCharacter().m_kChar.kInventory, strRep))
        {
            // End:0x1A8
            if(m_kWeapon.m_kTWeapon.iSize == 1)
            {
                I += 1;
            }
        }
    }
    strRep = XComGameReplicationInfo(class'Engine'.static.GetCurrentWorldInfo().GRI).m_kGameCore.GetTWeapon(m_kWeapon.ItemType()).iDamage;
    switch(GetType())
    {
        // End:0x267
        case 7:
        // End:0x26C
        case 8:
        // End:0x30F
        case 53:
            // End:0x30C
            if(m_kUnit.m_kCharacter.HasUpgrade(93))
            {
                // End:0x2DB
                if(m_kWeapon.HasProperty(4))
                {
                    I += 2;
                }
                // End:0x30C
                if(m_kWeapon.HasProperty(7))
                {
                    I += 4;
                }
            }
            // End:0xBA1
            break;
        // End:0x314
        case 79:
        // End:0x360
        case 86:
            // End:0x35F
            if(m_kUnit.m_kCharacter.HasUpgrade(125))
            {
                I += 2;
            }            
        // End:0x365
        case 16:
        // End:0x36A
        case 18:
        // End:0x56D
        case 82:
            // End:0x3B5
            if(m_kUnit.m_kCharacter.HasUpgrade(59))
            {
                I += 1;
            }
            // End:0x3FB
            if(m_kUnit.m_kCharacter.HasUpgrade(93))
            {
                I += 2;
            }
            // End:0xBA1
            break;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
        // End:0x591
        case 52:
            I -= int(float(strRep) * 0.50);
        // End:0x694
        case 19:
            // End:0x691
            if(m_kUnit.m_kCharacter.HasUpgrade(93))
            {
                // End:0x604
                if(m_kWeapon.ItemType() == 7)
                {
                    I += 2;
                }
                // End:0x639
                if(m_kWeapon.ItemType() == 218)
                {
                    I += 2;
                }
                // End:0x691
                if(m_kWeapon.ItemType() == 19)
                {
                    I += 2;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                }
            }
            // End:0xBA1
            break;
        // End:0x81C
        case 48:
            // End:0x7AF
            if(m_bCritical)
            {
                // End:0x6DB
                if(m_kWeapon.ItemType() == 6)
                {
                    I += 2;
                }
                // End:0x710
                if(m_kWeapon.ItemType() == 213)
                {
                    I += 2;
                }
                // End:0x745
                if(m_kWeapon.ItemType() == 12)
                {
                    I += 3;
                }
                // End:0x77A
                if(m_kWeapon.ItemType() == 216)
                {
                    I += 2;
                }
                // End:0x7AF
                if(m_kWeapon.ItemType() == 18)
                {
                    I += 4;
                }
            }
            // End:0x819
            if(m_kUnit.m_kCharacter.HasUpgrade(93))
            {
                // End:0x819
                if(m_kWeapon.HasProperty(7))
                {
                    I += 4;
                }
            }
            // End:0xBA1
            break;
        // End:0x8AA
        case 12:
            // End:0x88B
            if(m_kUnit.m_kCharacter.HasUpgrade(93))
            {
                // End:0x88B
                if(m_kWeapon.HasProperty(4))
                {
                    I += 2;
                }
            }
            I -= ((strRep + 1) / 2);
            // End:0xBA1
            break;
        // End:0x8D8
        case 84:
            I -= (strRep - 1);                                                                                                                                                                        
            // End:0xBA1
            break;
        // End:0x8F8
        case 49:
            I -= (strRep - 1);
            // End:0xBA1
            break;
        // End:0x978
        case 80:
            // End:0x975
            if(class'XGTacticalGameCoreNativeBase'.static.TInventoryHasItemType(m_kUnit.GetCharacter().m_kChar.kInventory, 211))
            {
                I += 3;
            }
            // End:0xBA1
            break;
        // End:0xB9E
        case 81:
            // End:0x9C3
            if(m_kUnit.m_kCharacter.HasUpgrade(121))
            {
                I += 4;
            }
            // End:0xA3B
            if(class'XGTacticalGameCoreNativeBase'.static.TInventoryHasItemType(m_kUnit.GetCharacter().m_kChar.kInventory, 129))
            {
                I += 3;
            }
            I -= 3;
            // End:0xAB9
            if(m_kUnit.GetCharacter().m_kChar.kInventory.arrLargeItems[1] == 22)
            {
                I += 3;
            }
            // End:0xB2A
            if(m_kUnit.GetCharacter().m_kChar.kInventory.arrLargeItems[2] == 22)
            {
                I += 3;
            }
            // End:0xB9B
            if(m_kUnit.GetCharacter().m_kChar.kInventory.arrLargeItems[3] == 22)
            {
                I += 3;
            }
            // End:0xBA1
            break;
        // End:0xFFFF
        default:
            J0xBA4:
            // End:0xBA4
            break;
    }
    // End:0xCF8
    if(m_kUnit.m_kCharacter.HasUpgrade(39))
    {
        // End:0xCF8
        if(m_bCritical)
        {
            I += Min(4, 1 + (m_kUnit.GetNumSquadVisibleEnemies(m_kUnit) / 3));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
        }
    }
    // End:0xD7C
    if(m_kUnit.m_kCharacter.HasUpgrade(41))
    {
        // End:0xD7C
        if(m_bCritical)
        {
            // End:0xD7C
            if(m_kUnit.RunAndGunPerkActive())
            {
                I += ((strRep + 2) / 3);
            }
        }
    }
    // End:0xDF9
    if(m_kUnit.m_kCharacter.HasUpgrade(94))
    {
        // End:0xDF9
        if(m_kWeapon.m_kTWeapon.iSize == 1)
        {
            I += 1;
        }
    }
    // End:0xE63
    if(m_kUnit.m_kCharacter.HasUpgrade(94))
    {
        // End:0xE63
        if(m_kWeapon.HasProperty(2))
        {
            I += 1;
        }
    }
    // End:0xEE8
    if((m_kUnit.GetCharacter().m_kChar.aUpgrades[123] & 16) > 0)
    {
        // End:0xEE8
        if(m_kWeapon.HasProperty(2))
        {
            I += 1;
        }
    }
    // End:0x104A
    if(m_kUnit.m_kCharacter.HasUpgrade(135))
    {
        // End:0x104A
        if((GetPrimaryTarget()) != none)
        {
            // End:0x104A
            if((GetType()) != 84)
            {
                // End:0x104A
                if(XComGameReplicationInfo(class'Engine'.static.GetCurrentWorldInfo().GRI).m_kGameCore.m_kAbilities.HasAutopsyTechForChar(GetPrimaryTarget().m_kCharacter.m_kChar.iType))
                {
                    // End:0x103D
                    if(m_kWeapon.HasProperty(2))
                    {
                        I += 1;
                    }
                    // End:0x104A
                    else
                    {
                        I += 2;
                    }
                }
            }
        }
    }
    // End:0x10F2
    if(class'XGTacticalGameCore'.static.GetWeaponClass(m_kWeapon.ItemType()) == 5)
    {
        // End:0x10F2
        if((m_kUnit.GetCharacter().m_kChar.aUpgrades[123] & 4) > 0)
        {
            I += 1;
        }
    }
    // End:0x1177
    if(class'XGTacticalGameCoreNativeBase'.static.TInventoryHasItemType(m_kUnit.GetCharacter().m_kChar.kInventory, 219))
    {
        // End:0x1177
        if(m_bCritical)
        {
            I += 1;
        }
    }
    // End:0x13DB
    if(m_bCritical)
    {
        // End:0x11DE
        if(m_kWeapon.ItemType() == 15)
        {
            // End:0x11DE
            if(!GetPrimaryTarget().IsVulnerableToElectropulse())
            {
                I += 1;
            }
        }
        // End:0x1277
        if(m_kWeapon.ItemType() == 99)
        {
            // End:0x1277
            if(VSize(m_kUnit.Location - self.GetPrimaryTarget().Location) <= float(6 * 64))
            {
                I += 1;
            }
        }
        // End:0x1342
        if(m_kWeapon.ItemType() == 230)
        {
            // End:0x1342
            if((GetPrimaryTarget().IsFlankedByLoc(m_kUnit.Location) || GetPrimaryTarget().IsFlankedBy(m_kUnit)) || !GetPrimaryTarget().IsInCover())
            {
                I += 1;
            }
        }
        // End:0x13DB
        if(m_kWeapon.ItemType() == 18)
        {
            // End:0x13DB
            if(VSize(m_kUnit.Location - self.GetPrimaryTarget().Location) >= float(35 * 96))
            {
                I += 1;
            }
        }
    }
    // End:0x1433
    if(m_kWeapon.ItemType() == 250)
    {
        // End:0x1433
        if(GetPrimaryTarget().IsFlying())
        {
            I += 1;
        }
    }
    // End:0x148B
    if(m_kWeapon.ItemType() == 30)
    {
        // End:0x148B
        if(GetPrimaryTarget().IsVulnerableToElectropulse())
        {
            I += 1;
        }
    }
    // End:0x14E4
    if(m_kWeapon.ItemType() == 245)
    {
        // End:0x14E4
        if(m_kUnit.IsAffectedByAbility(20))
        {
            I += 1;
        }
    }
    // End:0x1583
    if(m_kUnit.GetCharacter().HasUpgrade(14))
    {
        // End:0x1583
        if(m_kUnit.m_iNumTimesUsedInTheZone > 0)
        {
            I = Max(I - m_kUnit.m_iNumTimesUsedInTheZone, 1 - strRep);
        }
    }
    return I;
    //return ReturnValue;    
}