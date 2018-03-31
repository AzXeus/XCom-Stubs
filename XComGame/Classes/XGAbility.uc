class XGAbility extends Actor
    native(Core)
    notplaceable;

var XGUnit m_kUnit;
var bool m_bReactionFire;
var repnotify byte m_eAvailableCode;

native simulated function bool HasProperty(byte eProp);

simulated function int GetType() {}

native simulated function bool HasDisplayProperty(byte eDisplayProp);

native final simulated function bool CheckAvailable();