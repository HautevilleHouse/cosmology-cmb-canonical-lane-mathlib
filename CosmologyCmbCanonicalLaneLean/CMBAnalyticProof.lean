import HautevilleHouse.CosmologyCmbCanonicalLaneLean.CMBRoute

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CMBDataAnalyticCertificate (F : CMBDataPackage) where
  cmbSpectrumObserved : Prop
  anisotropiesMeasured : Prop
  temperatureMapConstructed : Prop
  powerSpectrumComputed : Prop
  cmbSpectrumObservedClosed : cmbSpectrumObserved
  anisotropiesMeasuredClosed : anisotropiesMeasured
  temperatureMapConstructedClosed : temperatureMapConstructed
  powerSpectrumComputedClosed : powerSpectrumComputed
  dataEvidence : CMBDataEvidence F

def CMBDataAnalyticCertificateClosed {F : CMBDataPackage} (C : CMBDataAnalyticCertificate F) : Prop :=
  C.cmbSpectrumObserved ∧ C.anisotropiesMeasured ∧ C.temperatureMapConstructed ∧ C.powerSpectrumComputed ∧ CMBDataClosed F

theorem cmb_data_analytic_certificate_closed {F : CMBDataPackage} (C : CMBDataAnalyticCertificate F) : CMBDataAnalyticCertificateClosed C := by
  exact And.intro C.cmbSpectrumObservedClosed (And.intro C.anisotropiesMeasuredClosed (And.intro C.temperatureMapConstructedClosed (And.intro C.powerSpectrumComputedClosed (cmb_data_closed_from_evidence F C.dataEvidence))))

structure CosmologicalPerturbationAnalyticCertificate {F : CMBDataPackage} (P : CosmologicalPerturbationPackage F) where
  metricPerturbationLinearized : Prop
  fluidEquationsDerived : Prop
  transferFunctionsComputed : Prop
  primordialSpectrumInput : Prop
  metricPerturbationLinearizedClosed : metricPerturbationLinearized
  fluidEquationsDerivedClosed : fluidEquationsDerived
  transferFunctionsComputedClosed : transferFunctionsComputed
  primordialSpectrumInputClosed : primordialSpectrumInput
  perturbationEvidence : CosmologicalPerturbationEvidence P

def CosmologicalPerturbationAnalyticCertificateClosed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} (C : CosmologicalPerturbationAnalyticCertificate P) : Prop :=
  C.metricPerturbationLinearized ∧ C.fluidEquationsDerived ∧ C.transferFunctionsComputed ∧ C.primordialSpectrumInput ∧ CosmologicalPerturbationClosed P

theorem cosmological_perturbation_analytic_certificate_closed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} (C : CosmologicalPerturbationAnalyticCertificate P) : CosmologicalPerturbationAnalyticCertificateClosed C := by
  exact And.intro C.metricPerturbationLinearizedClosed (And.intro C.fluidEquationsDerivedClosed (And.intro C.transferFunctionsComputedClosed (And.intro C.primordialSpectrumInputClosed (cosmological_perturbation_closed_from_evidence P C.perturbationEvidence))))

structure RecombinationAnalyticCertificate {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} (R : RecombinationPackage P) where
  recombinationHistoryComputed : Prop
  visibilityFunctionDerived : Prop
  surfaceOfLastScattering : Prop
  ionizationFractionModeled : Prop
  recombinationHistoryComputedClosed : recombinationHistoryComputed
  visibilityFunctionDerivedClosed : visibilityFunctionDerived
  surfaceOfLastScatteringClosed : surfaceOfLastScattering
  ionizationFractionModeledClosed : ionizationFractionModeled
  recombinationEvidence : RecombinationEvidence R

def RecombinationAnalyticCertificateClosed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} (C : RecombinationAnalyticCertificate R) : Prop :=
  C.recombinationHistoryComputed ∧ C.visibilityFunctionDerived ∧ C.surfaceOfLastScattering ∧ C.ionizationFractionModeled ∧ RecombinationClosed R

theorem recombination_analytic_certificate_closed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} (C : RecombinationAnalyticCertificate R) : RecombinationAnalyticCertificateClosed C := by
  exact And.intro C.recombinationHistoryComputedClosed (And.intro C.visibilityFunctionDerivedClosed (And.intro C.surfaceOfLastScatteringClosed (And.intro C.ionizationFractionModeledClosed (recombination_closed_from_evidence R C.recombinationEvidence))))

structure CMBPowerSpectrumAnalyticCertificate {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} (Q : CMBPowerSpectrumPackage R) where
  angularPowerSpectrumComputed : Prop
  ttPowerSpectrumDerived : Prop
  eePowerSpectrumDerived : Prop
  teCrossCorrelationDerived : Prop
  angularPowerSpectrumComputedClosed : angularPowerSpectrumComputed
  ttPowerSpectrumDerivedClosed : ttPowerSpectrumDerived
  eePowerSpectrumDerivedClosed : eePowerSpectrumDerived
  teCrossCorrelationDerivedClosed : teCrossCorrelationDerived
  powerSpectrumEvidence : CMBPowerSpectrumEvidence Q

def CMBPowerSpectrumAnalyticCertificateClosed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} {Q : CMBPowerSpectrumPackage R} (C : CMBPowerSpectrumAnalyticCertificate Q) : Prop :=
  C.angularPowerSpectrumComputed ∧ C.ttPowerSpectrumDerived ∧ C.eePowerSpectrumDerived ∧ C.teCrossCorrelationDerived ∧ CMBPowerSpectrumClosed Q

theorem cmb_power_spectrum_analytic_certificate_closed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} {Q : CMBPowerSpectrumPackage R} (C : CMBPowerSpectrumAnalyticCertificate Q) : CMBPowerSpectrumAnalyticCertificateClosed C := by
  exact And.intro C.angularPowerSpectrumComputedClosed (And.intro C.ttPowerSpectrumDerivedClosed (And.intro C.eePowerSpectrumDerivedClosed (And.intro C.teCrossCorrelationDerivedClosed (cmb_power_spectrum_closed_from_evidence Q C.powerSpectrumEvidence))))

structure CosmologicalParameterAnalyticCertificate {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} {Q : CMBPowerSpectrumPackage R} (C : CosmologicalParameterEstimationPackage Q) where
  hubbleConstantConstrained : Prop
  darkEnergyFractionConstrained : Prop
  curvatureDensityConstrained : Prop
  spectralIndexConstrained : Prop
  hubbleConstantConstrainedClosed : hubbleConstantConstrained
  darkEnergyFractionConstrainedClosed : darkEnergyFractionConstrained
  curvatureDensityConstrainedClosed : curvatureDensityConstrained
  spectralIndexConstrainedClosed : spectralIndexConstrained
  parameterEvidence : CosmologicalParameterEstimationEvidence C

def CosmologicalParameterAnalyticCertificateClosed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} {Q : CMBPowerSpectrumPackage R} {C : CosmologicalParameterEstimationPackage Q} (S : CosmologicalParameterAnalyticCertificate C) : Prop :=
  S.hubbleConstantConstrained ∧ S.darkEnergyFractionConstrained ∧ S.curvatureDensityConstrained ∧ S.spectralIndexConstrained ∧ CosmologicalParameterEstimationClosed C

theorem cosmological_parameter_analytic_certificate_closed {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} {Q : CMBPowerSpectrumPackage R} {C : CosmologicalParameterEstimationPackage Q} (S : CosmologicalParameterAnalyticCertificate C) : CosmologicalParameterAnalyticCertificateClosed S := by
  exact And.intro S.hubbleConstantConstrainedClosed (And.intro S.darkEnergyFractionConstrainedClosed (And.intro S.curvatureDensityConstrainedClosed (And.intro S.spectralIndexConstrainedClosed (cosmological_parameter_estimation_closed_from_evidence C S.parameterEvidence))))

end HautevilleHouse
end CosmologyCmbCanonicalLaneLean