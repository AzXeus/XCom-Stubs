class XGEntity extends Actor
    implements(IMouseInteractionInterface)
dependson(XGStrategyActor);

struct CheckpointRecord
{
    var XGStrategyActor m_kGameActor;
    var XGStrategyActorNativeBase.EEntityGraphic m_eEntityGraphic;
    var int m_iData;

    structdefaultproperties
    {
        m_kGameActor=none
        m_eEntityGraphic=XGStrategyActorNativeBase.EEntityGraphic.eEntityGraphic_HQ
        m_iData=0
    }
};

var XGStrategyActor m_kGameActor;
var XGStrategyActorNativeBase.EEntityGraphic m_eEntityGraphic;
var int m_iData;
var export editinline ParticleSystemComponent PFX;

function ApplyCheckpointRecord() {}
function AssignGameActor(XGStrategyActor KActor, optional int iData) {}
function Vector2D GetCoords() {}
function Init(XGStrategyActorNativeBase.EEntityGraphic eGraphic) {}
function bool ShouldAllowMousePick(XGStrategyActorNativeBase.EEntityGraphic eGraphic) {}
function bool OnMouseEvent(int Cmd, int Actionmask, optional Vector MouseWorldOrigin, optional Vector MouseWorldDirection, optional Vector HitLocation) {}

DefaultProperties
{
}
