class UIMissionControl_AlertBase extends UI_FxsPanel
    hidecategories(Navigation);

var string s_alertName;
var bool m_bIsSimpleAlert;
var bool m_bShowBackButtonOnMissionControl;
var XGMissionControlUI m_kLocalMgr;

simulated function Init(XComPlayerController _controller, UIFxsMovie _manager, UIMissionControl _screen) {}

simulated function OnInit() {}

simulated function XGMissionControlUI GetMgr(optional int iStaringView) {}

protected simulated function UpdateSimpleAlertData() {}

protected simulated function UpdateButtonText() {}

protected simulated function AS_SetTitle(string Title) {}

protected simulated function AS_SetText(string Text) {}

protected simulated function AS_SetButtonText(string Text) {}

simulated function CloseAlert(optional int inputCode) {}

simulated function OnReceiveFocus() {}

simulated function bool OnMouseEvent(int Cmd, array<string> args){}

simulated function bool OnUnrealCommand(int Cmd, int Arg){}

private final simulated function UpdateButtonHelp(){}

simulated function ClearMissionControlAlertReference(){}

simulated function Remove(){}