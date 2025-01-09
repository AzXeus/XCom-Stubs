class XComHQPresentationLayer extends XComPresentationLayerBase;

var private array<XGScreenMgr> m_arrScreenMgrs;
var UISoldierSummary m_kSoldierSummary;
var UISoldierPromotion m_kSoldierPromote;
var UIShipSummary m_kShipSummary;
var UIShipList m_kShipList;

function Notify(int eAlert, optional int iData1, optional int iData2, optional int iData3)
{
}

function XGScreenMgr GetMgr(class<Actor> kMgrClass, optional IScreenMgrInterface kInterface, optional int iView, optional bool bIgnoreIfDoesNotExist)
{  
}