import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure PaleoclimateProxyPackage where
  isotopeRecords : Prop
  iceCoreData : Prop
  sedimentCoreData : Prop
  treeRingData : Prop

structure PaleoclimateProxyEvidence (P : PaleoclimateProxyPackage) where
  isotopeRecordsClosed : P.isotopeRecords
  iceCoreDataClosed : P.iceCoreData
  sedimentCoreDataClosed : P.sedimentCoreData
  treeRingDataClosed : P.treeRingData

def PaleoclimateProxyClosed (P : PaleoclimateProxyPackage) : Prop :=
  P.isotopeRecords ∧ P.iceCoreData ∧ P.sedimentCoreData ∧ P.treeRingData

theorem paleoclimate_proxy_closed_from_evidence (P : PaleoclimateProxyPackage) (E : PaleoclimateProxyEvidence P) : PaleoclimateProxyClosed P := by
  exact And.intro E.isotopeRecordsClosed (And.intro E.iceCoreDataClosed (And.intro E.sedimentCoreDataClosed E.treeRingDataClosed))

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse