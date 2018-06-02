class XGFacility_Barracks extends XGFacility
    hidecategories(Navigation)
    config(GameData)
    notplaceable;

enum ELastMissionResult
{
    eLastResult_None,
    eLastResult_Bad,
    eLastResult_Good,
    eLastResult_MAX
};
struct TMedal
{
    var XGGameData.EMedalType m_eType;
    var EPerkType m_ePowerA;
    var EPerkType m_ePowerB;
    var int m_iMaxAwards;
    var int m_iMissions;
};

struct Medal
{
    var string m_Name;
    var int m_eType;
    var EPerkType m_eChosenPower;
    var int m_iAvailable;
    var int m_iUsed;
    var int m_iMissionsLeft;
};
	
struct MedalRequirements
{
    var int m_iNumAbductions;
    var bool m_bSoldierKilledOrCritWounded;
    var array<XGGameData.EContinent> m_arrContinentMissions;
    var int m_iNumTerrorMissions;
    var int m_iNumCovertOpsMissions;
    var int m_iNumSpecialMissions;
    var bool m_bHQAssaultComplete;
};
struct RecycledMedals
{
    var int m_iNumMissions;
    var array<XGGameData.EMedalType> m_arrMedalsToRecycle;
};

var XGStrategySoldier m_kVolunteer;
var array<XGStrategySoldier> m_arrSoldiers;
var array<XGStrategySoldier> m_aLastMissionSoldiers;
var XGStrategySoldier m_kLastMissionCovertOperative;
var array<XGStrategySoldier> m_arrFallen;
var array<int> m_arrOTSUpgrades;
var XGFacility_PsiLabs m_kPsiLabs;
var XGFacility_GeneLabs m_kGeneLabs;
var XGFacility_CyberneticsLab m_kCyberneticsLab;
var int m_iSoldierCounter;
var int m_iTankCounter;
var int m_iAlloyTankCounter;
var int m_iHoverTankCounter;
var int m_iCapacity;
var int m_iHighestRank;
var int m_iHighestMecRank;
var int m_iHighestPsiRank;
var int m_aLastFemaleVoice[255];
var int m_aLastMaleVoice[255];
var ELastMissionResult m_eLastResult;
var int m_iMoreSoldiersCounter;
var bool m_bVolunteerUrged;
var bool m_bNotifyPromotions;
var transient bool bInitingNewGame;
var Medal m_arrMedals[255];
var MedalRequirements m_kMedalRequirements;
var MedalBattleData m_kMedalBattleData;
var private array<RecycledMedals> m_arrRecycledMedals;
var private array<ESoldierClass> m_arrClassWaitingList;
var TMedal m_arrTMedals[255];
var XGCharacterGenerator m_kCharGen;
var XGFacility_Lockers m_kLockers;
var XComPerkManager m_kPerkManager;
var private XGStrategySoldier m_kAwardCeremonySoldier;
var private int m_iAwardCeremonyPreviousLocation;
var const localized string m_strSHIVPrefix;
var const localized string m_strAlloySHIVPrefix;
var const localized string m_strHoverSHIVPrefix;
var const localized string m_strKIADateTimeFormat;
var const localized string m_arrMedalNames[11];

function Update(){}
function BuildMedals(){}
function BuildMedal(XGGameData.EMedalType Type, EPerkType PowerA, EPerkType PowerB, int MaxAwards, int Missions){}
function RandomizeStats(XGStrategySoldier kRecruit){}
function int RollStat(XGStrategySoldier iLow, int iHigh, int iMultiple) {}
function XGStrategySoldier GetSoldierByID(int iID) {}
function bool NickNameMatch(XGStrategySoldier kSoldier) {}
function bool HasOTSUpgrade(int eUpgrade) {}
function bool NameMatch(XGStrategySoldier kSoldier){}
function AddNewSoldiers(int iNumSoldiers, optional bool bCreatePawns){}
function AddNewSoldier(XGStrategySoldier kSoldier, optional bool bSkipReorder, optional bool bBlueshirt){}
function ReorderRanks(){}
function int GetNumSoldiers(){}
function int GetNumAvailableSoldiers(){}
function int GetNumVeterans(){}
function int GetNumSoldiersOfClass(ESoldierClass eClass){}
function XGStrategySoldier CreateSoldier(ESoldierClass eClass, int iSoldierLevel, int iCountry, optional bool bBlueshirt)
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