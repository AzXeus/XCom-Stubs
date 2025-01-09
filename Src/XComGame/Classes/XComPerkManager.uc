class XComPerkManager extends Actor
	native
	notplaceable;

enum EPerkBuffCategory
{
    ePerkBuff_Passive,
    ePerkBuff_Bonus,
    ePerkBuff_Penalty,
    ePerkBuff_MAX
};	
	
struct native TSoldierPerkTree
{
    var int SoldierType;
    var int Squaddie;
    var int Corporal1;
    var int Corporal2;
    var int Sergeant1;
    var int Sergeant2;
    var int Lieutenant1;
    var int Lieutenant2;
    var int Captain1;
    var int Captain2;
    var int Major;
    var int Colonel1;
    var int Colonel2;
};

struct native TPerk
{
    var string strName[EPerkBuffCategory];
    var string strDescription[EPerkBuffCategory];
    var int iPerk;
    var int iCategory;
    var string strImage;
    var bool bShowPerk;
};
	
var array<TSoldierPerkTree> SoldierPerkTrees;
var array<TPerk> m_arrPerks;

simulated function BuildPerk(int iPerk, int iCategory, string strImage, optional bool bShowPerk) {}
	
simulated function XComPerkManager PERKS()
{
    return XComGameReplicationInfo(class'Engine'.static.GetCurrentWorldInfo().GRI).m_kPerkTree; 
}

function int GetPerkInTreePsi(int branch, int Option)
{
	return ReturnValue;
}

simulated function string GetBriefSummary(int iPerk)
{
	return ReturnValue;
}

function int GetPerkInTree(int soldierClass, int branch, int Option, optional bool bIsPsiTree)
{
	return ReturnValue;
}

simulated function int GetRandomPerk() {}

simulated function string GetPerkName(int iPerk, optional int perkCategory)
{
	return ReturnValue;
}

simulated function TPerk GetPerk(int iPerk)
{
	return ReturnValue;
}

simulated function bool IsFixedPerk(int Perk)
{
	return ReturnValue;
}