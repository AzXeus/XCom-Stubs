class XGContinent extends XGStrategyActor
	config(GameData);

var array<TRect> m_arrBounds;
var string m_strName;
var int m_iNumSatellites;
var int m_iPanic;
var int m_iImage;
var Vector2D m_v2Coords;
var EContinent m_eContinent;
var EContinentBonus m_eBonus;

function InitNewGame(){}
function int GetID(){}
function int GetRandomCity(){}
function int GetRandomCouncilCountry(){}
function int GetMaxFunding(){}
function int GetMaxScientists(){}
function int GetMaxEngineers(){}
function Vector2D GetRandomLocation(){}
function bool Hit(Vector2D v2Loc){}
function TRect GetBounds(){}
function EndOfMonth(out TCouncilMeeting kCouncil){}
function WhoIsLeaving(out TCouncilMeeting kCouncil){}
function WhoIsAdding(){}
function WhoIsJoining(){}
function CalcRewards(){}
function int GetNumRemainingCountries(){}
function bool HasSatelliteCoverage(){}
function bool HasBonus(){}
function RecordCountryHelped(ECountry eHelpedCountry){}
function RecordCountryNotHelped(ECountry eNotHelpedCountry){}
function string GetName() {}
function Vector2D GetHQLocation() {}
function int GetEngineers() {}
function int GetNumSatellites() {}
function AddPanic(int iPanic) {}
function TContinentBonus GetBonus(){}
function SetSatelliteCoverage(int iCountry, bool bCoverage){}
function bool CheckForAllTogetherNow(){}
function int GetNumSatNodes(){}

