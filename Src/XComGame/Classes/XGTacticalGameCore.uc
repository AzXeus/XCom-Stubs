class XGTacticalGameCore extends XGTacticalGameCoreNativeBase
    hidecategories(Navigation)
    config(GameCore)
    notplaceable;

var init const localized string m_aExpandedLocalizedStrings[21];
var int m_iDifficulty;

simulated function int GetXPRequired(int iRank) {}
	
simulated function int GetExtraArmorStatBonus(int iStat, int iArmor) {}

simulated function GetBackpackItemArray(TInventory kInventory, out array<int> arrBackPackItems) {}

simulated function TWeapon GetTWeapon(int iWeapon) {}

static final function XGTacticalGameCoreData.EWeaponClass GetWeaponClass(XGGameData.EItemType eItem) {}

simulated function bool WeaponHasProperty(int iWeapon, int iWeaponProperty) {}

simulated function int GetBackpackStatBonus(int iStat, array<int> arrBackPackItems, out TCharacter kCharacter) {}

simulated function int CalcHitChance_NonUnitTarget(int iWeapon, int kShooter, int aShooterStats, int fDistanceToTarget, bool bIsPoisoned) {}

simulated function XGGameData.EItemType GetEquipWeapon(TInventory kInventory) {}

simulated function string GetUnexpandedLocalizedMessageString(byte eString) {}

simulated function GetInventoryStatModifiers(out int aModifiers[ECharacterStat], out TCharacter kCharacter, XGGameData.EItemType iEquippedWeapon, array<int> arrBackPackItems)
{}