import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CosmologicalParametersPackage where
  hubbleConstant : Prop
  baryonDensity : Prop
  darkMatterDensity : Prop
  darkEnergyDensity : Prop
  curvatureParameter : Prop

structure CosmologicalParametersEvidence (C : CosmologicalParametersPackage) where
  hubbleConstantClosed : C.hubbleConstant
  baryonDensityClosed : C.baryonDensity
  darkMatterDensityClosed : C.darkMatterDensity
  darkEnergyDensityClosed : C.darkEnergyDensity
  curvatureParameterClosed : C.curvatureParameter

def CosmologicalParametersClosed (C : CosmologicalParametersPackage) : Prop :=
  C.hubbleConstant ∧ C.baryonDensity ∧
  C.darkMatterDensity ∧ C.darkEnergyDensity ∧ C.curvatureParameter

theorem cosmological_parameters_closed_from_evidence
    (C : CosmologicalParametersPackage)
    (E : CosmologicalParametersEvidence C) : CosmologicalParametersClosed C := by
  exact And.intro E.hubbleConstantClosed
    (And.intro E.baryonDensityClosed
      (And.intro E.darkMatterDensityClosed
        (And.intro E.darkEnergyDensityClosed E.curvatureParameterClosed)))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
