class UIDropshipHUD extends UI_FxsScreen
    hidecategories(Navigation);

var private bool bMapLoaded;

simulated function Init(XComPlayerController _controllerRef, UIFxsMovie _manager)
{
    BaseInit(_controllerRef, _manager);
    manager.LoadScreen(self);
    XComHQPresentationLayer(Owner).InitMouseCursor();
    //return;    
}

simulated function OnInit()
{
    super.OnInit();
    UpdateData();
    //return;    
}

simulated function bool OnMouseEvent(int ucmd, array<string> parsedArgs)
{
    // End:0xF2
    if(bMapLoaded)
    {
        PlaySound(soundcue'MenuSelectCue', true);
        XComHQPresentationLayer(Owner).m_kBriefing.OnAccept();
        XComHQPresentationLayer(XComHeadquartersController(XComHeadquartersGame(class'Engine'.static.GetCurrentWorldInfo().Game).PlayerController).m_Pres).RemoveUIDropshipBriefingHUD();
    }
    return true;
    //return ReturnValue;    
}

simulated function UpdateData()
{
    // End:0x45
    if((IsInited()) && bMapLoaded)
    {
        AS_ShowLaunchMissionButton(class'UIBriefing'.default.m_strToLaunchMission);
    }
    //return;    
}

simulated function OnMapLoaded()
{
    bMapLoaded = true;
    UpdateData();
    //return;    
}

simulated function OnReceiveFocus()
{
    super(UI_FxsPanel).OnReceiveFocus();
    Show();
    //return;    
}

simulated function OnLoseFocus()
{
    super(UI_FxsPanel).OnLoseFocus();
    Hide();
    //return;    
}

protected simulated function AS_ShowLaunchMissionButton(string buttonText, optional bool bDisabled)
{
    bDisabled = false;
    manager.ActionScriptVoid(string(GetMCPath()) $ ".ShowLaunchMissionButton");
    //return;    
}