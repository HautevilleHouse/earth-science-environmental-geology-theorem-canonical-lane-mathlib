import canonicalLaneMathlib.AdmissibleClass
import EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.StratigraphyPackage

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure GeophysicalModelingPackage where
  seismicReflectionProfiles : Prop
  gravitationalAnomalies : Prop
  magneticFieldData : Prop
  modelingAssumptions : Prop

structure GeophysicalModelingEvidence (G : GeophysicalModelingPackage) where
  seismicReflectionProfilesClosed : G.seismicReflectionProfiles
  gravitationalAnomaliesClosed : G.gravitationalAnomalies
  magneticFieldDataClosed : G.magneticFieldData
  modelingAssumptionsClosed : G.modelingAssumptions

def GeophysicalModelingClosed (G : GeophysicalModelingPackage) : Prop :=
  G.seismicReflectionProfiles ∧ G.gravitationalAnomalies ∧
  G.magneticFieldData ∧ G.modelingAssumptions

theorem geophysical_modeling_closed_from_evidence
    (G : GeophysicalModelingPackage) (E : GeophysicalModelingEvidence G) :
    GeophysicalModelingClosed G := by
  exact And.intro E.seismicReflectionProfilesClosed
    (And.intro E.gravitationalAnomaliesClosed
      (And.intro E.magneticFieldDataClosed E.modelingAssumptionsClosed))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse