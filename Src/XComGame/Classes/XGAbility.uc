class XGAbility extends Actor
    native(Core)
    notplaceable;

var XGUnit m_kUnit;
var string strName;
var bool m_bReactionFire;
var repnotify byte m_eAvailableCode;

native simulated function bool HasProperty(byte eProp);

simulated function int GetType() {}

simulated function string GetName() {}

native simulated function bool HasDisplayProperty(byte eDisplayProp);

native final simulated function bool CheckAvailable();