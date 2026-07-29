import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EarthEndgameState where
  object : EarthAdmittedObject

def earthProjection : Projection EarthEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem earth_projection_idempotent (x : EarthEndgameState) :
    earthProjection.toFun (earthProjection.toFun x) = earthProjection.toFun x := by
  exact earthProjection.idempotent x

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse