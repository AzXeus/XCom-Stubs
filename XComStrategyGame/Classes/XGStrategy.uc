class XGStrategy extends XGStrategyActor
    notplaceable;

var const localized string m_strNewItemAvailable;
var const localized string m_strNewItemHelp;
var const localized string m_strNewFacilityAvailable;
var const localized string m_strNewFacilityHelp;
var const localized string m_strNewFoundryAvailable;
var const localized string m_strNewFoundryHelp;
var XGHeadQuarters m_kHQ;
var XGGeoscape m_kGeoscape;
var XGWorld m_kWorld;
var XGStrategyAI m_kAI;
var XGRecapSaveData m_kRecapSaveData;
var XGSetupPhaseManager m_kSetupPhaseManager;
var int m_iDifficulty;
var int m_iLowestDifficulty;
var bool m_bDebugStart;
var bool m_bTutorial;
var bool m_bMeldTutorial;
var bool m_bLost;
var bool m_bGameOver;
var bool m_bOvermindEnabled;
var bool m_bIronMan;
var bool m_bControlledStart;
var bool m_bShowRecommendations;
var bool m_bPlayedTutorial;
var bool m_bCompletedFirstMec;
var bool m_bUsedEEC;
var private bool m_bLoadedFromSave;
var array<int> m_arrMissionTotals;
var XGNarrative m_kNarrative;
var array<int> m_arrItemUnlocks;
var array<int> m_arrGeneModUnlocks;
var array<int> m_arrFacilityUnlocks;
var array<int> m_arrFoundryUnlocks;
var XGMission_FundingCouncil m_kTutorialMission;
var float m_fGameDuration;
var array<int> m_arrSecondWave;
var StrategyGameTransport m_kStrategyTransport;

function XGHeadQuarters GetHQ()
{
}

function XGStrategyAI GetAI()
{
}

function XGWorld GetWorld()
{
}

function XGGeoscape GetGeoscape() 
{
}
function int GetDifficulty(){}
function InitDifficulty(int iDifficulty){}
function GoToHQ(){}
function BeginCombat(XGMission kMission){}
function int GetAct(){}
function XComHQSoundCollection.EMusicCue GetActMusic(){}
function int GetNumMissionsTaken(optional int iMissionType){}
function string RecordMissionResult(){}
function bool AreDropshipSoldiersStillLoading(){}
function int GetDiffBalance(){}
function int GetDays(){}
function int CalcCombatScore(){}
function int CalcTotalScore(){}
function int CalcScienceScore(){}
function int CalcEngineeringScore(){}
function int CalcResourcesScore(){}
function int CalcInterceptionScore(){}
function string GetTip(XGGameData.ETipTypes eTip){}
function XGRecapSaveData GetRecapSaveData(){}
function NewGame(){}
function Init(bool bLoadingFromSave){}
function OnLoadedGame(){}