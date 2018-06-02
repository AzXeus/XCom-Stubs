class XGAlienObjective extends XGStrategyActor
    config(GameData)
    notplaceable
    hidecategories(Navigation);

struct CheckpointRecord
{
    var array<XGAlienObjective> m_arrSimultaneousObjs;
    var TObjective m_kTObjective;
    var int m_iCountryTarget;
    var int m_iCityTarget;
    var Vector2D m_v2Target;
    var bool m_bAbandoned;
    var int m_iTimer;
    var int m_iNextMissionTimer;
    var bool m_bComplete;
    var bool m_bLastMissionSuccessful;
    var bool m_bMissionThwarted;
    var int m_iSightings;
    var int m_iDetected;
    var int m_iShotDown;
    var XGShip_UFO m_kLastUFO;
    var bool m_bFoundSat;
    var bool m_bAbductionLaunched;

    structdefaultproperties
    {
        m_arrSimultaneousObjs=none
        m_kTObjective=(eType=EAlienObjective.eObjective_Recon,strName="",strEOMDescription="",bAbandon=false,arrStartDates=none,arrUFOs=none,arrMissions=none,arrRadii=none,arrRandDays=none)
        m_iCountryTarget=0
        m_iCityTarget=0
        m_v2Target=(X=0.0,Y=0.0)
        m_bAbandoned=false
        m_iTimer=0
        m_iNextMissionTimer=0
        m_bComplete=false
        m_bLastMissionSuccessful=false
        m_bMissionThwarted=false
        m_iSightings=0
        m_iDetected=0
        m_iShotDown=0
        m_kLastUFO=none
        m_bFoundSat=false
        m_bAbductionLaunched=false
    }
};

var array<XGAlienObjective> m_arrSimultaneousObjs;
var TObjective m_kTObjective;
var int m_iCountryTarget;
var int m_iCityTarget;
var Vector2D m_v2Target;
var bool m_bAbandoned;
var bool m_bComplete;
var bool m_bLastMissionSuccessful;
var bool m_bMissionThwarted;
var bool m_bFoundSat;
var bool m_bAbductionLaunched;
var int m_iTimer;
var int m_iNextMissionTimer;
var int m_iSightings;
var int m_iDetected;
var int m_iShotDown;
var XGShip_UFO m_kLastUFO;

DefaultProperties
{
}
