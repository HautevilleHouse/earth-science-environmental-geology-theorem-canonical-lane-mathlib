import HautevilleHouse.EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  earthScienceConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "earth-science-environmental-geology-canonical-lane",
    theoremName := "Earth Science Environmental Geology Theorem",
    theoremObject := "Earth Science Environmental Geology Theorem",
    classicalBoundary := "classical boundary carried",
    earthScienceConstrainedStatement := "earth-science-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "earth_science_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse