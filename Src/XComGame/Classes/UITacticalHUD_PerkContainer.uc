class UITacticalHUD_PerkContainer extends UI_FxsPanel;

struct TUIPerkInfo
{
    var string strPerkName;
    var string strPerkImage;
    var string strCooldown;
    var string strCharges;
};

var array<TUIPerkInfo> m_arrPerkData;

DefaultProperties
{
}
