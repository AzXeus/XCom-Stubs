class XGCharacter extends Actor
	dependsOn(XGTacticalGameCoreNativeBase);

var XGGameData.EPawnType m_eType;
var TCharacter m_kChar;

function class<XComUnitPawn> GetPawnClass() {}

function bool HasUpgrade(int iUpgrade) {}
