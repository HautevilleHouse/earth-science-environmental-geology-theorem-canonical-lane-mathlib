import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure GlacialIsostaticAdjustmentPackage where
  crustalReboundRateMmPerYear : Real
  mantleViscosityPaS : Real
  loadHistoryKnown : Prop
  reboundCorrect : Prop

structure GlacialIsostaticAdjustmentEvidence (G : GlacialIsostaticAdjustmentPackage) where
  loadHistoryKnownClosed : G.loadHistoryKnown
  reboundCorrectClosed : G.reboundCorrect

def GlacialIsostaticAdjustmentClosed (G : GlacialIsostaticAdjustmentPackage) : Prop :=
  G.loadHistoryKnown ∧ G.reboundCorrect

theorem glacial_isostatic_adjustment_closed_from_evidence
    (G : GlacialIsostaticAdjustmentPackage) (E : GlacialIsostaticAdjustmentEvidence G) :
    GlacialIsostaticAdjustmentClosed G := by
  exact And.intro E.loadHistoryKnownClosed E.reboundCorrectClosed

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse
