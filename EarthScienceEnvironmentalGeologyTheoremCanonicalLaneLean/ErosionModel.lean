import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure ErosionModel where
  initialTopography : Type u
  climateForcing : Prop
  sedimentTransportDynamics : Prop
  erosionRateField : Prop
  depositionRateField : Prop
  baseLevelControl : Prop

structure ErosionModelEvidence (M : ErosionModel) where
  initialTopographyDefined : M.initialTopography = M.initialTopography
  climateForcingClosed : M.climateForcing
  sedimentTransportDynamicsClosed : M.sedimentTransportDynamics
  erosionRateFieldClosed : M.erosionRateField
  depositionRateFieldClosed : M.depositionRateField
  baseLevelControlClosed : M.baseLevelControl

def ErosionModelClosed (M : ErosionModel) : Prop :=
  M.climateForcing ∧ M.sedimentTransportDynamics ∧
  M.erosionRateField ∧ M.depositionRateField ∧ M.baseLevelControl

theorem erosion_model_closed_from_evidence (M : ErosionModel) (E : ErosionModelEvidence M) :
    ErosionModelClosed M := by
  exact And.intro E.climateForcingClosed
    (And.intro E.sedimentTransportDynamicsClosed
      (And.intro E.erosionRateFieldClosed
        (And.intro E.depositionRateFieldClosed E.baseLevelControlClosed)))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse