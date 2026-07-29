import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.TectonicPackage

/-!
# Geomorphology Package
-/

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure GeomorphologyPackage (T : TectonicPackage) where
  erosionProcesses : Prop
  sedimentationRates : Prop
  landformEvolution : Prop
  topographicAnalysis : Prop

def GeomorphologyClosed (T : TectonicPackage) (G : GeomorphologyPackage T) : Prop :=
  G.erosionProcesses ∧ G.sedimentationRates ∧ G.landformEvolution ∧ G.topographicAnalysis

theorem geomorphology_closed (T : TectonicPackage) (G : GeomorphologyPackage T) (E : 
    G.erosionProcesses ∧ G.sedimentationRates ∧ G.landformEvolution ∧ G.topographicAnalysis) :
    GeomorphologyClosed T G := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 E.2.2.2))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse