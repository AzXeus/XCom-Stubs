class XGHeadQuarters extends XGStrategyActor
    notplaceable;
	
var XGFacility_Barracks m_kBarracks;
var XGFacility_Labs m_kLabs;
var XGFacility_Engineering m_kEngineering;
var array<TStaffOrder> m_arrHiringOrders;
var XGBase m_kBase;


function XGFacility_Barracks GetBarracks() 
{
	return m_kBarracks;
}

function XGFacility CurrentFacility()
{
    return ReturnValue;    
}

function string RecordHiredAdditionalSoldiers(int iQuantity)
{
}

function bool HasFacility(int iFacility)
{
}

function OrderStaff(int iType, int iQuantity)
{}

function UpdateHiringOrders()
{}