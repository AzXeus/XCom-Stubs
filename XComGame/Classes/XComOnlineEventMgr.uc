class XComOnlineEventMgr extends OnlineEventMgr
	native;

var Checkpoint CurrentTacticalCheckpoint;
var Checkpoint StrategyCheckpoint;
var Checkpoint TacticalCheckpoint;
var Checkpoint TransportCheckpoint;

// Export UXComOnlineEventMgr::execDevOnlineMsg(FFrame&, void* const)
native function DevOnlineMsg(string msg);
