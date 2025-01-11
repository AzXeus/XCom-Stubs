class XGTacticalScreenMgr extends Actor;

struct TText
{
    var string StrValue;
    var int iState;
};

struct TLabeledText
{
    var string StrValue;
    var string strLabel;
    var int iState;
    var bool bNumber;
};
struct TMenuOption
{
    var string strText;
    var string strHelp;
    var int iState;
};

struct TMenu
{
    var string strLabel;
    var array<TMenuOption> arrOptions;
    var bool bTakesNoInput;
};


struct TTableMenuHeader
{
    var array<string> arrStrings;
    var array<int> arrStates;
};

struct TTableMenuOption
{
    var array<string> arrStrings;
    var array<int> arrStates;
    var int iState;
    var string strHelp;
};

struct TTableMenu
{
    var array<int> arrCategories;
    var TTableMenuHeader kHeader;
    var array<TTableMenuOption> arrOptions;
    var bool bTakesNoInput;
};

struct TButtonText
{
    var string StrValue;
    var int iState;
    var int iButton;
};

struct TImage
{
    var int iImage;
    var string strLabel;
    var int iState;
    var string strPath;
};



DefaultProperties
{
}