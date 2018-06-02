class XGStrategyAI extends XGStrategyActor
    config(GameData)
    notplaceable;

function Init()
{
}

function int GetMonth()
{
}

function ECharacter GetCommanderType()
{
}

function XGShip_UFO GetUFO(int iUFOindex)
{
}

function TAlienSquad DetermineFirstMissionSquad()
{
}

function TAlienSquad DetermineAbductionSquad(int iMissionDiff)
{
}

function TAlienSquad DetermineUFOSquad(XGShip_UFO kUFO, bool bLanded, optional EShipType eShip = 0)
{
}

function TAlienSquad DetermineTerrorSquad()
{
}

function TAlienSquad DetermineSpecialMissionSquad(ECharacter eChar, EFCMission eMission, bool bAssault)
{
}
function OnUFOShotDown(XGShip_Interceptor kJet, XGShip_UFO kUFO){}
function OnUFODestroyed(XGShip_UFO kUFO){}
function OnUFOAttacked(XGShip_UFO kUFO){}
