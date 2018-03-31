class XGTacticalGameCoreNativeBase extends Actor
    hidecategories(Navigation)
    native(Core)
    config(GameCore)
    abstract
    notplaceable
    DependsOn(XGTacticalGameCoreData);

struct native TCharacterBalance 
{
	var int something;
};

struct native TAppearance
{
    var int iHead;
    var int iGender;
    var int iRace;
    var int iHaircut;
    var int iHairColor;
    var int iFacialHair;
    var int iBody;
    var int iBodyMaterial;
    var int iSkinColor;
    var int iEyeColor;
    var int iFlag;
    var int iArmorSkin;
    var int iVoice;
    var int iLanguage;
    var int iAttitude;
    var int iArmorDeco;
    var int iArmorTint;
};

enum EGender
{
    eGender_None,
    eGender_Male,
    eGender_Female,
    eGender_MAX
};

enum ESoldierRanks
{
    eRank_Rookie,
    eRank_Squaddie,
    eRank_Corporal,
    eRank_Sergeant,
    eRank_Lieutenant,
    eRank_Captain,
    eRank_Major,
    eRank_Colonel,
    ESoldierRanks_MAX
};

struct native TSoldierStatProgression
{
    var XGTacticalGameCoreNativeBase.ESoldierRanks eRank;
    var XGTacticalGameCoreData.ESoldierClass eClass;
    var int iHP;
    var int iAim;
    var int iDefense;
    var int iWill;
    var int iMobility;

    structdefaultproperties
    {
        eRank=ESoldierRanks.eRank_Rookie
        eClass=ESoldierClass.eSC_None
        iHP=0
        iAim=0
        iDefense=0
        iWill=0
        iMobility=0
    }
};

enum EPerkType
{
    ePerk_None,
    ePerk_OTS_XP,
    ePerk_PrecisionShot,
    ePerk_SquadSight,
    ePerk_GeneMod_SecondHeart,
    ePerk_LowProfile,
    ePerk_RunAndGun,
    ePerk_AutopsyRequired,
    ePerk_BattleScanner,
    ePerk_DisablingShot,
    ePerk_Opportunist,
    ePerk_Executioner,
    ePerk_OTS_Leader,
    ePerk_DoubleTap,
    ePerk_InTheZone,
    ePerk_DamnGoodGround,
    ePerk_SnapShot,
    ePerk_WillToSurvive,
    ePerk_FireRocket,
    ePerk_TracerBeams,
    ePerk_GeneMod_Adrenal,
    ePerk_FocusedSuppression,
    ePerk_ShredderRocket,
    ePerk_RapidReaction,
    ePerk_Grenadier,
    ePerk_DangerZone,
    ePerk_BulletSwarm,
    ePerk_ExtraConditioning,
    ePerk_GeneMod_BrainDamping,
    ePerk_GeneMod_BrainFeedback,
    ePerk_GeneMod_Pupils,
    ePerk_Sprinter,
    ePerk_Aggression,
    ePerk_TacticalSense,
    ePerk_CloseAndPersonal,
    ePerk_LightningReflexes,
    ePerk_RapidFire,
    ePerk_Flush,
    ePerk_GeneMod_DepthPerception,
    ePerk_BringEmOn,
    ePerk_CloseCombatSpecialist,
    ePerk_KillerInstinct,
    ePerk_GeneMod_BioelectricSkin,
    ePerk_Resilience,
    ePerk_SmokeBomb,
    ePerk_GeneMod_BoneMarrow,
    ePerk_StunImmune,
    ePerk_CoveringFire,
    ePerk_FieldMedic,
    ePerk_RifleSuppression_DEPRECATED,
    ePerk_GeneMod_MuscleFiber,
    ePerk_CombatDrugs,
    ePerk_DenseSmoke,
    ePerk_DeepPockets,
    ePerk_Sentinel,
    ePerk_Savior,
    ePerk_Revive,
    ePerk_HeightAdvantage,
    ePerk_Disabled_DEPRECATED,
    ePerk_ImmuneToDisable_DEPRECATED,
    ePerk_SuppressedActive,
    ePerk_CriticallyWounded,
    ePerk_Flying,
    ePerk_Stealth,
    ePerk_Poisoned,
    ePerk_CombatStimActive,
    ePerk_Implanted,
    ePerk_Panicked,
    ePerk_MindFray,
    ePerk_PsiPanic,
    ePerk_PsiInspiration,
    ePerk_MindControl,
    ePerk_TelekineticField,
    ePerk_Rift,
    ePerk_MindMerge,
    ePerk_MindMerger,
    ePerk_Hardened,
    ePerk_GreaterMindMerge,
    ePerk_GreaterMindMerger,
    ePerk_Evade,
    ePerk_Launch,
    ePerk_Bombard,
    ePerk_Leap,
    ePerk_Plague,
    ePerk_Poison,
    ePerk_BloodCall,
    ePerk_Intimidate,
    ePerk_FallenComrades,
    ePerk_Bloodlust,
    ePerk_BullRush,
    ePerk_HEATAmmo,
    ePerk_SmokeAndMirrors,
    ePerk_Rocketeer,
    ePerk_Mayhem,
    ePerk_Gunslinger,
    ePerk_GeneMod_MimeticSkin,
    ePerk_ClusterBomb,
    ePerk_PsiLance,
    ePerk_DeathBlossom,
    ePerk_Overload,
    ePerk_PsiControl,
    ePerk_PsiDrain,
    ePerk_Repair,
    ePerk_CannonFire,
    ePerk_Implant,
    ePerk_ChryssalidSpawn,
    ePerk_BattleFatigue,
    ePerk_OnlyForGermanModeStrings_ItemRangeBonus,
    ePerk_OnlyForGermanModeStrings_ItemRangePenalty,
    ePerk_Foundry_Scope,
    ePerk_Foundry_PistolI,
    ePerk_Foundry_PistolII,
    ePerk_Foundry_PistolIII,
    ePerk_Foundry_AmmoConservation,
    ePerk_Foundry_AdvancedFlight,
    ePerk_Foundry_ArcThrowerII,
    ePerk_Foundry_MedikitII,
    ePerk_Foundry_CaptureDrone,
    ePerk_Foundry_SHIVHeal,
    ePerk_Foundry_SHIVSuppression,
    ePerk_Foundry_EleriumFuel,
    ePerk_Foundry_MECCloseCombat,
    ePerk_Foundry_AdvancedServomotors,
    ePerk_Foundry_ShapedArmor,
    ePerk_Foundry_SentinelDrone,
    ePerk_Foundry_AlienGrenades,
    ePerk_PlasmaBarrage,
    ePerk_SeekerStealth,
    ePerk_StealthGrenade,
    ePerk_ReaperRounds,
    ePerk_Disoriented,
    ePerk_Barrage,
    ePerk_AutoThreatAssessment,
    ePerk_AdvancedFireControl,
    ePerk_DamageControl,
    ePerk_XenobiologyOverlays,
    ePerk_OneForAll,
    ePerk_JetbootModule,
    ePerk_ExpandedStorage,
    ePerk_RepairServos,
    ePerk_Overdrive,
    ePerk_PlatformStability,
    ePerk_AbsorptionFields,
    ePerk_ShockAbsorbentArmor,
    ePerk_ReactiveTargetingSensors,
    ePerk_BodyShield,
    ePerk_DistortionField,
    ePerk_GeneMod_AdrenalineSurge,
    ePerk_GeneMod_IronSkin,
    ePerk_GeneMod_RegenPheromones,
    ePerk_CovertPockets,
    ePerk_CovertHacker,
    ePerk_Medal_UrbanA,
    ePerk_Medal_UrbanB,
    ePerk_Medal_DefenderA,
    ePerk_Medal_DefenderB,
    ePerk_Medal_InternationalA,
    ePerk_Medal_InternationalB,
    ePerk_Medal_CouncilA,
    ePerk_Medal_CouncilB,
    ePerk_Medal_TerraA,
    ePerk_Medal_TerraB,
    ePerk_Dazed,
    ePerk_OnlyForGermanModeStrings_AimingAnglesBonus,
    ePerk_CatchingBreath,
    ePerk_Foundry_TacticalRigging,
    ePerk_SeekerStrangle,
    ePerk_ReinforcedArmor,
    ePerk_MindMerge_Mechtoid,
    ePerk_Electropulse,
    ePerk_OTS_Leader_Bonus,
    ePerk_OTS_Leader_TheLeader,
    ePerk_MAX
};

