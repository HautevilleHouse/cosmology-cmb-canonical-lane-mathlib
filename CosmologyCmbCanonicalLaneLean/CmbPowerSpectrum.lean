import HautevilleHouse.CosmologyCmbCanonicalLaneLean.CMBRecombination

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CMBPowerSpectrumPackage {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} (R : RecombinationPackage P) where
  angularPowerSpectrum : Type u
  ttSpectrum : Type v
  eeSpectrum : Type w
  teSpectrum : Type x
  boltzmannSolverIntegration : Prop
  ttSpectrumDerived : Prop
  eeSpectrumDerived : Prop
  teCrossCorrelationDerived : Prop

structure CMBPowerSpectrumEvidence {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} (Q : CMBPowerSpectrumPackage R) where
  boltzmannSolverIntegrationClosed : Q.boltzmannSolverIntegration
  ttSpectrumDerivedClosed : Q.ttSpectrumDerived
  eeSpectrumDerivedClosed : Q.eeSpectrumDerived
  teCrossCorrelationDerivedClosed : Q.teCrossCorrelationDerived

def CMBPowerSpectrumClosed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} (Q : CMBPowerSpectrumPackage R) : Prop :=
  Q.boltzmannSolverIntegration ∧ Q.ttSpectrumDerived ∧ Q.eeSpectrumDerived ∧ Q.teCrossCorrelationDerived

theorem cmb_power_spectrum_closed_from_evidence {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} (Q : CMBPowerSpectrumPackage R) (E : CMBPowerSpectrumEvidence Q) : CMBPowerSpectrumClosed Q := by
  exact And.intro E.boltzmannSolverIntegrationClosed (And.intro E.ttSpectrumDerivedClosed (And.intro E.eeSpectrumDerivedClosed E.teCrossCorrelationDerivedClosed))

end HautevilleHouse
end CosmologyCmbCanonicalLaneLean