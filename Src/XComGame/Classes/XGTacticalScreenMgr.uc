class XGTacticalScreenMgr extends Actor;

struct TText
{
    var string StrValue;
    var int iState;

    structdefaultproperties
    {
        StrValue=""
        iState=0
    }
};

struct TLabeledText
{
    var string StrValue;
    var string strLabel;
    var int iState;
    var bool bNumber;

    structdefaultproperties
    {
        StrValue=""
        strLabel=""
        iState=0
        bNumber=false
    }
};

struct TTableMenuHeader
{
    var array<string> arrStrings;
    var array<int> arrStates;

    structdefaultproperties
    {
        arrStrings=none
        arrStates=none
    }
};

struct TTableMenuOption
{
    var array<string> arrStrings;
    var array<int> arrStates;
    var int iState;
    var string strHelp;

    structdefaultproperties
    {
        arrStrings=none
        arrStates=none
        iState=0
        strHelp=""
    }
};

struct TTableMenu
{
    var array<int> arrCategories;
    var TTableMenuHeader kHeader;
    var array<TTableMenuOption> arrOptions;
    var bool bTakesNoInput;

    structdefaultproperties
    {
        arrCategories=none
        kHeader=(arrStrings=none,arrStates=none)
        arrOptions=none
        bTakesNoInput=false
    }
};



DefaultProperties
{
}
