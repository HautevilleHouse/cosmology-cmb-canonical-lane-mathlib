import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CosmologicalPerturbationPackage where
  backgroundMetric : Type u
  scalarPerturbation : Type v
  vectorPerturbation : Type w
  tensorPerturbation : Type x
  gaugeInvariantVariables : Prop
  evolutionEquations : Prop

structure CosmologicalPerturbationEvidence (P : CosmologicalPerturbationPackage) where
  gaugeInvariantVariablesClosed : P.gaugeInvariantVariables
  evolutionEquationsClosed : P.evolutionEquations

def CosmologicalPerturbationClosed (P : CosmologicalPerturbationPackage) : Prop :=
  P.gaugeInvariantVariables ∧ P.evolutionEquations

theorem cosmological_perturbation_closed_from_evidence
    (P : CosmologicalPerturbationPackage) (E : CosmologicalPerturbationEvidence P) :
    CosmologicalPerturbationClosed P := by
  exact And.intro E.gaugeInvariantVariablesClosed E.evolutionEquationsClosed

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
