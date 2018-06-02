class XGObjectiveManager extends XGStrategyActor
    config(GameData)
    notplaceable
    hidecategories(Navigation);

var XGStrategyActorNativeBase.EGameObjective m_eObjective;
var bool m_bObjectiveAnnounced;

function Init(optional XGStrategyActorNativeBase.EGameObjective eObjective){}
function bool NewObjective(XGStrategyActorNativeBase.EGameObjective eObjective){}
function Update(){}
function bool IsObjectiveComplete(XGStrategyActorNativeBase.EGameObjective eObj){}

function array<TSubObjective> GetSubObjectives(XGStrategyActorNativeBase.EGameObjective eObj){}

function TSubObjective BuildSubObjective(XGStrategyActorNativeBase.ESubObjective eSubObj){}

DefaultProperties
{
}
