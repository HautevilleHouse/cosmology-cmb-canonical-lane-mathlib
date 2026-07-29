import HautevilleHouse.CosmologyCmbCanonicalLaneLean.CMBData

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CosmologicalPerturbationPackage (F : CMBDataPackage) where
  metricPerturbation : Type u
  fluidPerturbation : Type v
  transferFunctions : Type w
  primordialSpectrum : Type x
  linearizedEinsteinEquations : Prop
  boltzmannEquationsDerived : Prop
  transferFunctionsComputed : Prop
  primordialSpectrumInput : Prop

structure CosmologicalPerturbationEvidence {F : CMBDataPackage} (P : CosmologicalPerturbationPackage F) where
  linearizedEinsteinEquationsClosed : P.linearizedEinsteinEquations
  boltzmannEquationsDerivedClosed : P.boltzmannEquationsDerived
  transferFunctionsComputedClosed : P.transferFunctionsComputed
  primordialSpectrumInputClosed : P.primordialSpectrumInput

def CosmologicalPerturbationClosed {F : CMBDataPackage} (P : CosmologicalPerturbationPackage F) : Prop :=
  P.linearizedEinsteinEquations ∧ P.boltzmannEquationsDerived ∧ P.transferFunctionsComputed ∧ P.primordialSpectrumInput

theorem cosmological_perturbation_closed_from_evidence {F : CMBDataPackage} (P : CosmologicalPerturbationPackage F) (E : CosmologicalPerturbationEvidence P) : CosmologicalPerturbationClosed P := by
  exact And.intro E.linearizedEinsteinEquationsClosed (And.intro E.boltzmannEquationsDerivedClosed (And.intro E.transferFunctionsComputedClosed E.primordialSpectrumInputClosed))

end HautevilleHouse
end CosmologyCmbCanonicalLaneLean