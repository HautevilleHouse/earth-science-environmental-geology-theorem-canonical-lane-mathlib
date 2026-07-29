import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure ErosionSedimentTransportPackage where
  erosionRateMgPerYear : Real
  sedimentFluxMgPerYear : Real
  depositionRateMgPerYear : Real
  massBalanceEq : Prop

def ErosionSedimentTransportClosed (E : ErosionSedimentTransportPackage) : Prop :=
  E.massBalanceEq

theorem mass_balance_closed_from_evidence
    (E : ErosionSedimentTransportPackage) (h : E.massBalanceEq) :
    ErosionSedimentTransportClosed E := by
  exact h

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse
