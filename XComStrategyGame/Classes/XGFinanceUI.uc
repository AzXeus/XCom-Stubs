class XGFinanceUI extends XGScreenMgr
    config(GameData)
    notplaceable
    hidecategories(Navigation);

enum EFinanceView
{
    eFinanceView_Main,
    eFinanceView_MAX
};

struct TFinanceSection
{
    var TLabeledText ltxtTitle;
    var array<TLabeledText> arrItems;

    structdefaultproperties
    {
        ltxtTitle=(StrValue="",strLabel="",iState=0,bNumber=false)
        arrItems=none
    }
};
var TLabeledText m_ltxtNetIncome;
var TLabeledText m_ltxtTotalIncome;
var array<TFinanceSection> m_arrSections;
var const localized string m_strLabelNet;
var const localized string m_strLabelMonthlyGross;
var const localized string m_strLabelCashFlowTitle;
var const localized string m_strSalary;
var const localized string m_strCraftMaintenance;
var const localized string m_strFacilityMaintenance;

function Init(int iView){}
function UpdateView(){}
function UpdateMain(){}
function TFinanceSection BuildSalaryUI(){}
function TFinanceSection BuildCraftUI(){}
function TFinanceSection BuildFacilityUI(){}

function OnPressButton(){}
function OnLeaveFacility(){}


DefaultProperties
{
}
