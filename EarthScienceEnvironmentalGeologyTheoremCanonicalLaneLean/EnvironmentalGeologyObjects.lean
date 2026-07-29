import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure GeologicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FieldObservation where
  site : GeologicalSpace
  measurementType : Type
  measuredValue : measurementType
  timestamp : ℕ

structure EarthScienceAdmittedObject where
  space : GeologicalSpace
  fieldObservations : List FieldObservation
  hypothesis : Prop
  conclusion : Prop

structure EarthScienceEndgameState where
  object : EarthScienceAdmittedObject

def EarthScienceWitnessClosed (O : EarthScienceAdmittedObject) : Prop :=
  O.hypothesis → O.conclusion

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse
