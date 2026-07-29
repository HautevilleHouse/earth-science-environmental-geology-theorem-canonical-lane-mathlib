import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure SeismicHazardRiskPackage where
  peakGroundAccelerationMperS2 : Real
  magnitude : Real
  recurrenceIntervalYears : Nat
  hazardAcceptable : Prop

structure SeismicHazardRiskEvidence (S : SeismicHazardRiskPackage) where
  hazardAcceptableClosed : S.hazardAcceptable

def SeismicHazardRiskClosed (S : SeismicHazardRiskPackage) : Prop :=
  S.hazardAcceptable

theorem seismic_hazard_risk_closed_from_evidence
    (S : SeismicHazardRiskPackage) (E : SeismicHazardRiskEvidence S) :
    SeismicHazardRiskClosed S := by
  exact E.hazardAcceptableClosed

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse
