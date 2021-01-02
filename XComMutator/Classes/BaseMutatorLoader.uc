class BaseMutatorLoader extends XComMod;

simulated function StartMatch()
{
	if(class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator == none)
	{
		LogInternal("Initializing BaseMutator...", name);
		class'Engine'.static.GetCurrentWorldInfo().Game.AddMutator("XComMutator.XComMutatorLoader");
		XComMutatorLoader(class'Engine'.static.GetCurrentWorldInfo().Game.BaseMutator).GameInfoInitGame(class'Engine'.static.GetCurrentWorldInfo().GetALocalPlayerController());
	}
}

DefaultProperties
{
}
