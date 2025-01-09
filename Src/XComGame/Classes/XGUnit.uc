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
{}