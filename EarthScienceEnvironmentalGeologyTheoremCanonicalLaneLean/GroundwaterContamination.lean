import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure GroundwaterContaminationPackage where
  pollutantConcentrationMgPerL : Real
  groundwaterFlowRateMperDay : Real
  retardationFactor : Real
  concentrationBelowThreshold : Prop

structure GroundwaterContaminationEvidence (G : GroundwaterContaminationPackage) where
  concentrationBelowThresholdClosed : G.concentrationBelowThreshold

def GroundwaterContaminationClosed (G : GroundwaterContaminationPackage) : Prop :=
  G.concentrationBelowThreshold

theorem groundwater_contamination_closed_from_evidence
    (G : GroundwaterContaminationPackage) (E : GroundwaterContaminationEvidence G) :
    GroundwaterContaminationClosed G := by
  exact E.concentrationBelowThresholdClosed

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse
