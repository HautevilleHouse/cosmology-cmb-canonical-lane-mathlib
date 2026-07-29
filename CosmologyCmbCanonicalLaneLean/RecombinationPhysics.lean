import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure RecombinationPackage where
  ionizationHistory : Type u
  sahaEquation : Prop
  peeblesRecombination : Prop
  visibilityFunction : Prop
  lastScatteringSurface : Prop

structure RecombinationEvidence (R : RecombinationPackage) where
  sahaEquationClosed : R.sahaEquation
  peeblesRecombinationClosed : R.peeblesRecombination
  visibilityFunctionClosed : R.visibilityFunction
  lastScatteringSurfaceClosed : R.lastScatteringSurface

def RecombinationClosed (R : RecombinationPackage) : Prop :=
  R.sahaEquation ∧ R.peeblesRecombination ∧ R.visibilityFunction ∧ R.lastScatteringSurface

theorem recombination_closed_from_evidence
    (R : RecombinationPackage) (E : RecombinationEvidence R) :
    RecombinationClosed R := by
  exact And.intro E.sahaEquationClosed
    (And.intro E.peeblesRecombinationClosed
      (And.intro E.visibilityFunctionClosed E.lastScatteringSurfaceClosed))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