struct native TInventory
{
    var int iArmor;
    var int iPistol;
    var const int arrLargeItems[16];
    var const int iNumLargeItems;
    var const int arrSmallItems[16];
    var const int iNumSmallItems;
    var const int arrCustomItems[16];
    var const int iNumCustomItems;
};

struct native TCharacter
{
    var string strName;
    var int iType;
    var TInventory kInventory;
    var int aUpgrades[EPerkType];
    var int aAbilities[EAbility];
    var int aProperties[ECharacterProperty];
    var int aStats[ECharacterStat];
    var int aTraversals[ETraversalType];
    var XGTacticalGameCoreData.ESoldierClass eClass;
    var bool bHasPsiGift;
    var float fBioElectricParticleScale;
};

struct native TClass
{
    var string strName;
    var XGTacticalGameCoreData.ESoldierClass eType;
    var int eTemplate;
    var XGTacticalGameCoreData.EWeaponProperty eWeaponType;
    var int aAbilities[16];
    var int aAbilityUnlocks[16];

    structdefaultproperties
    {
        strName=""
        eType=ESoldierClass.eSC_None
        eTemplate=0
        eWeaponType=EWeaponProperty.eWP_None
        aAbilities[0]=0
        aAbilities[1]=0
        aAbilities[2]=0
        aAbilities[3]=0
        aAbilities[4]=0
        aAbilities[5]=0
        aAbilities[6]=0
        aAbilities[7]=0
        aAbilities[8]=0
        aAbilities[9]=0
        aAbilities[10]=0
        aAbilities[11]=0
        aAbilities[12]=0
        aAbilities[13]=0
        aAbilities[14]=0
        aAbilities[15]=0
        aAbilityUnlocks[0]=0
        aAbilityUnlocks[1]=0
        aAbilityUnlocks[2]=0
        aAbilityUnlocks[3]=0
        aAbilityUnlocks[4]=0
        aAbilityUnlocks[5]=0
        aAbilityUnlocks[6]=0
        aAbilityUnlocks[7]=0
        aAbilityUnlocks[8]=0
        aAbilityUnlocks[9]=0
        aAbilityUnlocks[10]=0
        aAbilityUnlocks[11]=0
        aAbilityUnlocks[12]=0
        aAbilityUnlocks[13]=0
        aAbilityUnlocks[14]=0
        aAbilityUnlocks[15]=0
    }
};

struct native TSoldier
{
    var int iID;
    var string strFirstName;
    var string strLastName;
    var string strNickName;
    var int iRank;
    var int iPsiRank;
    var int iCountry;
    var int iXP;
    var int iPsiXP;
    var int iNumKills;
    var TAppearance kAppearance;
    var TClass kClass;
    var bool bBlueshirt;

