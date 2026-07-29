import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean

structure ClimateForcingFeedbacksPackage where
  radiativeForcingWPerM2 : Real
  temperatureResponseK : Real
  feedbackCoeff : Real
  forcingPositive : Prop
  feedbackAmplification : Prop

structure ClimateForcingFeedbacksEvidence (C : ClimateForcingFeedbacksPackage) where
  forcingPositiveClosed : C.forcingPositive
  feedbackAmplificationClosed : C.feedbackAmplification

def ClimateForcingFeedbacksClosed (C : ClimateForcingFeedbacksPackage) : Prop :=
  C.forcingPositive ∧ C.feedbackAmplification

theorem climate_forcing_feedbacks_closed_from_evidence
    (C : ClimateForcingFeedbacksPackage) (E : ClimateForcingFeedbacksEvidence C) :
    ClimateForcingFeedbacksClosed C := by
  exact And.intro E.forcingPositiveClosed E.feedbackAmplificationClosed

end EarthScienceEnvironmentalGeologyTheoremCanonicalLaneLean
end HautevilleHouse
