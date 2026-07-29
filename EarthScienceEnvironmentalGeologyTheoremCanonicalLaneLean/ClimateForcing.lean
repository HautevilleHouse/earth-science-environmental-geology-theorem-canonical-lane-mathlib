import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure ClimateForcingPackage where
  solarRadiationInput : Prop
  temperatureField : Prop
  precipitationPattern : Prop
  glacialInterglacialCycle : Prop
  anthropogenicEffect : Prop

structure ClimateForcingEvidence (C : ClimateForcingPackage) where
  solarRadiationInputClosed : C.solarRadiationInput
  temperatureFieldClosed : C.temperatureField
  precipitationPatternClosed : C.precipitationPattern
  glacialInterglacialCycleClosed : C.glacialInterglacialCycle
  anthropogenicEffectClosed : C.anthropogenicEffect

def ClimateForcingClosed (C : ClimateForcingPackage) : Prop :=
  C.solarRadiationInput ∧ C.temperatureField ∧
  C.precipitationPattern ∧ C.glacialInterglacialCycle ∧ C.anthropogenicEffect

theorem climate_forcing_closed_from_evidence (C : ClimateForcingPackage) (E : ClimateForcingEvidence C) :
    ClimateForcingClosed C := by
  exact And.intro E.solarRadiationInputClosed
    (And.intro E.temperatureFieldClosed
      (And.intro E.precipitationPatternClosed
        (And.intro E.glacialInterglacialCycleClosed E.anthropogenicEffectClosed)))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse