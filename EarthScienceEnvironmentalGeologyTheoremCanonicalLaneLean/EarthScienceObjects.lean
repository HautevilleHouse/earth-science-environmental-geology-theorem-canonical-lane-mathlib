import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure EarthScienceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EarthScienceAdmittedObject where
  space : EarthScienceSpace
  geologyModel : Prop
  environmentalDataCollected : Prop
  modelValid : Prop
  conclusion : modelValid

structure EarthScienceEndgameState where
  object : EarthScienceAdmittedObject

def EarthScienceWitnessClosed (O : EarthScienceAdmittedObject) : Prop :=
  O.modelValid

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse