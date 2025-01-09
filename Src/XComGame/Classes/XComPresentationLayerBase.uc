class XComPresentationLayerBase extends Actor
	abstract
	notplaceable;

var delegate<OnNarrativeCompleteCallback> __OnNarrativeCompleteCallback__Delegate;
var delegate<PreRemoteEventCallback> __PreRemoteEventCallback__Delegate;

simulated function UIWorldMessageMgr GetWorldMessenger() {}

simulated function UIRaiseDialog(TDialogueBoxData kData)
{
}

reliable client simulated function bool UINarrative(XComNarrativeMoment Moment, optional Actor kFocusActor, optional int InNarrativeCompleteCallback, optional int InPreRemoteEventCallback, optional Vector vOffset, optional bool bUISound, optional bool bFirstRunOnly, optional float FadeSpeed)
{
}

delegate OnNarrativeCompleteCallback()
{
    //return;    
}

delegate PreRemoteEventCallback()
{
    //return;    
}