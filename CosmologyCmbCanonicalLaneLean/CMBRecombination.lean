import HautevilleHouse.CosmologyCmbCanonicalLaneLean.CMBPerturbation

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure RecombinationPackage {F : CMBDataPackage} (P : CosmologicalPerturbationPackage F) where
  recombinationHistory : Type u
  visibilityFunction : Type v
  surfaceOfLastScattering : Prop
  ionizationFraction : Prop
  sahaEquationSolved : Prop
  recfastModelUsed : Prop
  visibilityFunctionDerived : Prop
  surfaceOfLastScatteringIdentified : Prop

structure RecombinationEvidence {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} (R : RecombinationPackage P) where
  sahaEquationSolvedClosed : R.sahaEquationSolved
  recfastModelUsedClosed : R.recfastModelUsed
  visibilityFunctionDerivedClosed : R.visibilityFunctionDerived
  surfaceOfLastScatteringIdentifiedClosed : R.surfaceOfLastScatteringIdentified

def RecombinationClosed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} (R : RecombinationPackage P) : Prop :=
  R.sahaEquationSolved ∧ R.recfastModelUsed ∧ R.visibilityFunctionDerived ∧ R.surfaceOfLastScatteringIdentified

theorem recombination_closed_from_evidence {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} (R : RecombinationPackage P) (E : RecombinationEvidence R) : RecombinationClosed R := by
  exact And.intro E.sahaEquationSolvedClosed (And.intro E.recfastModelUsedClosed (And.intro E.visibilityFunctionDerivedClosed E.surfaceOfLastScatteringIdentifiedClosed))

end HautevilleHouse
end CosmologyCmbCanonicalLaneLean