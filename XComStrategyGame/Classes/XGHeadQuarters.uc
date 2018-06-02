class XGHeadQuarters extends XGStrategyActor
    notplaceable;

const m_iSpeechLength = 14;

var string m_strName;
var array<TSatellite> m_arrSatellites;
var array<XGOutpost> m_arrOutposts;
var array<XGFacility> m_arrFacilities;
var XGFacility_MissionControl m_kMC;
var XGFacility_Engineering m_kEngineering;
var XGFacility_Labs m_kLabs;
var XGFacility_Hangar m_kHangar;
var XGFacility_Barracks m_kBarracks;
var XGFacility_GollopChamber m_kGollop;
var XGFacility_SituationRoom m_kSitRoom;
var array<int> m_arrBaseFacilities;
var array<TStaffOrder> m_arrHiringOrders;
var array<TShipOrder> m_akInterceptorOrders;
var array<TShipTransfer> m_arrShipTransfers;
var int m_iCash;
var int m_iContinent;
var int m_iCountry;
var XGFacility m_kActiveFacility;
var XGBase m_kBase;
var bool m_bWarning;
var bool m_bCashPositive;
var bool m_bHyperwaveActivated;
var bool m_bUrgedEWFacility;
var bool m_bInFacilityTransition;
var TMissionReward m_kLastReward;
var TMissionResult m_kLastResult;
var array<int> m_arrLastCargo;
var array<XGGameData.EItemType> m_arrLastCaptives;
var TFCMission m_kLastFCM;
var XGObjectiveManager m_kObjectiveManager;
var int m_iMoneyMadeThisMonth;
var array<int> m_arrFacilityBinks;
var array<TItemProject> m_akFirestormOrders;
var float m_fAnnounceTimer;
var float m_fCentralTimer;
var const localized string m_strSpeakSatOpRegion;
var const localized string m_strSpeakCommanderReportFacility;
var const localized string m_arrSpeech[14];
var const localized string m_strScienceLab;
var const localized string m_strEngineering;
var const localized string m_strBarracks;
var const localized string m_strMissionControl;
var const localized string m_strHangar;
var const localized string m_strSituationRoom;
var const localized string m_strDebtWarningTitle;
var const localized string m_strDebtWarningBody;
var const localized string m_strDebtWarningOK;
var const localized string m_strDebtWarningCancel;

function bool IsHyperwaveActive() {}

function XGFacility_Barracks GetBarracks() 
{
	return m_kBarracks;
}

function XGFacility CurrentFacility()
{
    return ReturnValue;    
}

function string RecordHiredAdditionalSoldiers(int iQuantity)
{
}

function OrderStaff(int iType, int iQuantity)
{}

function UpdateHiringOrders()
{
}

function Update(){}
function UpdateSatellites(){}
function string RecordSatelliteLaunch(XGCountry LaunchedOverCountry){}
function bool CanLaunchSatelliteTo(int iCountry){}
function bool IsSatelliteInTransitTo(int iCountry){}
function AddSatelliteNode(int iCountry, int iType, optional bool bInstant){}
function UpdateSatCoverageGraphics(){}
function int HasBonus(XGStrategyActorNativeBase.EContinentBonus eBonus){}
function RemoveFacility(int iFacility){}
function AddFacility(int iFacility){}
function bool HasFacility(int iFacility){}
function int GetPowerUsed(){}
function int GetPowerCapacity(){}
function int GetSatelliteLimit(){}
function int GetAvailablePower(){}
function PayOverhead(){}
function int GetSalaryCost(){}
function PaySalaries(){}
function int GetStaffOnOrder(XGStrategyActorNativeBase.EStaffType eStaff){}
function OrderInterceptors(int iContinent, int iQuantity){}
function string RecordPurchasingInterceptor(int iQuantity){}
function UpdateFirestorms(TItemProject kOrder){}
function ReduceInterceptorOrder(int iOrder){}
function int GetInterceptorsOnOrder(optional int OrderIndex){}
function UpdateInterceptorOrders(){}
function GetEvents(out array<THQEvent> arrEvents){}
function int GetFacilityMaintenanceCost(){}
function int GetMaintenanceTotal(){}
function PayMaintenance(){}
function string RecordPayingMaintenance(){}
function int GetNumStaff(){}
function int GetNumFacilities(XGGameData.EFacilityType eFacility){}
function int GetCaptiveCapacity(){}
function int GetSoldierCapacity(){}
function int GetScientistCapacity(){}
function int GetEngineerCapacity(){}
function Vector2D GetCoords(){}
function int GetContinent(){}
function CreateFacilities(){}
function array<XGFacility> GetFacilities(){}
function SetActiveFacility(XGFacility kFacility, float fInterpTime){}
function JumpToFacility(XGFacility kFacility, float fInterpTime, optional int iView, optional name NewState){}
function array<XGFacility> GetMainFacilities(){}
function XGFacility_MissionControl GetMissionControl(){}
function XGFacility_Hangar GetHangar(){}
function XGFacility_Labs GetLabs(){}
function XGFacility_Engineering GetEngineering(){}
function XGFacility_GollopChamber GetGollop(){}
function XGFacility_SituationRoom GetSitRoom(){}
function bool FacilityAnnouncement(){}
function bool CheckForAlerts(){}
function bool CheckForDebrief(){}
function CheckForOperatingLoss(IScreenMgrInterface kScreen){}
function bool HasOutpostInContinent(int iContinent){}
function AddOutpost(int iContinent){}
