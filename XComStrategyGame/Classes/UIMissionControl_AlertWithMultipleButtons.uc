class UIMissionControl_AlertWithMultipleButtons extends UIMissionControl_AlertBase
    hidecategories(Navigation);

var protected int m_iSelectedBtn;


protected simulated function AS_SetButtonFocus(int buttonIndex, bool bFocus) {}

protected simulated function AS_SetButtonData(int buttonIndex, string Text, bool Disabled) {}

protected simulated function RealizeSelected(int newSelection) {}

protected simulated function UpdateButtonText() {}
simulated function bool OnUnrealCommand(int Cmd, int Arg){}
simulated function bool OnMouseEvent(int Cmd, array<string> args){}

simulated function UpdateData() {}

simulated function OnInit() {}