    structdefaultproperties
    {
        iID=0
        strFirstName=""
        strLastName=""
        strNickName=""
        iRank=0
        iPsiRank=0
        iCountry=0
        iXP=0
        iPsiXP=0
        iNumKills=0
        kAppearance=(iHead=-1,iGender=0,iRace=0,iHaircut=-1,iHairColor=0,iFacialHair=0,iBody=-1,iBodyMaterial=-1,iSkinColor=-1,iEyeColor=-1,iFlag=-1,iArmorSkin=-1,iVoice=-1,iLanguage=0,iAttitude=0,iArmorDeco=-1,iArmorTint=-1)
        kClass=(strName="",eType=ESoldierClass.eSC_None,eTemplate=0,eWeaponType=EWeaponProperty.eWP_None,aAbilities=0,aAbilities[1]=0,aAbilities[2]=0,aAbilities[3]=0,aAbilities[4]=0,aAbilities[5]=0,aAbilities[6]=0,aAbilities[7]=0,aAbilities[8]=0,aAbilities[9]=0,aAbilities[10]=0,aAbilities[11]=0,aAbilities[12]=0,aAbilities[13]=0,aAbilities[14]=0,aAbilities[15]=0,aAbilityUnlocks=0,aAbilityUnlocks[1]=0,aAbilityUnlocks[2]=0,aAbilityUnlocks[3]=0,aAbilityUnlocks[4]=0,aAbilityUnlocks[5]=0,aAbilityUnlocks[6]=0,aAbilityUnlocks[7]=0,aAbilityUnlocks[8]=0,aAbilityUnlocks[9]=0,aAbilityUnlocks[10]=0,aAbilityUnlocks[11]=0,aAbilityUnlocks[12]=0,aAbilityUnlocks[13]=0,aAbilityUnlocks[14]=0,aAbilityUnlocks[15]=0)
        bBlueshirt=false
    }
};

struct native TConfigCharacter extends TCharacter
{
    var int HP;
    var int Offense;
    var int Defense;
    var int Mobility;
    var int SightRadius;
    var int Will;
    var int ShieldHP;
    var int CritHitChance;
    var int CritWoundChance;
    var int FlightFuel;
    var int Reaction;
    var XGTacticalGameCoreData.EAbility ABILITIES[8];
    var XGTacticalGameCoreData.ECharacterProperty Properties[6];
    var bool bCanUse_eTraversal_Normal;
    var bool bCanUse_eTraversal_ClimbOver;
    var bool bCanUse_eTraversal_ClimbOnto;
    var bool bCanUse_eTraversal_ClimbLadder;
    var bool bCanUse_eTraversal_DropDown;
    var bool bCanUse_eTraversal_Grapple;
    var bool bCanUse_eTraversal_Landing;
    var bool bCanUse_eTraversal_BreakWindow;
    var bool bCanUse_eTraversal_KickDoor;
    var bool bCanUse_eTraversal_JumpUp;
    var bool bCanUse_eTraversal_WallClimb;
    var bool bCanUse_eTraversal_BreakWall;
};

struct native TWeapon
{
    var string strName;
    var int iType;
    var int aAbilities[EAbility];
    var int aProperties[EWeaponProperty];
    var int iDamage;
    var int iEnvironmentDamage;
    var int iRange;
    var int iReactionRange;
    var int iReactionAngle;
    var int iRadius;
    var int iCritical;
    var int iOffenseBonus;
    var int iSuppression;
    var int iSize;
    var int iHPBonus;
    var int iWillBonus;
};


var config array<config TConfigCharacter> Characters;
var array<TCharacter> m_arrCharacters;
var repnotify XGAbilityTree m_kAbilities;
var config int NUM_STARTING_SOLDIERS;
var config array<config TSoldierStatProgression> SoldierStatProgression;
var config int iRandWillIncrease;
var config float SW_MARATHON;
var config int PSI_NUM_TRAINING_SLOTS;


native simulated function TCharacter GetTCharacter(int iCharacter);

native simulated function bool IsOptionEnabled(XGGameData.EGameplayOption eOption);

native simulated function int GetWeaponStatBonus(int iStat, int iWeapon, const out TCharacter kCharacter);

native static final function bool TInventoryHasItemType(const out TInventory kInventory, int iItem);

native static final function int TInventoryLargeItemsSetItem(out TInventory kInventory, int Idx, int iItem);
native simulated function int GetArmorStatBonus(int iStat, int iArmor, TCharacter kCharacter);