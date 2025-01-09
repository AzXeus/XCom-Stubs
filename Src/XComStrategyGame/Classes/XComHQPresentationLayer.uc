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
    local XGScreenMgr kMgr;

    kInterface = none;
    iView = -1;
    bIgnoreIfDoesNotExist = false;
    // End:0xE9
    foreach m_arrScreenMgrs(kMgr)
    {
        // End:0x5A
        if(kMgr.Class != kMgrClass)
        {
            continue;            
        }
        // End:0xA2
        if(NotEqual_InterfaceInterface(kInterface, (none)))
        {
            kMgr.m_kInterface = kInterface;
        }
        // End:0xDD
        if(iView != -1)
        {
            kMgr.GoToView(iView);
        }        
        return kMgr;        
    }    
    // End:0x1AC
    if(!bIgnoreIfDoesNotExist)
    {
        kMgr = XGScreenMgr(Spawn(kMgrClass, self));
        m_arrScreenMgrs.AddItem(kMgr);
        kMgr.m_kInterface = kInterface;
        kMgr.Init(iView);
    }
    return kMgr;
    //return ReturnValue;    
}