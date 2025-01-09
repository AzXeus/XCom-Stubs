class XGFacility_Barracks extends XGFacility
    hidecategories(Navigation)
    config(GameData)
    notplaceable;

struct Medal
{
    var string m_Name;
    var int m_eType;
    var XGTacticalGameCoreNativeBase.EPerkType m_eChosenPower;
    var int m_iAvailable;
    var int m_iUsed;
    var int m_iMissionsLeft;
};
	
var XComPerkManager m_kPerkManager;
var Medal m_arrMedals[7];
var XGFacility_Lockers m_kLockers;
var array<XGStrategySoldier> m_arrSoldiers;
var XGCharacterGenerator m_kCharGen;
var int m_iSoldierCounter;
var XGFacility_CyberneticsLab m_kCyberneticsLab;

function RandomizeStats(XGStrategySoldier kRecruit)
{
}

function int RollStat(XGStrategySoldier iLow, int iHigh, int iMultiple) {}

function XGStrategySoldier GetSoldierByID(int iID) {}

function bool NickNameMatch(XGStrategySoldier kSoldier) {}

function bool HasOTSUpgrade(int eUpgrade) {}

function bool NameMatch(XGStrategySoldier kSoldier)
{
}

function AddNewSoldiers(int iNumSoldiers, optional bool bCreatePawns)
{
}

function AddNewSoldier(XGStrategySoldier kSoldier, optional bool bSkipReorder, optional bool bBlueshirt)
{
}

function ReorderRanks()
{
}

function int GetNumSoldiersOfClass(XGTacticalGameCoreData.ESoldierClass eClass)
{
}

function XGStrategySoldier CreateSoldier(XGTacticalGameCoreData.ESoldierClass eClass, int iSoldierLevel, int iCountry, optional bool bBlueshirt)
{
    local XGStrategySoldier kSoldier;
	local TSoldier mSoldier;
    local int I;

    bBlueshirt = false;
    kSoldier = Spawn(class'XGStrategySoldier');
    J0x29:
    kSoldier.m_kSoldier = m_kCharGen.CreateTSoldier(,, iCountry);
    // End:0xAC
    if(NameMatch(kSoldier))
    {
        kSoldier.m_kSoldier = mSoldier;
        // [Loop Continue]
        goto J0x29;
    }
    kSoldier.m_kSoldier.bBlueshirt = bBlueshirt;
    kSoldier.m_kChar = TACTICAL().GetTCharacter(2);
    STORAGE().AutoEquip(kSoldier);
    // End:0x2DA
	if(eClass == 7)
    {
    	kSoldier.m_kSoldier.iID = m_iSoldierCounter + 1;
        m_arrSoldiers.AddItem(kSoldier);
        class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator.Mutate(("FuryCreateSold" $ "_") $ string(kSoldier.m_kSoldier.iID), class'Engine'.static.GetCurrentWorldInfo().GetALocalPlayerController());
        m_arrSoldiers.RemoveItem(kSoldier);
        eClass = 0;
        kSoldier.SetHQLocation(0, true);
    }
	else
    {
	    if(eClass == 8)
    	{
    	    kSoldier.m_kSoldier.iID = m_iSoldierCounter + 1;
    	    m_arrSoldiers.AddItem(kSoldier);
    	    class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator.Mutate(("MercCreateSold" $ "_") $ string(kSoldier.m_kSoldier.iID), class'Engine'.static.GetCurrentWorldInfo().GetALocalPlayerController());
    	    m_arrSoldiers.RemoveItem(kSoldier);
    	    eClass = 0;
    	    kSoldier.SetHQLocation(0, true);
    	}
    	// End:0x2ED
    	else
    	{
    	    RandomizeStats(kSoldier);
    	}
    }
    // End:0x39C
    if(bBlueshirt)
    {
        // End:0x34C
        if(ENGINEERING().IsFoundryTechResearched(42))
        {
            LOCKERS().EquipLargeItem(kSoldier, 215, 0);
        }
        // End:0x39C
        if(ENGINEERING().IsFoundryTechResearched(43))
        {
            LOCKERS().EquipArmor(kSoldier, 159);
        }
    }
    I = 0;
    J0x3A7:
    // End:0x3F5 [Loop If]
    if(I < iSoldierLevel)
    {
        kSoldier.LevelUp(eClass);
        ++ I;
        // [Loop Continue]
        goto J0x3A7;
    }
    AddNewSoldier(kSoldier,, bBlueshirt);
    return kSoldier;
    //return ReturnValue;    
}