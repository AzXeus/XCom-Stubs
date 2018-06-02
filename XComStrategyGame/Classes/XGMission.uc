class XGMission extends XGStrategyActor
    hidecategories(Navigation)
    config(GameData)
    abstract
    notplaceable;

struct CheckpointRecord
{
    var bool m_bScripted;
    var string m_strTitle;
    var Vector2D m_v2Coords;
    var int m_iCity;
    var int m_iCountry;
    var int m_iContinent;
    var int m_iMissionType;
    var int m_iID;
    var int m_iDuration;
    var array<int> m_arrArtifacts;
    var XGBattleDesc m_kDesc;
    var int m_iDetectedBy;
    var XGGameData.EMissionTime m_eTimeOfDay;
    var XGAlienObjective m_kAlienObjective;
    var TMissionReward m_kReward;
    var XGStrategyActorNativeBase.EMissionDifficulty m_eDifficulty;
    var XGEntity m_kEntity;
    var string m_strTip;
};

var bool m_bScripted;
var bool m_bCheated;
var Vector2D m_v2Coords;
var int m_iCity;
var int m_iCountry;
var int m_iContinent;
var int m_iMissionType;
var int m_iID;
var int m_iDuration;
var array<int> m_arrArtifacts;
var XGBattleDesc m_kDesc;
var int m_iDetectedBy;
var XGStrategyActorNativeBase.EMissionDifficulty m_eDifficulty;
var XGAlienObjective m_kAlienObjective;
var TMissionReward m_kReward;
var string m_strHelp;
var float fAnimationTimer;
var const localized string m_aFirstOpName[53];
var const localized string m_aSecondOpName[76];
var const localized string m_strOpAvenger;
var const localized string m_strOpAshes;
var const localized string m_strOpRandom;
var const localized string m_strTitle;
var const localized string m_strSituation;
var const localized string m_strObjective;
var string m_strOpenExclamationMark;
var string m_strTip;
