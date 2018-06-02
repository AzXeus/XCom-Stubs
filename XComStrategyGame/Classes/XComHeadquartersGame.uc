class XComHeadquartersGame extends XComGameInfo;

var protected XGStrategy m_kGameCore;
var PlayerController PlayerController;

function XGStrategy GetGameCore()
{
}
simulated function TItemCard GetItemCard() {}

function StartMatch() {}

function InitResources() {}

defaultproperties
{
    StrategySaveGameClass=class'Checkpoint_StrategyGame'
}