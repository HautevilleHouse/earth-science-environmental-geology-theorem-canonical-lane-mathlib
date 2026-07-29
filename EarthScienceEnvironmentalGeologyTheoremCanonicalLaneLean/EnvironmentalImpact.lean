import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.GeophysicalModeling

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure EnvironmentalImpactPackage where
  hydrologicalModel : Prop
  contaminantTransport : Prop
  ecologicalRiskAssessment : Prop
  remediationPlan : Prop

structure EnvironmentalImpactEvidence (E : EnvironmentalImpactPackage) where
  hydrologicalModelClosed : E.hydrologicalModel
  contaminantTransportClosed : E.contaminantTransport
  ecologicalRiskAssessmentClosed : E.ecologicalRiskAssessment
  remediationPlanClosed : E.remediationPlan

def EnvironmentalImpactClosed (E : EnvironmentalImpactPackage) : Prop :=
  E.hydrologicalModel ∧ E.contaminantTransport ∧
  E.ecologicalRiskAssessment ∧ E.remediationPlan

theorem environmental_impact_closed_from_evidence
    (E : EnvironmentalImpactPackage) (Ev : EnvironmentalImpactEvidence E) :
    EnvironmentalImpactClosed E := by
  exact And.intro Ev.hydrologicalModelClosed
    (And.intro Ev.contaminantTransportClosed
      (And.intro Ev.ecologicalRiskAssessmentClosed Ev.remediationPlanClosed))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse