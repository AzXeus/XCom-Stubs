class XComCheatManager extends CheatManager within XComPlayerControllerNativeBase
    native(Core);

var bool m_bNoWeaponsClass;


// Export UXComCheatManager::execSetSeedOverride(FFrame&, void* const)
native exec function SetSeedOverride(int iSeed);


function HelpDESC(string func, string Description)
{   
}
function OutputMsg(string msg)
{ 
}


function XGUnit GetUnitByName(name unitName)
{   
}


function TestGenericVisibilityCallback()
{   
}


private final function StatsTestOnReadComplete(bool bWasSuccessful)
{  
}