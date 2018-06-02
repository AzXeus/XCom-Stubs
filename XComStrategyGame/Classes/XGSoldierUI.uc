class XGSoldierUI extends XGScreenMgr
    config(GameData)
    notplaceable
    hidecategories(Navigation);

enum EBaseView
{
    eSoldierView_MainMenu,
    eSoldierView_Promotion,
    eSoldierView_PsiPromotion,
    eSoldierView_MECPromotion,
    eSoldierView_GeneMods,
    eSoldierView_Gear,
    eSoldierView_Customize,
    eSoldierView_Medals,
    eSoldierView_Dismiss,
    eSoldierView_MAX
};
struct TSoldierHeader
{
    var TText txtName;
    var TText txtNickname;
    var TLabeledText txtStatus;
    var TLabeledText txtOffense;
    var TLabeledText txtDefense;
    var TLabeledText txtHP;
    var TLabeledText txtSpeed;
    var TLabeledText txtWill;
    var TLabeledText txtStrength;
    var TLabeledText txtCritShot;
    var TText txtOffenseMod;
    var TText txtDefenseMod;
    var TText txtHPMod;
    var TText txtSpeedMod;
    var TText txtWillMod;
    var TText txtStrengthMod;
    var TText txtCritShotMod;
};

struct TSoldierDoll
{
    var int iFlag;
    var TImage imgFlag;
    var TImage imgSoldier;

    structdefaultproperties
    {
        iFlag=0
        imgFlag=(iImage=0,strLabel="",iState=0,strPath="")
        imgSoldier=(iImage=0,strLabel="",iState=0,strPath="")
    }
};

struct TSoldierMainMenu
{
    var array<int> arrOptions;
    var TMenu mnuOptions;

    structdefaultproperties
    {
        arrOptions=none
        mnuOptions=(strLabel="",arrOptions=none,bTakesNoInput=false)
    }
};

struct TSoldierAbilities
{
    var TTableMenu tblAbilities;

    structdefaultproperties
    {
        tblAbilities=(arrCategories=none,kHeader=(arrStrings=none,arrStates=none),arrOptions=none,bTakesNoInput=false)
    }
};

struct TSoldierPerks
{
    var TText txtNickname;
    var TTableMenu tblNewPerks;

    structdefaultproperties
    {
        txtNickname=(StrValue="",iState=0)
        tblNewPerks=(arrCategories=none,kHeader=(arrStrings=none,arrStates=none),arrOptions=none,bTakesNoInput=false)
    }
};

struct TInventoryOption
{
    var int iOptionType;
    var bool bHighlight;
    var bool bShowItemCard;
    var bool bInfinite;
    var TImage imgItem;
    var TText txtName;
    var TText txtLabel;
    var TText txtQuantity;
    var string strHelp;
    var int iState;
    var int iSlot;
    var int iItem;

    structdefaultproperties
    {
        iOptionType=0
        bHighlight=false
        bShowItemCard=false
        bInfinite=false
        imgItem=(iImage=0,strLabel="",iState=0,strPath="")
        txtName=(StrValue="",iState=0)
        txtLabel=(StrValue="",iState=0)
        txtQuantity=(StrValue="",iState=0)
        strHelp=""
        iState=0
        iSlot=0
        iItem=0
    }
};

struct TSoldierGear
{
    var TText txtTitle;
    var int iHighlight;
    var bool bDataDirty;
    var array<TInventoryOption> arrOptions;

    structdefaultproperties
    {
        txtTitle=(StrValue="",iState=0)
        iHighlight=0
        bDataDirty=false
        arrOptions=none
    }
};

struct TSoldierLocker
{
    var TText txtTitle;
    var TText txtMsg;
    var int iHighlight;
    var bool bIsSelected;
    var array<TInventoryOption> arrOptions;

    structdefaultproperties
    {
        txtTitle=(StrValue="",iState=0)
        txtMsg=(StrValue="",iState=0)
        iHighlight=0
        bIsSelected=false
        arrOptions=none
    }
};

struct TAbilityTree
{
    var TText txtName;
    var TText txtLabel;
    var int branch;
    var int Option;
    var array<int> arrOptions;
    var string testVar;

    structdefaultproperties
    {
        txtName=(StrValue="",iState=0)
        txtLabel=(StrValue="",iState=0)
        branch=1
        Option=1
        arrOptions=none
        testVar=""
    }
};

var const localized string m_strDismissSoldierDialogTitle;
var const localized string m_strDismissSoldierDialogText;
var const localized string m_strDismissTankDialogTitle;
var const localized string m_strDismissTankDialogText;
var const localized string m_strLockedAbilityLabel;
var const localized string m_strLockedAbilityDescription;
var const localized string m_strLockedGeneModDescription;
var const localized string m_strLockedPsiAbilityDescription;
var TSoldierHeader m_kHeader;
var TSoldierMainMenu m_kMainMenu;
var TSoldierDoll m_kDoll;
var TSoldierAbilities m_kAbilities;
var TSoldierPerks m_kPerks;
var TSoldierGear m_kGear;
var TSoldierLocker m_kLocker;
var XGStrategySoldier m_kSoldier;
//var TButtonBar m_kButtonBar;
var TAbilityTree m_kSoldierAbilityTree;
var TAbilityTree m_kSoldierPsiTree;
var bool m_bUrgeGollop;
var bool m_bPreventSoldierCycling;
var bool m_bReturnToDebriefUI;
var bool m_bCovertOperativeMode;
var const localized string m_strLabelPressRTForPromote;
var const localized string m_strLabelStatus;
var const localized string m_strLabelOffense;
var const localized string m_strLabelDefense;
var const localized string m_strLabelHPSPACED;
var const localized string m_strLabelMobility;
var const localized string m_strLabelWill;
var const localized string m_strLabelStrength;
var const localized string m_strLabelCritical;
var const localized string m_strLoadout;
var const localized string m_strNoEditSHIV;
var const localized string m_strNoEditAwaySoldiers;
var const localized string m_strChooseEquipGoop;
var const localized string m_strLabelAbilities;
var const localized string m_strLabelAbilityHelp;
var const localized string m_strLabelPsiAbilities;
var const localized string m_strLabelPsiAbilityHelp;
var const localized string m_strLabelCustomize;
var const localized string m_strLabelCustomizeHelp;
var const localized string m_strLabelDismiss;
var const localized string m_strLabelDismissHelp;
var const localized string m_strLabelTankDismiss;
var const localized string m_strLabelTankDismissHelp;
var const localized string m_strLabelGeneView;
var const localized string m_strLabelGeneViewHelp;
var const localized string m_strLabelLocker;
var const localized string m_strLabelNoneAvailable;
var const localized string m_strLabelRequiresResearch;
var const localized string m_strLabelClassTypeOnly;
var const localized string m_strLabelItemUnavailableToClass;
var const localized string m_strLabelUnavailableToVolunteer;
var const localized string m_strLabelUniqueEquip;
var const localized string m_strLabelPrevSoldier;
var const localized string m_strLabelNextSoldier;
var const localized string m_strLabelReaperRoundsRestriction;
var const localized string m_strLabelGeneModHotLink;
var const localized string m_strLabelGeneModConfirm;
var const localized string m_strLabelMedals;
var const localized string m_strLabelMedalsHelp;
var const localized string m_strArmor;
var const localized string m_strPistol;
var const localized string m_strLargeItem;
var const localized string m_strSmallItem;
var const localized string m_strEmpty;
var const localized string m_strNoEditWoundedSoldiers;
var const localized string m_strNoDismissWoundedSoldiers;
var const localized string m_strNoDismissWhilePsiTesting;
var const localized string m_strNoDismissWhileAugmenting;
var const localized string m_strNoDismissWhileGeneModding;
var const localized string m_strNoDismissCovertOperative;
var const localized string m_strNoDismissVolunteer;
var float m_fSoldierSwitchCount;

function Init(int iView){}
event Destroyed(){}
simulated function OnReceiveFocus(){}
simulated function OnLoseFocus(){}
simulated function SetAbilityTreeBranch(int setBranch){}
simulated function SetAbilityTreeOption(int setOption){}
simulated function RotateSoldier(int Dir){}
function OnMainMenuOption(int iOption){}
function OnDismissSoldier(){}
function DismissSoldierActionCallback(UIDialogueBox.EUIAction eAction){}
function OnLeaveSoldierUI(){}
function OnLeavePromotion(){}
function OnLeaveSoldierDebrief(){}
function bool OnAcceptPromotion(){}
function bool CanPromote(){}
function OnLevelUp(){}
function OnPromotionRight(){}
function OnPromotionLeft(){}
function OnPromotionUp(){}
function OnPromotionDown(){}
function OnPsiLevelUp(){}
function bool ShouldAutoAssignPerk(out int iBranchToAssign){}
function int GetHighlightedPerk(){}
function int GetPerkUnlockedAbility(int iPerk){}
simulated function Tick(float DeltaTime){}
function bool OnNextSoldier(optional bool includeSHIV, optional bool SkipSpecial, optional bool includeMEC){}
function bool OnPrevSoldier(optional bool includeSHIV, optional bool SkipSpecial, optional bool includeMEC){}
function int CycleSoldierIndex(int Direction, bool checkForPsi, optional bool includeTank, optional bool SkipSpecial, optional bool includeMEC){}
function OnLeaveGear(optional bool bForceQuit){}
function bool OnUnequipGear(optional int iGear){}
function OnGearAccept(){}
function OnGearDown(){}
function OnGearUp(){}
function OnClickGear(int iTarget){}
final function string GetMedalName(XGGameData.EItemType ePerk){}
function bool IsSlotValid(XGFacility_Lockers.EInventorySlot eSlot){}
function UpdateGear(){}
function UpdateLocker(){}
function TItemCard SOLDIERUIGetItemCard(){}
function XGItemTree ITEMTREE(){}
function int GetItemCharges(XGGameData.EItemType eItem, optional bool bForce1_for_NonGrenades, optional bool bForItemCardDisplay){}
function TItemCard GetItemCardFromOption(TInventoryOption kItemOp){}
function TInventoryOption BuildInventoryOption(int iItem, int iOptionType, bool bHighlight){}
function TInventoryOption BuildLockerOption(TLockerItem kItem, int iOptionType){}
function string GetItemTypeName(XGGameData.EItemType iItem){}
function bool OnEquip(int iInventory, int iLocker){}
function int GetCritDmgFromBaseDmg(int Dmg){}
simulated function OnLaunchCovertMission(){}
private final simulated function int GetCurrentCountry(){}
simulated function int GetAbilityTreeBranch() {}
simulated function int GetAbilityTreeOption() {}
function UpdateView() {}
function UpdateButtonHelp() {}
simulated function bool IsInCovertOperativeMode() {}
function UpdateHeader()
{
    local int aModifiers[ECharacterStat];
    local array<int> arrBackPackItems;
    local int bHasMindShield[2];

	WorldInfo.Game.Mutate("ASCStatSetUnit_" $ string(m_kSoldier), GetALocalPlayerController());
    WorldInfo.Game.Mutate("ASCStats", GetALocalPlayerController());
    LogInternal(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, name("MagicVar"));

    m_kHeader.txtName.StrValue = m_kSoldier.GetName(0) @ m_kSoldier.GetName(1);
    m_kHeader.txtName.iState = 0;
    m_kHeader.txtNickname.StrValue = m_kSoldier.GetName(2);
    m_kHeader.txtNickname.iState = 9;
    m_kHeader.txtStatus.strLabel = m_strLabelStatus;
    m_kHeader.txtStatus.StrValue = m_kSoldier.GetStatusString();
    m_kHeader.txtStatus.iState = m_kSoldier.GetStatusUIState();
    m_kHeader.txtOffense.strLabel = m_strLabelOffense;
    m_kHeader.txtOffense.StrValue = string(m_kSoldier.GetCurrentStat(1));
    m_kHeader.txtOffense.iState = 0;
    m_kHeader.txtOffense.bNumber = true;
    m_kHeader.txtDefense.strLabel = m_strLabelDefense;
    m_kHeader.txtDefense.StrValue = string(m_kSoldier.GetCurrentStat(2));
    m_kHeader.txtDefense.iState = 0;
    m_kHeader.txtDefense.bNumber = true;
    m_kHeader.txtHP.strLabel = m_strLabelHPSPACED;
    m_kHeader.txtHP.StrValue = string(m_kSoldier.GetCurrentStat(0));
    // End:0x51D
    if(m_kSoldier.IsInjured())
    {
        m_kHeader.txtHP.StrValue $= ("/" $ string(m_kSoldier.GetMaxStat(0)));
        m_kHeader.txtHP.iState = 3;
    }
    m_kHeader.txtHP.bNumber = true;
    m_kHeader.txtSpeed.strLabel = m_strLabelMobility;
    m_kHeader.txtSpeed.StrValue = string(m_kSoldier.GetMaxStat(3));
    m_kHeader.txtSpeed.iState = 0;
    m_kHeader.txtSpeed.bNumber = true;
    m_kHeader.txtWill.strLabel = m_strLabelWill;
    m_kHeader.txtWill.StrValue = string(m_kSoldier.GetMaxStat(7));
    // End:0x927
    if(IsInCovertOperativeMode())
    {
        bHasMindShield[0] = m_kSoldier.m_kChar.kInventory.iArmor;
        bHasMindShield[1] = m_kSoldier.m_kChar.kInventory.arrLargeItems[0];
        m_kSoldier.m_kChar.kInventory.iArmor = 66;
        LOCKERS().EquipLargeItem(m_kSoldier, 212, 0);
        TACTICAL().GetBackpackItemArray(m_kSoldier.m_kChar.kInventory, arrBackPackItems);
        TACTICAL().GetInventoryStatModifiers(aModifiers, m_kSoldier.m_kChar, 212, arrBackPackItems);
        m_kSoldier.m_kChar.kInventory.iArmor = bHasMindShield[0];
        LOCKERS().EquipLargeItem(m_kSoldier, bHasMindShield[1], 0);
    }
    // End:0xA22
    else
    {
        TACTICAL().GetBackpackItemArray(m_kSoldier.m_kChar.kInventory, arrBackPackItems);
        TACTICAL().GetInventoryStatModifiers(aModifiers, m_kSoldier.m_kChar, TACTICAL().GetEquipWeapon(m_kSoldier.m_kChar.kInventory), arrBackPackItems);
    }

	aModifiers[0] += int(Left(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, InStr(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_")));
    aModifiers[1] += int(Left(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), inStr(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_")));
    aModifiers[2] += int(Left(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), inStr(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_")));
    aModifiers[3] += int(GetRightMost(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2));
    aModifiers[7] += int(Left(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), inStr(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_")));
    aModifiers[17] += int(Left(Split(Split(Split(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_", true), "_", true), "_", true), inStr(Split(Split(Split(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_", true), "_", true), "_", true), "_")));	
    aModifiers[4] += int(Left(Split(Split(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_", true), "_", true), inStr(Split(Split(Split(Split(Split(XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam")).StrValue2, "_", true), "_", true), "_", true), "_", true), "_", true), "_")));

    m_kHeader.txtHPMod.StrValue = string(aModifiers[0]);
    m_kHeader.txtOffenseMod.StrValue = string(aModifiers[1]);
    m_kHeader.txtDefenseMod.StrValue = string(aModifiers[2]);
    m_kHeader.txtSpeedMod.StrValue = string(aModifiers[3]);
    m_kHeader.txtWillMod.StrValue = string(aModifiers[7]);
    m_kHeader.txtCritShot.StrValue = string(aModifiers[17]);
    m_kHeader.txtStrength.StrValue = (string((aModifiers[4] % 100) / 10) $ ".") $ string((aModifiers[4] % 100) % 10);
    //return;    
}
function UpdateMainMenu() {}
function UpdateAbilities() {}
function string GetHighlightedPromoPerkName() {}
function SetActiveSoldier(XGStrategySoldier NewSoldier) {}
function UpdateDoll() {}
simulated function CheckSoldierIsLoaded() {}
function string GetHighlightedPerkDescription()
{
    local XGParamTag kTag;
    local int iPerk, iRank;

	/** 

    iPerk = m_kSoldier.GetPerkInClassTree(GetAbilityTreeBranch(), GetAbilityTreeOption(), m_iCurrentView == 2);
    // End:0x187
    if(((m_iCurrentView == 2) && m_kSoldier.PerkLockedOut(iPerk, GetAbilityTreeBranch(), m_iCurrentView == 2)) && !m_kSoldier.HasPerk(iPerk))
    {
        // End:0x127
        if(iPerk == 73)
        {
            // End:0x127
            if((m_kSoldier.m_kChar.aUpgrades[71] & 254) == 0)
            {
                return m_strLockedPsiAbilityDescription;
            }
        }
        // End:0x187
        if(!LABS().IsResearched(perkMgr().GetPerkInTreePsi(iPerk | (1 << 8), 0)))
        {
            return m_strLockedPsiAbilityDescription;
        }
    }
    // End:0xFFF
    if((m_iCurrentView != 2) && (GetAbilityTreeBranch()) > 0)
    {
        // End:0xDA3
        if(IsOptionEnabled(4))
        {
            // End:0xDA3
            if(class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator != none)
            {
                class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator.Mutate("PerkStatsRPlus" $ string((((GetAbilityTreeBranch()) - 1) * 3) + ((GetAbilityTreeOption()) + 1)), class'Engine'.static.GetCurrentWorldInfo().GetALocalPlayerController());
                // End:0x322
                if(m_kSoldier.m_iEnergy > 30)
                {
                    // End:0x322
                    if((m_kSoldier.m_arrRandomPerks[1] / 100) == 1)
                    {
						goto LWstats;
                    }
				}
				kTag = XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam"));
				kTag.IntValue0 = 0;
				kTag.StrValue0 = string(0);
				kTag.StrValue1 = string(0);
				// End:0x46E
				switch((m_kSoldier.m_arrRandomPerks[1] % 100) / 10) {
					case 8:
						kTag.StrValue0 = string(-1);
						kTag.IntValue0 = -1;
						break;
					case 7:
						kTag.StrValue0 = string(-1);
						break;
					case 6:
						kTag.IntValue0 = -1;
						break;
					case 5:
						kTag.StrValue0 = string(1);
						kTag.IntValue0 = -1;
						break;
					case 4:
						kTag.StrValue0 = string(-1);
						kTag.IntValue0 = 1;
						break;
					case 3:
						kTag.StrValue0 = string(1);
						kTag.IntValue0 = 1;
						break;
					case 2:
						kTag.StrValue0 = string(1);
						break;
					case 1:
						kTag.IntValue0 = 1;
						break;
					default:
						break;
				}

				// End:0x7EF
				if(((m_kSoldier.m_arrRandomPerks[1] % 10) > 0) && (m_kSoldier.m_arrRandomPerks[1] % 10) < 5)
				{
					kTag.StrValue1 = string((m_kSoldier.m_arrRandomPerks[1] % 10) - 5);
				}
				// End:0x8A3
				if((m_kSoldier.m_arrRandomPerks[1] % 10) > 4)
				{
					kTag.StrValue1 = string((m_kSoldier.m_arrRandomPerks[1] % 10) - 4);
				}
				kTag.IntValue1 = (m_kSoldier.m_arrRandomPerks[2] % 100) / 10;
				kTag.IntValue2 = m_kSoldier.m_arrRandomPerks[2] % 10;
				// End:0x98E
				if((m_kSoldier.m_arrRandomPerks[2] / 100) == 1) {
					if(kTag.IntValue1 != 0) {
						if(kTag.IntValue2 != 0) {
							if(kTag.IntValue0 != 0) {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										$ Mid(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1, (Len(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription)) - (InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)) - 1)
										$ ", "
										$ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										$ " "
										$ kTag.StrValue0
										$ ", "
										$ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										$ " "
										$ kTag.StrValue1
										$ " )"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										$ Mid(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1, (Len(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription)) - (InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)) - 1)
										$ ", "
										$ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										$ " "
										$ kTag.StrValue0
										$ " )"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										$ Mid(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1, (Len(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription)) - (InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)) - 1)
										$ ", "
										$ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										$ " "
										$ kTag.StrValue1
										$ " "
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1) 
										$ "("
										$ Mid(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1, (Len(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription)) - (InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)) - 1)
										$ " )"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
							}
							else {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
							}
						}
						else {
							if(kTag.IntValue0 != 0) {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
							}
							else {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense)
										@ kTag.IntValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
							}
						}
					}
					else {
						if(kTag.IntValue2 != 0) {
							if(kTag.IntValue0 != 0) {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										$ ","
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										$ ","
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										$ ","
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										$ ","
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
							}
							else {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return (((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill)
										@ kTag.IntValue2
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
							}
						}
						else {
							if(kTag.IntValue0 != 0) {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1)
										$ ":"
										@ kTag.IntValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
							}
							else {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										$ ","
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth)
										@ kTag.StrValue0
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense)
										@ kTag.StrValue1
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
									else {
										return 
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "("
										@ ")"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Left(kTag.StrValue2, InStr(kTag.StrValue2,"_"))
										$ ":("
										@ perkMgr().GetPerkName(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>"
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ perkMgr().GetBriefSummary(iPerk)
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)
										$ "<font color='#5CD16C'>"
										$ Split(kTag.StrValue2, "_", true)
										$ ":("
										@ perkMgr().GetBriefSummary(m_kSoldier.m_arrRandomPerks[21])
										@ ")"
										$ "</font>";
									}
								}
							}
						}
					}
				}
				// End:0xDA0
				else
				{
					// End:0xC20
					if(kTag.IntValue1 != 0) {
						if(kTag.IntValue2 != 0) {
							if(kTag.IntValue0 != 0) {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return ((((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										$ Mid(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1, (Len(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription)) - (InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)) - 1))
										$ ", ")
										$ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										$ " ")
										$ kTag.StrValue0)
										$ ", ")
										$ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										$ " ")
										$ kTag.StrValue1)
										$ " )")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return ((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										$ Mid(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1, (Len(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription)) - (InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)) - 1))
										$ ", ")
										$ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										$ " ")
										$ kTag.StrValue0)
										$ " )")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return ((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										$ Mid(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1, (Len(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription)) - (InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)) - 1))
										$ ", ")
										$ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										$ " ")
										$ kTag.StrValue1)
										$ " )")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return ((((Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1) $ "(") $ Mid(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1, (Len(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription)) - (InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)) - 1)) $ " )") $ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1)) $ perkMgr().GetBriefSummary(iPerk);
									}
								}
							}
							else {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return ((((((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return (((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return (((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return ((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
							}
						}
						else {
							if(kTag.IntValue0 != 0) {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return (((((((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return ((((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return ((((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return (((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
							}
							else {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return (((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return ((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return ((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return (((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatOffense))
										@ kTag.IntValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
							}
						}
					}
					else {
						if(kTag.IntValue2 != 0) {
							if(kTag.IntValue0 != 0) {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return (((((((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return ((((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return ((((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return (((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
							}
							else {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return (((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return ((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return ((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return (((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatWill))
										@ kTag.IntValue2)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
							}
						}
						else {
							if(kTag.IntValue0 != 0) {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return ((((((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return (((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return (((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return ((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ Left(class'XComLocalizer'.static.ExpandString(m_strLabelMobility), Len(class'XComLocalizer'.static.ExpandString(m_strLabelMobility)) - 1))
										$ ":")
										@ kTag.IntValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
							}
							else {
								if(int(kTag.StrValue0) != 0) {
									if(int(kTag.StrValue1) != 0) {
										return ((((((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										$ ",")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return (((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatHealth))
										@ kTag.StrValue0)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
								else {
									if(int(kTag.StrValue1) != 0) {
										return (((((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ class'XComLocalizer'.static.ExpandString(m_strStatDefense))
										@ kTag.StrValue1)
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
									else {
										return (((
										Left(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), InStr(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), ":") + 1)
										$ "(")
										@ ")")
										$ Right(class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription), 1))
										$ perkMgr().GetBriefSummary(iPerk);
									}
								}
							}
						}
					}
				}
            }
			else {
				goto LWstats;
			}
		}
		else
		{
			if(GetAbilityTreeBranch() == 1) {
				goto end;
			}
			
			LWstats:
            iRank = perkMgr().GetPerkInTree(byte(m_kSoldier.m_iEnergy + 4), (GetAbilityTreeBranch()) - 0, GetAbilityTreeOption(), false);
            kTag = XGParamTag(XComEngine(class'Engine'.static.GetEngine()).LocalizeContext.FindTag("XGParam"));
            kTag.IntValue0 = 0;
            // End:0xED2
            if((iRank / 100) == 2)
            {
                kTag.IntValue0 = -1;
            }
            // End:0xF07
            if((iRank / 100) == 1)
            {
                kTag.IntValue0 = 1;
            }
            kTag.IntValue1 = (iRank / 10) % 10;
            kTag.IntValue2 = iRank % 10;
            return class'XComLocalizer'.static.ExpandString(m_strLockedAbilityDescription) $ perkMgr().GetBriefSummary(iPerk);
		}
		end:
	}
    else {
		return perkMgr().GetBriefSummary(iPerk);
	}
    //return ReturnValue;    
    */
}

