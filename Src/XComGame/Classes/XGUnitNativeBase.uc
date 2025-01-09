class XGUnitNativeBase extends Actor
	dependsOn(XGGameData)
	native(Unit);

var XGCharacter m_kCharacter;
var XGAIBehavior m_kBehavior;
var XGAction m_kCurrAction;
var array<XComInteractPoint> m_arrInteractPoints;
var byte m_iNumTimesUsedInTheZone;
var int m_aCurrentStats[ECharacterStat];
var int m_aInventoryStats[ECharacterStat];
var int m_iMovesActionsPerformed;
var int m_iFireActionsPerformed;
var bool m_bOneForAllActive;
var bool m_bRunAndGunActivated;
var bool m_bCloseAndPersonalTaken;
var bool m_bFreeFireActionTaken;
var bool m_bBuildAbilityDataDirty;
var repnotify XGAbility m_aAbilities[64];


native simulated event bool IsAliveAndWell(optional bool bIgnoreStrangle);

native simulated function XGAbility FindAbility(int iType, XGUnit kTarget);

native final simulated function bool IsInCover();

native final simulated function XComCoverPoint GetCoverPoint();

native static simulated function bool DoesFlankCover(Vector PointA, XComCoverPoint kCover);

native simulated event Vector GetLocation();

simulated function bool IsInMeleeRange(XGUnit kEnemy, optional Vector vUnitLoc, optional bool bAllowDiagonals) {}

simulated function XGGameData.EPawnType GetPawnType() {}

simulated function XComUnitPawn GetPawn() {}

simulated event bool IsAlien() {}

simulated function bool IsExalt() {}

simulated function bool IsATank() {}

simulated function bool IsAugmented() {}

native simulated function bool IsPanicking();

native simulated function bool IsPanicked();

native simulated function bool RunAndGunPerkActive();

native final simulated function bool IsFlankedByLoc(Vector Loc);

native simulated function bool IsFlankedBy(XGUnitNativeBase kEnemy);

native simulated function bool IsAffectedByAbility(int iAbility);

native simulated function bool IsAI();

native simulated function int GetUnitHP();

native simulated function int GetUnitMaxHP();

native simulated function bool IsHiding(optional XGUnitNativeBase kUnit);

native simulated function bool IsVisible();

native simulated function int WillTestChance(int iWillTest, int iMyMods, bool bUseArmorBonus, bool bUseMindShieldBonus, optional XGUnit kVersus, optional int iEvenStatsChanceToFail = 50, optional out int iFinalWill) {}

simulated function XGPlayer GetPlayer() {}

simulated function bool IsMoving() {}