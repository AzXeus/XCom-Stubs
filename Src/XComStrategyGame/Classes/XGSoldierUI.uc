class XGSoldierUI extends XGScreenMgr
    config(GameData)
    notplaceable
    hidecategories(Navigation);

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

struct TSoldierAbilities
{
    var TTableMenu tblAbilities;
};

var XGStrategySoldier m_kSoldier;
var TSoldierHeader m_kHeader;
var TSoldierAbilities m_kAbilities;
var const localized string m_strLabelStatus;
var const localized string m_strLabelOffense;
var const localized string m_strLabelDefense;
var const localized string m_strLabelHPSPACED;
var const localized string m_strLabelWill;
var const localized string m_strLockedPsiAbilityDescription;
var const localized string m_strLockedAbilityDescription;
var const localized string m_strLabelMobility;

var const localized string m_strStatHealth;
var const localized string m_strStatWill;
var const localized string m_strStatDefense;
var const localized string m_strStatOffense;

simulated function int GetAbilityTreeBranch() {}

simulated function int GetAbilityTreeOption() {}

function UpdateView() {}

function UpdateButtonHelp() {}

simulated function bool IsInCovertOperativeMode() {}

function UpdateHeader()
{}

function UpdateMainMenu() {}

function UpdateAbilities() {}

function string GetHighlightedPromoPerkName() {}

function SetActiveSoldier(XGStrategySoldier NewSoldier) {}

function UpdateDoll() {}

simulated function CheckSoldierIsLoaded() {}



	
	
function string GetHighlightedPerkDescription()
{}

