import HautevilleHouse.CosmologyCmbCanonicalLaneLean.CMBAnalyticProof

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CMBDataAnalyticEvidenceTerms {F : CMBDataPackage} (C : CMBDataAnalyticCertificate F) where
  cmbSpectrumObserved : C.cmbSpectrumObserved
  anisotropiesMeasured : C.anisotropiesMeasured
  temperatureMapConstructed : C.temperatureMapConstructed
  powerSpectrumComputed : C.powerSpectrumComputed
  dataClosed : CMBDataClosed F

def CMBDataAnalyticCertificate.evidenceTerms {F : CMBDataPackage} (C : CMBDataAnalyticCertificate F) : CMBDataAnalyticEvidenceTerms C :=
  {
    cmbSpectrumObserved := C.cmbSpectrumObservedClosed
    anisotropiesMeasured := C.anisotropiesMeasuredClosed
    temperatureMapConstructed := C.temperatureMapConstructedClosed
    powerSpectrumComputed := C.powerSpectrumComputedClosed
    dataClosed := cmb_data_closed_from_evidence F C.dataEvidence
  }

structure CosmologicalPerturbationEvidenceTerms {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} (C : CosmologicalPerturbationAnalyticCertificate P) where
  metricPerturbationLinearized : C.metricPerturbationLinearized
  fluidEquationsDerived : C.fluidEquationsDerived
  transferFunctionsComputed : C.transferFunctionsComputed
  primordialSpectrumInput : C.primordialSpectrumInput
  perturbationClosed : CosmologicalPerturbationClosed P

def CosmologicalPerturbationAnalyticCertificate.evidenceTerms {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} (C : CosmologicalPerturbationAnalyticCertificate P) : CosmologicalPerturbationEvidenceTerms C :=
  {
    metricPerturbationLinearized := C.metricPerturbationLinearizedClosed
    fluidEquationsDerived := C.fluidEquationsDerivedClosed
    transferFunctionsComputed := C.transferFunctionsComputedClosed
    primordialSpectrumInput := C.primordialSpectrumInputClosed
    perturbationClosed := cosmological_perturbation_closed_from_evidence P C.perturbationEvidence
  }

structure RecombinationEvidenceTerms {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} (C : RecombinationAnalyticCertificate R) where
  recombinationHistoryComputed : C.recombinationHistoryComputed
  visibilityFunctionDerived : C.visibilityFunctionDerived
  surfaceOfLastScattering : C.surfaceOfLastScattering
  ionizationFractionModeled : C.ionizationFractionModeled
  recombinationClosed : RecombinationClosed R

def RecombinationAnalyticCertificate.evidenceTerms {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} (C : RecombinationAnalyticCertificate R) : RecombinationEvidenceTerms C :=
  {
    recombinationHistoryComputed := C.recombinationHistoryComputedClosed
    visibilityFunctionDerived := C.visibilityFunctionDerivedClosed
    surfaceOfLastScattering := C.surfaceOfLastScatteringClosed
    ionizationFractionModeled := C.ionizationFractionModeledClosed
    recombinationClosed := recombination_closed_from_evidence R C.recombinationEvidence
  }

structure CMBPowerSpectrumEvidenceTerms {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} {Q : CMBPowerSpectrumPackage R} (C : CMBPowerSpectrumAnalyticCertificate Q) where
  angularPowerSpectrumComputed : C.angularPowerSpectrumComputed
  ttPowerSpectrumDerived : C.ttPowerSpectrumDerived
  eePowerSpectrumDerived : C.eePowerSpectrumDerived
  teCrossCorrelationDerived : C.teCrossCorrelationDerived
  powerSpectrumClosed : CMBPowerSpectrumClosed Q

def CMBPowerSpectrumAnalyticCertificate.evidenceTerms {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} {Q : CMBPowerSpectrumPackage R} (C : CMBPowerSpectrumAnalyticCertificate Q) : CMBPowerSpectrumEvidenceTerms C :=
  {
    angularPowerSpectrumComputed := C.angularPowerSpectrumComputedClosed
    ttPowerSpectrumDerived := C.ttPowerSpectrumDerivedClosed
    eePowerSpectrumDerived := C.eePowerSpectrumDerivedClosed
    teCrossCorrelationDerived := C.teCrossCorrelationDerivedClosed
    powerSpectrumClosed := cmb_power_spectrum_closed_from_evidence Q C.powerSpectrumEvidence
  }

structure CosmologicalParameterEvidenceTerms {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} {Q : CMBPowerSpectrumPackage R} {C : CosmologicalParameterEstimationPackage Q} (S : CosmologicalParameterAnalyticCertificate C) where
  hubbleConstantConstrained : S.hubbleConstantConstrained
  darkEnergyFractionConstrained : S.darkEnergyFractionConstrained
  curvatureDensityConstrained : S.curvatureDensityConstrained
  spectralIndexConstrained : S.spectralIndexConstrained
  parameterEstimationClosed : CosmologicalParameterEstimationClosed C

def CosmologicalParameterAnalyticCertificate.evidenceTerms {F : CMBDataPackage} {P : CosmologicalPerturbationPackage F} {R : RecombinationPackage P} {Q : CMBPowerSpectrumPackage R} {C : CosmologicalParameterEstimationPackage Q} (S : CosmologicalParameterAnalyticCertificate C) : CosmologicalParameterEvidenceTerms S :=
  {
    hubbleConstantConstrained := S.hubbleConstantConstrainedClosed
    darkEnergyFractionConstrained := S.darkEnergyFractionConstrainedClosed
    curvatureDensityConstrained := S.curvatureDensityConstrainedClosed
    spectralIndexConstrained := S.spectralIndexConstrainedClosed
    parameterEstimationClosed := cosmological_parameter_estimation_closed_from_evidence C S.parameterEvidence
  }

end HautevilleHouse
end CosmologyCmbCanonicalLaneLean