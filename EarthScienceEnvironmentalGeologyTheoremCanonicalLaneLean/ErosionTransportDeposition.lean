import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.EnvironmentalGeologyObjects

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure ErosionTransportDepositionPackage where
  erosionRate : ℝ → ℝ
  transportCapacity : ℝ → ℝ
  depositionRate : ℝ → ℝ
  continuityEquation : Prop
  sedimentFlux : Prop

structure ErosionTransportDepositionEvidence (E : ErosionTransportDepositionPackage) where
  erosionRateDefined : E.erosionRate = E.erosionRate
  transportCapacityBound : E.transportCapacity 0 ≥ 0
  depositionRateNonnegative : ∀ t, E.depositionRate t ≥ 0
  continuityEquationClosed : E.continuityEquation
  sedimentFluxClosed : E.sedimentFlux

def ErosionTransportDepositionClosed (E : ErosionTransportDepositionPackage) : Prop :=
  E.continuityEquation ∧ E.sedimentFlux

theorem erosion_transport_deposition_closed_from_evidence
    (E : ErosionTransportDepositionPackage) (Ev : ErosionTransportDepositionEvidence E) :
    ErosionTransportDepositionClosed E := by
  exact And.intro Ev.continuityEquationClosed Ev.sedimentFluxClosed

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse
