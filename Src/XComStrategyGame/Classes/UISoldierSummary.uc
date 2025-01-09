class UISoldierSummary extends UI_FxsScreen;

var UIStrategyComponent_SoldierInfo m_kSoldierHeader;
var UIStrategyComponent_SoldierStats m_kSoldierStats;
var UIStrategyComponent_SoldierAbilityList m_kAbilityList;


simulated function XGSoldierUI GetMgr(optional int iStaringView) {}

simulated function UpdatePanels() {}

simulated function SetSoldier(XGStrategySoldier kSoldier) {}