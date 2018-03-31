class UI_FxsPanel extends Actor
    native(UI)
    notplaceable
    hidecategories(Navigation);
	
enum EWidgetColor
{
    eColor_Xcom,
    eColor_Alien,
    eColor_Attention,
    eColor_Good,
    eColor_Bad,
    eColor_White,
    eColor_Black,
    eColor_Red,
    eColor_Green,
    eColor_Blue,
    eColor_Yellow,
    eColor_Orange,
    eColor_Cyan,
    eColor_Purple,
    eColor_Gray,
    eColor_MAX
};
	
var private bool b_DependantVariablesAreInitialized;
var private bool b_CallOnInitOnDependantVariablesInitialized;
var protected bool b_IsInitialized;
var protected bool b_IsVisible;
var protected bool b_IsFinished;
var protected bool b_IsFocused;
var protected bool b_ShowOnInitUpdate;
var protected bool b_HideOnInitUpdate;
var bool b_OwnsMouseFocus;
var protected name s_name;
var protected name m_sFullMovieclipPath;
var protected XComPlayerController controllerRef;
var protected UI_FxsScreen screen;