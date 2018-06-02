class XGShip extends XGStrategyActor;

struct CheckpointRecord
{
    var TShip m_kTShip;
    var Vector2D m_v2Coords;
    var Vector2D m_v2Destination;
    var Vector m_vHeading;
    var int m_iHP;
    var XGMission m_kMission;
    var int m_iStatus;
    var XGEntity m_kEntity;
    var XGGeoscape m_kGeoscape;

    structdefaultproperties
    {
        m_kTShip=(strName="",strSize="",eType=EShipType.eShip_None,iSpeed=0,iEngagementSpeed=0,iHP=0,iAP=0,iArmor=0,iRange=0,arrSalvage=none,arrWeapons=none,iImage=0)
        m_v2Coords=(X=0.0,Y=0.0)
        m_v2Destination=(X=0.0,Y=0.0)
        m_vHeading=(X=0.0,Y=0.0,Z=0.0)
        m_iHP=0
        m_kMission=none
        m_iStatus=0
        m_kEntity=none
        m_kGeoscape=none
    }
};

var TShip m_kTShip;
var int m_iHP;
var int m_iStatus;
var Vector2D m_v2Coords;
var Vector2D m_v2Destination;
var Vector m_vHeading;
var XGMission m_kMission;
var array<float> m_afWeaponCooldown;
var float m_fExpectedFlightTime;
var float m_fAdjustedFlightTime;
var float m_fCurrentFlightTime;

function int GetHP() {}
function int GetHullStrength() {}
function int GetRange() {}
function int GetSpeed() {}
function Vector2D GetScreenSpeedPerSecond() {}
function XGGameData.EShipType GetType() {}
function array<TShipWeapon> GetWeapons() {}
function bool IsAlienShip() {}
function bool IsDamaged() {}
function bool IsHumanShip() {}
function bool IsFlying() {}
function string GetStatusString(){}
function int GetStatusUIState(){}
function ResetWeapons() {}
function UpdateWeapons(float fDeltaT) {}
function Vector2D GetCoords() {}
