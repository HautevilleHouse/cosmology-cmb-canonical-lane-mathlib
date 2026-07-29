import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure AcousticOscillationPackage where
  baryonPhotonFluid : Type u
  soundSpeed : Prop
  dampingScale : Prop
  drivingEffect : Prop
  transferFunction : Prop

structure AcousticOscillationEvidence (A : AcousticOscillationPackage) where
  soundSpeedClosed : A.soundSpeed
  dampingScaleClosed : A.dampingScale
  drivingEffectClosed : A.drivingEffect
  transferFunctionClosed : A.transferFunction

def AcousticOscillationClosed (A : AcousticOscillationPackage) : Prop :=
  A.soundSpeed ∧ A.dampingScale ∧ A.drivingEffect ∧ A.transferFunction

theorem acoustic_oscillation_closed_from_evidence
    (A : AcousticOscillationPackage) (E : AcousticOscillationEvidence A) :
    AcousticOscillationClosed A := by
  exact And.intro E.soundSpeedClosed
    (And.intro E.dampingScaleClosed
      (And.intro E.drivingEffectClosed E.transferFunctionClosed))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
