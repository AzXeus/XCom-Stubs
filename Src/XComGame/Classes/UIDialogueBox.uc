class UIDialogueBox extends UI_FxsScreen
    notplaceable
    hidecategories(Navigation);

enum EUIDialogBoxDisplay
{
    eDialog_Normal,
    eDialog_NormalWithImage,
    eDialog_Warning,
    eDialog_Alert,
    eDialog_MAX
};

enum EUIAction
{
    eUIAction_Accept,
    eUIAction_Cancel,
    eUIAction_Closed,
    eUIAction_MAX
};

struct TDialogueBoxData
{
    var UIDialogueBox.EUIDialogBoxDisplay eType;
    var bool isShowing;
    var bool IsModal;
    var string strTitle;
    var string strText;
    var string strAccept;
    var string strCancel;
    var string strImagePath;
    var SoundCue sndIn;
    var SoundCue sndOut;
    var delegate<ActionCallback> fnCallback;
    var delegate<ActionCallbackEx> fnCallbackEx;
    var UICallbackData xUserData;
};

delegate ActionCallback(UIDialogueBox.EUIAction eAction)
{
    //return;    
}

delegate ActionCallbackEx(UIDialogueBox.EUIAction eAction, UICallbackData xUserData)
{
    //return;    
}