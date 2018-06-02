class XGScreenMgr extends XGStrategyActor
	abstract
	notplaceable;

struct TMiniWorld
{
    var TImage imgWorld;
    var TLabeledText ltxtFunding;
    var array<TRect> arrCountries;
    var array<Color> arrColors;
    var array<TText> arrTickerText;
};
var TMiniWorld m_kMap;
var IScreenMgrInterface m_kInterface;
var int m_iCurrentView;

function bool Narrative(XComNarrativeMoment Moment, optional bool availableInDebug){}
function bool UnlockFacility(XGGameData.EFacilityType eFacility){}
function Init(int iView)
{
    GoToView(iView);
    //return;    
}

function UpdateView()
{
    GetUIScreen().GoToView(m_iCurrentView); 
}

function GoToView(int iView)
{
    if(m_iCurrentView == iView)
    {
        return;
    }
    m_iCurrentView = iView;
    UpdateView();  
}

function IScreenMgrInterface GetUIScreen()
{
    if(NotEqual_InterfaceInterface(m_kInterface, (none)))
    {
        return m_kInterface;
    }
    else
    {
        return IScreenMgrInterface(Owner);
    }   
}
function PlayBadSound(){}
function PlayCloseSound(){}
function PlayGoodSound(){}
function PlayOpenSound(){}
function PlayScrollSound(){}
simulated function OnLoseFocus(){}
simulated function OnReceiveFocus(){}


static function string ConvertCashToString(int iAmount) {}