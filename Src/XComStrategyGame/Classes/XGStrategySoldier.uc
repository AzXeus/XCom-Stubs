class XGStrategySoldier extends XGStrategyActorNativeBase
	native
	notplaceable;

enum ESoldierStatus
{
    eStatus_Active,
    eStatus_OnMission,
    eStatus_PsiTesting,
    eStatus_CovertOps,
    eStatus_GeneMod,
    eStatus_Augmenting,
    eStatus_Healing,
    eStatus_Dead,
    eStatus_Healing1,
    eStatus_MAX
};

var TCharacter m_kChar;
var TSoldier m_kSoldier;
var int m_iEnergy;
var array<EPerkType> m_arrRandomPerks;
var int m_arrMedals[7];
var int m_iNumMissions;
var transient XComUnitPawn m_kPawn;
var TInventory m_kBackedUpLoadout;
var int m_iTurnsOut;


function int GetClass()
{
}

function string GetName(int eType) {}

function int GetStatus() {}

function string GetStatusString() {}

function int GetStatusUIState() {}

function bool IsAugmented() {}

function int GetPsiRank() {}

function bool IsATank() {}

function Heal(int iHP) {}

function bool HasPerk(int iPerk)
{
    return (m_kChar.aUpgrades[iPerk] & 1) != 0;                
}

function XComPerkManager PERKS()
{
    return XComGameReplicationInfo(class'Engine'.static.GetCurrentWorldInfo().GRI).m_kPerkTree;
    //return ReturnValue;    
}

function GivePerk(int Perk) {}

function EPerkType GetPerkInClassTree(int branch, int Option, optional bool bIsPsiTree) 
{
	return ReturnValue;
}

function bool PerkLockedOut(int Perk, int branch, optional bool isPsiPerk) 
{
	return ReturnValue;
}

function bool IsReadyToLevelUp() {}

function bool IsRandomPerkValidToAdd(int Perk) {}

function LevelUp(optional XGTacticalGameCoreData.ESoldierClass eClass, optional out string statsString) {}

function LevelUpStats(optional int statsString) {}

function AssignRandomPerks() {}

function int MedalCount() {}

function bool HasAnyMedal() {}

native function int GetRank();

function XComUnitPawn CreatePawn(optional name DestState) {}

function ClearPerks(optional bool bClearMedalPerks) {}

simulated function int GetAbilityTreeBranch() {}

simulated function int GetAbilityTreeOption() {}

function OnLoadoutChange() {}

function DestroyPawn() {}

native function int GetCurrentStat(const int iStat);

native function int GetMaxStat(const int iStat);

native function bool IsInjured();

function SetHQLocation(int iNewHQLocation, optional bool bForce, optional int SlotIdx, optional bool bForceNewPawn)
{
}

function SetStatus(XGStrategySoldier.ESoldierStatus eNewStatus, optional bool bMoveToDefaultHQLocation)
{
}