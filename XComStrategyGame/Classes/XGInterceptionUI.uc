class XGInterceptionUI extends XGScreenMgr
    config(GameData)
    notplaceable
    hidecategories(Navigation);

enum EIView
{
    eIntView_JetSelection,
    eIntView_MAX
};

struct TIntHeader
{
    var TText txtTitle;

    structdefaultproperties
    {
        txtTitle=(StrValue="",iState=0)
    }
};

struct TIntTarget
{
    var TText txtTitle;
    var TText txtDescription;
    var TLabeledText txtSize;
    var TImage imgTarget;
    var TLabeledText txtSpeed;

    structdefaultproperties
    {
        txtTitle=(StrValue="",iState=0)
        txtDescription=(StrValue="",iState=0)
        txtSize=(StrValue="",strLabel="",iState=0,bNumber=false)
        imgTarget=(iImage=0,strLabel="",iState=0,strPath="")
        txtSpeed=(StrValue="",strLabel="",iState=0,bNumber=false)
    }
};

struct TIntJet
{
    var EShipType EShipType;
    var TText txtJetName;
    var TText txtPilotCallsign;
    var TLabeledText txtMissions;
    var TLabeledText txtOffense;
    var TLabeledText txtDefense;
    var TLabeledText txtSpeed;
    var TText txtDistance;
    var TText txtStatus;
    var int iState;
    var bool bHighlighted;
    var int iIndex;

    structdefaultproperties
    {
        EShipType=EShipType.eShip_None
        txtJetName=(StrValue="",iState=0)
        txtPilotCallsign=(StrValue="",iState=0)
        txtMissions=(StrValue="",strLabel="",iState=0,bNumber=false)
        txtOffense=(StrValue="",strLabel="",iState=0,bNumber=false)
        txtDefense=(StrValue="",strLabel="",iState=0,bNumber=false)
        txtSpeed=(StrValue="",strLabel="",iState=0,bNumber=false)
        txtDistance=(StrValue="",iState=0)
        txtStatus=(StrValue="",iState=0)
        iState=0
        bHighlighted=false
        iIndex=0
    }
};

struct TIntLaunchButton
{
    var int iState;
    var TButtonText txtTitle;

    structdefaultproperties
    {
        iState=0
        txtTitle=(StrValue="",iState=0,iButton=0)
    }
};

struct TIntSquadron
{
    var array<TIntJet> arrJets;
    var TText txtTitle;

    structdefaultproperties
    {
        arrJets=none
        txtTitle=(StrValue="",iState=0)
    }
};

struct TIntDistance
{
    var XGShip_Interceptor kInterceptor;
    var int iMiles;
    var bool bOutOfRange;

    structdefaultproperties
    {
        kInterceptor=none
        iMiles=0
        bOutOfRange=false
    }
};

var XGShip_UFO m_kUFO;
var TIntSquadron m_kSquadron;
var TIntLaunchButton m_kLaunch;
var TIntHeader m_kHeader;
var array<TIntDistance> m_akIntDistance;
var XGInterception m_kInterception;
var TIntTarget m_kTarget;
var int m_iCurrentJet;
var TImage m_imgBG;
var const localized string m_strLabelSize;
var const localized string m_strLabelSpeed;
var const localized string m_strLabelShipOverRegion;
var const localized string m_strLabelChooseInterceptors;
var const localized string m_strLabelLoadout;
var const localized string m_strLabelMaxSpeed;
var const localized string m_strLabelOutOfRange;
var const localized string m_strLabelThinkMilesAway;
var const localized string m_strLabelLaunchFighters;
var const localized string m_strLabelLaunchFightersPC;
var const localized string m_strLabelSelDeselFighter;
var const localized string m_strLabelCancelInterception;

function Init(int iView) {}

function UpdateView() {}

function BuildInterceptorList() {}

DefaultProperties
{
}
