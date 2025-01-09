class UI_FxsScreen extends UI_FxsPanel
	native(UI);

var protected name s_package;
var protected name s_screenId;
var protected name MCPath;
var protected bool m_bStopMusicOnExit;
var protected bool m_bAllowShowDuringCinematic;
var protected bool m_bPreCinematicVisible;
var protectedwrite bool m_bAnimateIntro;
var protectedwrite bool m_bAnimateOutro;
var protectedwrite bool m_bDelayRemove;
var protected int m_watchVar_OnCinematicMode;
var array<UI_FxsPanel> panels;

simulated function SetInputState(int eInputState)
{
}