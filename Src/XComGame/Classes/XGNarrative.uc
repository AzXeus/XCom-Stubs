class XGNarrative extends Actor;

struct TItemUnlock
{
    var bool bItem;
    var bool bFacility;
    var bool bFoundryProject;
    var bool bGeneMod;
    var bool bMecArmor;
    var SoundCue sndFanfare;
    var XGGameData.EItemType eItemUnlocked;
    var XGGameData.EItemType eItemUnlocked2;
    var int iUnlocked;
    var int eUnlockImage;
    var string strTitle;
    var string strName;
    var string strDescription;
    var string strHelp;
};

DefaultProperties
{
}
