class XComOnlineEventMgr extends OnlineEventMgr
	native;

var Checkpoint CurrentTacticalCheckpoint;
var Checkpoint StrategyCheckpoint;
var Checkpoint TacticalCheckpoint;
var Checkpoint TransportCheckpoint;
var bool bPerformingStandardLoad;
var bool bPerformingTransferLoad;
var float StorageWriteCooldownTimer;

event Init() {}

event ShowPostLoadMessages() {}

event Tick(float DeltaTime) {}

private final event PreloadSaveGameData(byte LocalUserNum, bool Success, int GameNum, int SaveID) {}

event FillInHeaderForSave(out SaveGameHeader Header, out string SaveFriendlyName) {}

event OnDeleteSaveGameDataComplete(byte LocalUserNum) {}

private final event DeleteSaveGameData(byte LocalUserNum, int DeviceID, string Filename) {}

event OnSaveAsyncTaskComplete() {}

event OnMPLoadTimeout() {}

// Export UXComOnlineEventMgr::execDevOnlineMsg(FFrame&, void* const)
native function DevOnlineMsg(string msg);

private final event ReadSaveGameData(byte LocalUserNum, int DeviceID, string FriendlyName, string Filename, string SaveFileName) {}

private final event WriteSaveGameData(byte LocalUserNum, int DeviceID, string Filename, bool IsAutosave, bool IsQuicksave, int SaveID, const out array<byte> SaveGameData, int SaveDataCRC) {}