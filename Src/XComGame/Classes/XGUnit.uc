class XGUnit extends XGUnitNativeBase;

var bool m_bIsDoingBullRush;
var int m_iWillCheatBonus;
var int m_iCovertOpKills;
var export editinline StaticMeshComponent m_kDiscMesh;
var export editinline StaticMeshComponent m_kFlyingRing;
var export editinline StaticMeshComponent m_kSightRing;
var array<XGUnit> m_arrCloseCombatShots;

function InitBehavior() {}

simulated function int GetRemainingActions() {}

simulated function bool DestinationIsReachable(Vector vLocation) {}

simulated function UpdateInteractClaim() {}

simulated function int GetMoves() {}

simulated function int GetNumSquadVisibleEnemies(XGUnit kUnit) {}

function bool IsVulnerableToElectropulse() {}

simulated function bool IsFlying() {}

simulated function XGInventory GetInventory() {}

simulated function XGCharacter GetCharacter() {}

function RemoveStatModifiers(int aStatModifiers[ECharacterStat]) {}

function AddStatModifiers(int aStatModifiers[ECharacterStat], optional XGAbility_Targeted kAbility) {}

function SetUnitHP(int iNewHP) {}

simulated function XGUnit GetPossessedBy() {}

function int RecordMoraleLoss(optional int iLoss) {}

function bool PerformPanicTest(int iEventWill, optional XGUnit kAttacker, optional bool bUsingPsiPanicAbility, optional int iMoraleEvent) {}

function ApplyInventoryStatModifiers()
{
    local XGGameData.EItemType eWeapon_GameplayType;
    local XGInventory kInventory;
    local XGWeapon kWeapon;
    local array<int> arrBackPackItems;

    eWeapon_GameplayType = 0;
    kInventory = GetInventory();
    // End:0x90
    if(kInventory != none)
    {
        kWeapon = kInventory.GetActiveWeapon();
        // End:0x90
        if(kWeapon != none)
        {
            eWeapon_GameplayType = kWeapon.ItemType();
        }
    }
    XComGameReplicationInfo(class'Engine'.static.GetCurrentWorldInfo().GRI).m_kGameCore.GetBackpackItemArray(GetCharacter().m_kChar.kInventory, arrBackPackItems);
    m_aCurrentStats[9] = m_aCurrentStats[0];
    RemoveStatModifiers(m_aInventoryStats);

  	class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator.Mutate("ASCStats" $ "_" $ string(self), class'Engine'.static.GetCurrentWorldInfo().GetALocalPlayerController());
	
    XComGameReplicationInfo(class'Engine'.static.GetCurrentWorldInfo().GRI).m_kGameCore.GetInventoryStatModifiers(m_aInventoryStats, m_kCharacter.m_kChar, eWeapon_GameplayType, arrBackPackItems);
    // End:0x23B
    if((m_iWillCheatBonus > 0) && IsAI())
    {
        m_aInventoryStats[0] += (1 + (m_iWillCheatBonus / 25));
    }
    // End:0x269
    if(m_iWillCheatBonus > 0)
    {
        m_aInventoryStats[7] += (0 + (m_iWillCheatBonus / 10));
    }
    AddStatModifiers(m_aInventoryStats);
    // End:0x302
    if(m_iWillCheatBonus < 0)
    {
        // End:0x2CB
        if(IsAI())
        {
            m_aCurrentStats[0] = m_aCurrentStats[9];
            SetUnitHP(m_aCurrentStats[0]);
        }
        // End:0x302
        else
        {
            // End:0x2EC
            if(m_aCurrentStats[0] <= 0)
            {
                SetUnitHP(1);
            }
            // End:0x302
            else
            {
                SetUnitHP(m_aCurrentStats[0]);
            }
        }
    }
    m_aCurrentStats[9] = 0;
    SetUnitHP(Min(GetUnitHP(), GetUnitMaxHP()));
    m_aInventoryStats[3] += m_iCovertOpKills;
    //return;    
}