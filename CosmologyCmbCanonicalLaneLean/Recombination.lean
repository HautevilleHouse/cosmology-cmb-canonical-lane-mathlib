import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure RecombinationPackage where
  recombinationHistory : Prop
  visibilityFunction : Prop
  surfaceOfLastScattering : Prop
  decouplingEpoch : Prop

structure RecombinationEvidence (R : RecombinationPackage) where
  recombinationHistoryClosed : R.recombinationHistory
  visibilityFunctionClosed : R.visibilityFunction
  surfaceOfLastScatteringClosed : R.surfaceOfLastScattering
  decouplingEpochClosed : R.decouplingEpoch

def RecombinationClosed (R : RecombinationPackage) : Prop :=
  R.recombinationHistory ∧ R.visibilityFunction ∧
  R.surfaceOfLastScattering ∧ R.decouplingEpoch

theorem recombination_closed_from_evidence (R : RecombinationPackage)
    (E : RecombinationEvidence R) : RecombinationClosed R := by
  exact And.intro E.recombinationHistoryClosed
    (And.intro E.visibilityFunctionClosed
      (And.intro E.surfaceOfLastScatteringClosed E.decouplingEpochClosed))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
