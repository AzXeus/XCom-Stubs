class UIStrategyHUD extends UI_FxsScreen
    hidecategories(Navigation)
    implements(IScreenMgrInterface);

var const localized string m_strBackLabel;
var const localized string m_strAcceptLabel;
var const localized string m_strZoomLabel;
var const localized string m_strMoveCameraLabel;
/*
var UIStrategyHUD_FacilityMenu m_kMenu;
var UIStrategyComponent_Clock m_kClock;
var UIStrategyComponent_EventList m_kEventList;
var UINavigationHelp m_kHelpBar;
var XGHeadquartersUI m_kMgr;
var UIStrategyHUD_BuildQueue m_kBuildQueue;
var UIStrategyTutorialBox m_kTutorialHelpBox;
*/
var bool m_bIsFocused;
var bool m_bPostOnInitFocusCached;
var delegate<OnMouseClickDel> m_MouseAcceptDelegate;
var delegate<OnMouseClickDel> m_MouseBackDelegate;
var delegate<OnMouseClickDel> __OnMouseClickDel__Delegate;
var delegate<onButtonClickedDelegate> __onButtonClickedDelegate__Delegate;

delegate bool OnMouseClickDel()
{
    //return ReturnValue;    
}

delegate onButtonClickedDelegate()
{
    //return;    
}
function GoToView(int iView){}
simulated function UpdateDefaultResources(){}
simulated function UpdateFunds(){}
simulated function UpdateMeld(){}
