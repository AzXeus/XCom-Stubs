class XComHeadquartersGame extends XComGameInfo;

var protected XGStrategy m_kGameCore;

function XGStrategy GetGameCore()
{
}

defaultproperties
{
    StrategySaveGameClass=class'Checkpoint_StrategyGame'
}