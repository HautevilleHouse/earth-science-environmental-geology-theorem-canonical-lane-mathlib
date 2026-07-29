import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure StratigraphyPackage where
  geologicalLayers : List Type
  layerBoundaries : List Prop
  fossilAssemblages : List Prop
  depositionalEnvironment : Prop

def StratigraphyClosed (S : StratigraphyPackage) : Prop :=
  S.depositionalEnvironment

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse