class XGShip_Interceptor extends XGShip
    hidecategories(Navigation)
    config(GameData)
    notplaceable;

var string m_strCallsign;
var XGGameData.EItemType m_eWeapon;
var int m_iConfirmedKills;
var float m_fFlightTime;
var XGInterception m_kEngagement;
var int m_iHoursDown;
var int m_iHomeContinent;
var int m_iHomeBay;
var private XGHangarShip m_kHangarShip;
var const localized string m_strValueDays;
var const localized string m_strValueHours;
var const localized string m_strLabelReady;

function Update(float fDeltaT){}
function bool CanPlayEngineSound(){}
function ConsumeFuel(float fFlightTime){}
function Init(TShip kTShip){}
function InitSound(){}
function EquipWeapon(EItemType eItem){}
function UpdateHangarShip(){}
function XGHangarShip GetWeaponViewShip(){}
function XGHangarShip GetHangarShip(){}
function DestroyHangarShip(){}
function TShipUIInfo GetUIInfo(){}
function string GetCallsign() {}
function float GetFuelPct() {}
function Vector2D GetHomeCoords() {}
function float GetHPPct() {}
function int GetStatus() {}
function string GetStatusString() {}
function EItemType GetWeapon() {}
function string GetWeaponString() {}
function Hunt(XGInterception kInterception) {}
function bool IsFirestorm() {}
function bool IsHumanShip() {}
function OnArrival() {}
function ReturnToBase() {}
