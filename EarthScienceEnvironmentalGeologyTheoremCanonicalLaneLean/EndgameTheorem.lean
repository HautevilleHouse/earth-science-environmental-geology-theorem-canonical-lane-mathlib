import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.BridgeLemmas
import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

def ConstrainedEarthScienceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_earth_science_endgame (A : AdmissibleClass) :
    ConstrainedEarthScienceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse