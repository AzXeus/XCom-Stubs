class XComEngine extends GameEngine
    transient
    native
    config(Engine);
	
var XGLocalizeContext LocalizeContext;	
var CheckPoint CurrentCheckpoint;

native static final function SetRandomSeeds(int iSeed);

native static final function int GetSyncSeed();

native static final function int SyncRand(int Max, string strFnName);

native static final function float SyncFRand(string strFnName);

native static final function int GetARandomSeed();

native static final function int GetLastInitSeed();

native static final function float GetCurrentTime();

native final function int GetCurrentDeviceID();