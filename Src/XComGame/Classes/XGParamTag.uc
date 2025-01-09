class XGParamTag extends XGLocalizeTag
    native(Core);

var int IntValue0;
var int IntValue1;
var int IntValue2;
var string StrValue0;
var string StrValue1;
var string StrValue2;

// Export UXGParamTag::execExpand(FFrame&, void* const)
native function bool Expand(string InString, out string OutString);

defaultproperties
{
    Tag="XGParam"
}