class XComMutatorLoader extends XComMutator
	config(MutatorLoader);

var config array<config string> arrTacticalMutators;
var config array<config string> arrStrategicMutators;
var config bool bDisableLog;

function GameInfoInitGame(PlayerController Sender)
{
	local string MutatorName;
	local Class MutatorClass;
	local XComGameInfo CurrentGameInfo;
	local XComMutator kMutator;
	
	CurrentGameInfo = XComGameInfo(WorldInfo.Game);
	m_bDisableLog = bDisableLog;

	`Log("XComMutatorLoader: arrTacticalMutators.Length = " $ string(arrTacticalMutators.Length), !m_bDisableLog);
	`Log("XComMutatorLoader: arrStrategicMutators.Length = " $ string(arrStrategicMutators.Length), !m_bDisableLog);
	
	if (XComTacticalGame(CurrentGameInfo) != none)
	{
		`Log("XComMutatorLoader: CurrentGameInfo ==" @ CurrentGameInfo.Class, !m_bDisableLog);
		foreach arrTacticalMutators(MutatorName)
		{
			MutatorClass = class<Mutator>(DynamicLoadObject(MutatorName, class'Class'));
			if(MutatorClass != none)
			{
				CurrentGameInfo.AddMutator(MutatorName, true);
			}
		}
	}
	else if (XComHeadquartersGame(CurrentGameInfo) != none)
	{
		`Log("XComMutatorLoader: CurrentGameInfo ==" @ CurrentGameInfo.Class, !m_bDisableLog);
		foreach arrStrategicMutators(MutatorName)
		{
			MutatorClass = class<Mutator>(DynamicLoadObject(MutatorName, class'Class'));
			if(MutatorClass != none)
			{
				CurrentGameInfo.AddMutator(MutatorName, true);
			}
		}
	}
	foreach DynamicActors(class'XComMutator', kMutator)
	{
		kMutator.m_bDisableLog = bDisableLog;
	}
}


