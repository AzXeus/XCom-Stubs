class XGBattleDesc extends Actor
	dependsOn(XGGameData);

var string m_strMapName;
var int m_iMissionType;
var XGGameData.EShipType m_eUFOType;
var XGGameData.EFCMission m_eCouncilType;
var int m_iDifficulty;

event bool ShouldSpawnMeldCanisters()
{
}
