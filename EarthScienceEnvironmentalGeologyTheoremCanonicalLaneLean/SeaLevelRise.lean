import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure SeaLevelRisePackage where
  thermalExpansion : Prop
  glacialContributions : Prop
  isostaticAdjustment : Prop
  relativeSeaLevelChange : Prop

structure SeaLevelRiseEvidence (S : SeaLevelRisePackage) where
  thermalExpansionClosed : S.thermalExpansion
  glacialContributionsClosed : S.glacialContributions
  isostaticAdjustmentClosed : S.isostaticAdjustment
  relativeSeaLevelChangeClosed : S.relativeSeaLevelChange

def SeaLevelRiseClosed (S : SeaLevelRisePackage) : Prop :=
  S.thermalExpansion ∧ S.glacialContributions ∧ S.isostaticAdjustment ∧ S.relativeSeaLevelChange

theorem sea_level_rise_closed_from_evidence (S : SeaLevelRisePackage) (E : SeaLevelRiseEvidence S) : SeaLevelRiseClosed S := by
  exact And.intro E.thermalExpansionClosed (And.intro E.glacialContributionsClosed (And.intro E.isostaticAdjustmentClosed E.relativeSeaLevelChangeClosed))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse