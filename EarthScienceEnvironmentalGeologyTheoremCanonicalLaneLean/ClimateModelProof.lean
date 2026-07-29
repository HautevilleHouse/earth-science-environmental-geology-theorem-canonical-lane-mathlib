import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.AtmosphereOceanPackage
import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.CarbonCyclePackage

/-!
# Climate Model Proof Package
-/

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure ClimateModelProofPackage (A : AtmosphereOceanPackage) (C : CarbonCyclePackage A) where
  radiativeForcing : Prop
  feedbackLoops : Prop
  equilibriumClimateSensitivity : Prop
  transientResponse : Prop
  emulatorValidation : Prop

def ClimateModelProofClosed (A : AtmosphereOceanPackage) (C : CarbonCyclePackage A) (M : ClimateModelProofPackage A C) : Prop :=
  M.radiativeForcing ∧ M.feedbackLoops ∧ M.equilibriumClimateSensitivity ∧ M.transientResponse ∧ M.emulatorValidation

theorem climate_model_proof_closed (A : AtmosphereOceanPackage) (C : CarbonCyclePackage A) (M : ClimateModelProofPackage A C) (E : 
    M.radiativeForcing ∧ M.feedbackLoops ∧ M.equilibriumClimateSensitivity ∧ M.transientResponse ∧ M.emulatorValidation) :
    ClimateModelProofClosed A C M := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 (And.intro E.2.2.2.1 E.2.2.2.2)))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse