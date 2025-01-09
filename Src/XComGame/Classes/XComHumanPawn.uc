class XComHumanPawn extends XComUnitPawn
	DependsOn(XGTacticalGameCoreNativeBase);

var transient array<int> PossibleHeads;
var transient array<int> PossibleArmorKits;
var transient array<int> PossibleVoices;
var transient array<int> PossibleHairs;

simulated function SetHead(int HeadId) {}

simulated function SetArmorDeco(int DecoIdx) {}

simulated function SetVoice(int NewVoice) {}

simulated function SetHair(int HairId) {}

function Init(const out TCharacter inCharacter, const out TInventory Inv, const out TAppearance Appearance) {}

state InHQ
{
	function Init(const out TCharacter inCharacter, const out TInventory Inv, const out TAppearance Appearance) {}

	function FindPossibleCustomParts(const out TCharacter inCharacter) {}

}