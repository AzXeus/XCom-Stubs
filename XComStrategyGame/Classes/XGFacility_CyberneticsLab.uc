class XGFacility_CyberneticsLab extends XGFacility
    config(GameData)
    notplaceable
    hidecategories(Navigation);
	
struct TCyberneticsLabPatient
{
    var XGStrategySoldier m_kSoldier;
    var int m_iHoursLeft;
};

var const config int m_iModCashCost;
var const config int m_iModMeldCost;
var const config int m_iModDays;
var array<TCyberneticsLabPatient> m_arrPatients;