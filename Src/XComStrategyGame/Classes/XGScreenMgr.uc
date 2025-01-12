class XGScreenMgr extends XGStrategyActor
	abstract
	notplaceable;
	
var IScreenMgrInterface m_kInterface;
var int m_iCurrentView;

function Init(int iView)
{
}

function UpdateView()
{
}

function GoToView(int iView)
{ 
}

function IScreenMgrInterface GetUIScreen()
{
}

static function string ConvertCashToString(int iAmount) {}

function array<string> GetHeaderStrings(array<int> arrCategories) {}

function array<int> GetHeaderStates(array<int> arrCategories) {}