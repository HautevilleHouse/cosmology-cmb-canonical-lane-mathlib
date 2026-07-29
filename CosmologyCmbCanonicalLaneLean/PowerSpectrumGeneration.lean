import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure PowerSpectrumGenerationPackage where
  inflationFields : Type u
  quantumVacuumInit : Prop
  modeEvolution : Prop
  freezeHorizon : Prop
  lateTimeSpectrum : Prop

structure PowerSpectrumGenerationEvidence (S : PowerSpectrumGenerationPackage) where
  quantumVacuumInitClosed : S.quantumVacuumInit
  modeEvolutionClosed : S.modeEvolution
  freezeHorizonClosed : S.freezeHorizon
  lateTimeSpectrumClosed : S.lateTimeSpectrum

def PowerSpectrumGenerationClosed (S : PowerSpectrumGenerationPackage) : Prop :=
  S.quantumVacuumInit ∧ S.modeEvolution ∧ S.freezeHorizon ∧ S.lateTimeSpectrum

theorem power_spectrum_generation_closed_from_evidence
    (S : PowerSpectrumGenerationPackage) (E : PowerSpectrumGenerationEvidence S) :
    PowerSpectrumGenerationClosed S := by
  exact And.intro E.quantumVacuumInitClosed
    (And.intro E.modeEvolutionClosed
      (And.intro E.freezeHorizonClosed E.lateTimeSpectrumClosed))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
