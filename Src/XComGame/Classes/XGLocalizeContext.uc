class XGLocalizeContext extends Object
    native(Core);

var array<XGLocalizeTag> LocalizeTags;

// Export UXGLocalizeContext::execFindTag(FFrame&, void* const)
native function XGLocalizeTag FindTag(string TagName);

// Export UXGLocalizeContext::execExpand(FFrame&, void* const)
native function bool Expand(string TagName, string OptName, out string OutString);