class UIMissionControl extends UI_FxsScreen
    hidecategories(Navigation)
    implements(IScreenMgrInterface);

var XGMissionControlUI m_kLocalMgr;
var protected int m_iView;
var UIMissionControl_AlertBase m_kActiveAlert;
var UIMissionControl_MissionList m_kMissionList;
var UIStrategyComponent_EventList m_kEventList;

simulated function Init(XComPlayerController _controllerRef, UIFxsMovie _manager, optional int iView)
{
}
simulated function GoToView(int iView)
{
}
simulated function XGMissionControlUI GetMgr(optional int iStaringView)
{
}
simulated function OnInit()
{
}
function UFOContact_BeginShipSelection(XGShip_UFO kTarget)
{
}
simulated function UpdateButtonHelp() {}
simulated function ShowBackButtonForAlert() {}
simulated function Remove() {}
simulated function HideNonAlertPanels() {}
DefaultProperties
{
}
