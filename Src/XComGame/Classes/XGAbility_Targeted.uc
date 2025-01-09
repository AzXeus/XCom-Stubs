class XGAbility_Targeted extends XGAbility
    native(Core)
    notplaceable;
	
struct native TShotInfo
{

};

var bool m_bCritical;
var bool m_bHit;
var bool m_bReflected;
var bool m_bHasFlank;
var bool m_bHasOpenTarget;
var XGWeapon m_kWeapon;

native simulated function XGUnit GetPrimaryTarget();

final simulated function int TShotInfo_ToString(optional TShotInfo kShotInfo)
{}