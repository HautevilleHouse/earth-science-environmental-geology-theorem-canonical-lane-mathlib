import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure GroundwaterFlowPackage where
  aquiferGeometry : Type u
  hydraulicConductivity : Prop
  rechargeRate : Prop
  darcyVelocityField : Prop
  contaminantTransport : Prop

structure GroundwaterFlowEvidence (G : GroundwaterFlowPackage) where
  aquiferGeometryDefined : G.aquiferGeometry = G.aquiferGeometry
  hydraulicConductivityClosed : G.hydraulicConductivity
  rechargeRateClosed : G.rechargeRate
  darcyVelocityFieldClosed : G.darcyVelocityField
  contaminantTransportClosed : G.contaminantTransport

def GroundwaterFlowClosed (G : GroundwaterFlowPackage) : Prop :=
  G.hydraulicConductivity ∧ G.rechargeRate ∧
  G.darcyVelocityField ∧ G.contaminantTransport

theorem groundwater_flow_closed_from_evidence (G : GroundwaterFlowPackage) (E : GroundwaterFlowEvidence G) :
    GroundwaterFlowClosed G := by
  exact And.intro E.hydraulicConductivityClosed
    (And.intro E.rechargeRateClosed
      (And.intro E.darcyVelocityFieldClosed E.contaminantTransportClosed))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse