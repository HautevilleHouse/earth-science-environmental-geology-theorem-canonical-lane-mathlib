import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.ErosionTransportDeposition

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure GroundwaterFlowContaminantPackage where
  hydraulicConductivity : ℝ → ℝ
  porosity : ℝ
  contaminantSource : ℝ → ℝ
  darcyFlux : Prop
  advectionDispersion : Prop
  reactionRates : Prop

structure GroundwaterFlowContaminantEvidence (G : GroundwaterFlowContaminantPackage) where
  darcyFluxClosed : G.darcyFlux
  advectionDispersionClosed : G.advectionDispersion
  reactionRatesClosed : G.reactionRates

def GroundwaterFlowContaminantClosed (G : GroundwaterFlowContaminantPackage) : Prop :=
  G.darcyFlux ∧ G.advectionDispersion ∧ G.reactionRates

theorem groundwater_flow_contaminant_closed_from_evidence
    (G : GroundwaterFlowContaminantPackage) (Ev : GroundwaterFlowContaminantEvidence G) :
    GroundwaterFlowContaminantClosed G := by
  exact And.intro Ev.darcyFluxClosed
    (And.intro Ev.advectionDispersionClosed Ev.reactionRatesClosed)

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse
