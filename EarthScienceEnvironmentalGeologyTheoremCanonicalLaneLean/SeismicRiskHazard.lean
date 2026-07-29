import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.BioGeoChemicalCycle

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure SeismicRiskHazardPackage where
  faultSlipRate : ℝ → ℝ
  recurrenceInterval : ℝ
  groundMotionPrediction : Prop
  vulnerabilityAssessment : Prop
  riskScore : ℝ

structure SeismicRiskHazardEvidence (S : SeismicRiskHazardPackage) where
  groundMotionPredictionClosed : S.groundMotionPrediction
  vulnerabilityAssessmentClosed : S.vulnerabilityAssessment
  riskScorePositive : S.riskScore ≥ 0

def SeismicRiskHazardClosed (S : SeismicRiskHazardPackage) : Prop :=
  S.groundMotionPrediction ∧ S.vulnerabilityAssessment ∧ S.riskScore ≥ 0

theorem seismic_risk_hazard_closed_from_evidence
    (S : SeismicRiskHazardPackage) (Ev : SeismicRiskHazardEvidence S) :
    SeismicRiskHazardClosed S := by
  exact And.intro Ev.groundMotionPredictionClosed
    (And.intro Ev.vulnerabilityAssessmentClosed Ev.riskScorePositive)

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse
