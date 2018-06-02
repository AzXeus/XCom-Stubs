class XGShip_Dropship extends XGShip
    config(GameData)
    notplaceable
    hidecategories(Navigation);

struct CheckpointRecord_XGShip_Dropship extends CheckpointRecord
{
    var XGDropshipCargoInfo CargoInfo;
    var array<XGStrategySoldier> m_arrSoldiers;
    var XGStrategySoldier m_kCovertOperative;
    var int m_iCapacity;
    var string m_strCallsign;
    var int m_iNumMissions;
    var array<int> m_arrUpgrades;
    var bool m_bReturnedFromCombat;
    var bool m_bReturnedFromFirstMission;
    var string m_strLastOpName;
    var bool m_bExtendSquadForHQAssault;
    var bool m_bReinforcementsForHQAssault;
};

var int m_iHighlight;
var array<TFCRequest> m_arrRequests;
var bool m_bCanDoSelectedRequest;
var const localized string m_strNumCodePieces;
var const localized string m_strNumEngineers;
var const localized string m_strNumScientist;
var const localized string m_strNumSatellite;
var const localized string m_strNewRecruit;
var const localized string m_strTitleLabel;
var const localized string m_strLabelRequested;
var const localized string m_strValueRequested;
var const localized string m_strValueInStorage;
var const localized string m_strLabelTimeLimit;
var const localized string m_strLabelInStorage;
var const localized string m_strTimeLimitDays;
var const localized string m_strLabelRewards;
var const localized string m_strLabelSellItems;
var const localized string m_strLabelTransferSatellite;
var const localized string m_strSellItemsDate;
var const localized string m_strLabelIgnoreRequest;
var const localized string m_strRequestCompletedTitleLabel;
var const localized string m_strLabelAwarded;

DefaultProperties
{
}
