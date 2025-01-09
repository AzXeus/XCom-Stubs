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
{}