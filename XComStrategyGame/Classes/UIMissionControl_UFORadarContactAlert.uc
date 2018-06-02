class UIMissionControl_UFORadarContactAlert extends UIMissionControl_UFOAlert
    hidecategories(Navigation)
    implements(IScreenMgrInterface);

var XGShip_UFO m_kInterceptedUFO;
var XGInterceptionUI m_kInterceptMgr;
var int m_iSelectedShip;
var protected name m_nCachedState;

simulated function Init(XComPlayerController _controller, UIFxsMovie _manager, UIMissionControl _screen) {}

simulated function BeginInterception(XGShip_UFO kTarget) {}

simulated function UpdateData() {}

simulated function CloseAlert(optional int inputCode) {}

simulated function Remove() {}

simulated function GoToView(int iView) {}

final simulated function AS_ActivateShipList(string launchButtonText) {}

final simulated function AS_DeactivateShipList() {}

final simulated function AS_AddShip(string shipName, string SHIPWEAPON, string shipStatus, string iconLabel, bool IsDisabled) {}

final simulated function AS_SetShipFocus(int iIndex, bool bFocused) {}

final simulated function AS_SetSize(string Label, string Data) {}

final simulated function AS_SetHyperwaveDataSlim(string Title, string Label, string Data) {}

state UFOContact{}

state ShipSelection
{
	event BeginState(name PreviousStateName){}
	simulated function UpdateData(){}
	simulated function bool OnUnrealCommand(int Cmd, int Arg){}
	simulated function bool OnMouseEvent(int Cmd, array<string> args){}
	protected simulated function RealizeSelected(int newSelection){}
	simulated function OnAccept(){}
	simulated function OnCancel(){}
}
