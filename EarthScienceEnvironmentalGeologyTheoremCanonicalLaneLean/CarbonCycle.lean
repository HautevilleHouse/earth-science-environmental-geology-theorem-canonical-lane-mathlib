import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure CarbonCyclePackage where
  reservoirFluxes : Prop
  anthropogenicEmissions : Prop
  oceanAcidification : Prop
  terrestrialUptake : Prop

structure CarbonCycleEvidence (C : CarbonCyclePackage) where
  reservoirFluxesClosed : C.reservoirFluxes
  anthropogenicEmissionsClosed : C.anthropogenicEmissions
  oceanAcidificationClosed : C.oceanAcidification
  terrestrialUptakeClosed : C.terrestrialUptake

def CarbonCycleClosed (C : CarbonCyclePackage) : Prop :=
  C.reservoirFluxes ∧ C.anthropogenicEmissions ∧ C.oceanAcidification ∧ C.terrestrialUptake

theorem carbon_cycle_closed_from_evidence (C : CarbonCyclePackage) (E : CarbonCycleEvidence C) : CarbonCycleClosed C := by
  exact And.intro E.reservoirFluxesClosed (And.intro E.anthropogenicEmissionsClosed (And.intro E.oceanAcidificationClosed E.terrestrialUptakeClosed))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse