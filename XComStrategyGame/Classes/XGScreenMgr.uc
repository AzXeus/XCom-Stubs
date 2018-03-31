class XGScreenMgr extends XGStrategyActor
	abstract
	notplaceable;
	
var IScreenMgrInterface m_kInterface;
var int m_iCurrentView;

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

static function string ConvertCashToString(int iAmount) {}