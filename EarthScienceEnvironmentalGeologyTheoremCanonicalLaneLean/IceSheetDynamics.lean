import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure IceSheetDynamicsPackage where
  massBalance : Prop
  flowLaw : Prop
  basalSliding : Prop
  calvingRate : Prop

structure IceSheetDynamicsEvidence (I : IceSheetDynamicsPackage) where
  massBalanceClosed : I.massBalance
  flowLawClosed : I.flowLaw
  basalSlidingClosed : I.basalSliding
  calvingRateClosed : I.calvingRate

def IceSheetDynamicsClosed (I : IceSheetDynamicsPackage) : Prop :=
  I.massBalance ∧ I.flowLaw ∧ I.basalSliding ∧ I.calvingRate

theorem ice_sheet_dynamics_closed_from_evidence (I : IceSheetDynamicsPackage) (E : IceSheetDynamicsEvidence I) : IceSheetDynamicsClosed I := by
  exact And.intro E.massBalanceClosed (And.intro E.flowLawClosed (And.intro E.basalSlidingClosed E.calvingRateClosed))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse