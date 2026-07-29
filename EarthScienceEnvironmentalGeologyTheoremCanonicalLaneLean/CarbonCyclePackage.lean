import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.AtmosphereOceanPackage

/-!
# Carbon Cycle Package
-/

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure CarbonCyclePackage (A : AtmosphereOceanPackage) where
  reservoirFluxes : Prop
  solubilityPump : Prop
  biologicalPump : Prop
  terrestrialUptake : Prop
  anthropogenicPerturbation : Prop

structure CarbonCycleEvidence (A : AtmosphereOceanPackage) (C : CarbonCyclePackage A) where
  reservoirFluxesClosed : C.reservoirFluxes
  solubilityPumpClosed : C.solubilityPump
  biologicalPumpClosed : C.biologicalPump
  terrestrialUptakeClosed : C.terrestrialUptake
  anthropogenicPerturbationClosed : C.anthropogenicPerturbation

def CarbonCycleClosed (A : AtmosphereOceanPackage) (C : CarbonCyclePackage A) : Prop :=
  C.reservoirFluxes ∧ C.solubilityPump ∧ C.biologicalPump ∧ C.terrestrialUptake ∧ C.anthropogenicPerturbation

theorem carbon_cycle_closed_from_evidence (A : AtmosphereOceanPackage) (C : CarbonCyclePackage A) (E : CarbonCycleEvidence A C) :
    CarbonCycleClosed A C := by
  exact And.intro E.reservoirFluxesClosed
    (And.intro E.solubilityPumpClosed
      (And.intro E.biologicalPumpClosed
        (And.intro E.terrestrialUptakeClosed E.anthropogenicPerturbationClosed)))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse