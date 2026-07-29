import HautevilleHouse.CosmologyCmbCanonicalLaneLean.CMBAnalyticEvidenceTerms

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CMBDataFoundationalInhabitants where
  cmbSpectrumObserved : Prop
  anisotropiesMeasured : Prop
  temperatureMapConstructed : Prop
  powerSpectrumComputed : Prop
  cmbSpectrumObservedTerm : cmbSpectrumObserved
  anisotropiesMeasuredTerm : anisotropiesMeasured
  temperatureMapConstructedTerm : temperatureMapConstructed
  powerSpectrumComputedTerm : powerSpectrumComputed

structure PerturbationFoundationalInhabitants where
  metricPerturbationLinearized : Prop
  fluidEquationsDerived : Prop
  transferFunctionsComputed : Prop
  primordialSpectrumInput : Prop
  metricPerturbationLinearizedTerm : metricPerturbationLinearized
  fluidEquationsDerivedTerm : fluidEquationsDerived
  transferFunctionsComputedTerm : transferFunctionsComputed
  primordialSpectrumInputTerm : primordialSpectrumInput

structure RecombinationFoundationalInhabitants where
  recombinationHistoryComputed : Prop
  visibilityFunctionDerived : Prop
  surfaceOfLastScattering : Prop
  ionizationFractionModeled : Prop
  recombinationHistoryComputedTerm : recombinationHistoryComputed
  visibilityFunctionDerivedTerm : visibilityFunctionDerived
  surfaceOfLastScatteringTerm : surfaceOfLastScattering
  ionizationFractionModeledTerm : ionizationFractionModeled

structure CMBPowerSpectrumFoundationalInhabitants where
  angularPowerSpectrumComputed : Prop
  ttPowerSpectrumDerived : Prop
  eePowerSpectrumDerived : Prop
  teCrossCorrelationDerived : Prop
  angularPowerSpectrumComputedTerm : angularPowerSpectrumComputed
  ttPowerSpectrumDerivedTerm : ttPowerSpectrumDerived
  eePowerSpectrumDerivedTerm : eePowerSpectrumDerived
  teCrossCorrelationDerivedTerm : teCrossCorrelationDerived

structure ParameterEstimationFoundationalInhabitants where
  hubbleConstantConstrained : Prop
  darkEnergyFractionConstrained : Prop
  curvatureDensityConstrained : Prop
  spectralIndexConstrained : Prop
  hubbleConstantConstrainedTerm : hubbleConstantConstrained
  darkEnergyFractionConstrainedTerm : darkEnergyFractionConstrained
  curvatureDensityConstrainedTerm : curvatureDensityConstrained
  spectralIndexConstrainedTerm : spectralIndexConstrained

structure CMBFoundationalTheoremInhabitants where
  data : CMBDataFoundationalInhabitants
  perturbation : PerturbationFoundationalInhabitants
  recombination : RecombinationFoundationalInhabitants
  powerSpectrum : CMBPowerSpectrumFoundationalInhabitants
  parameterEstimation : ParameterEstimationFoundationalInhabitants

def CMBFoundationalTheoremInhabitants.toAnalyticProofCertificate (A : CMBRayleighAnalyticFoundation) (T : CMBFoundationalTheoremInhabitants) : CMBRayleighAnalyticProofCertificate A :=
  {
    data := {
      cmbSpectrumObserved := T.data.cmbSpectrumObserved
      anisotropiesMeasured := T.data.anisotropiesMeasured
      temperatureMapConstructed := T.data.temperatureMapConstructed
      powerSpectrumComputed := T.data.powerSpectrumComputed
      cmbSpectrumObservedClosed := T.data.cmbSpectrumObservedTerm
      anisotropiesMeasuredClosed := T.data.anisotropiesMeasuredTerm
      temperatureMapConstructedClosed := T.data.temperatureMapConstructedTerm
      powerSpectrumComputedClosed := T.data.powerSpectrumComputedTerm
      dataEvidence := A.dataEvidence
    }
    perturbation := {
      metricPerturbationLinearized := T.perturbation.metricPerturbationLinearized
      fluidEquationsDerived := T.perturbation.fluidEquationsDerived
      transferFunctionsComputed := T.perturbation.transferFunctionsComputed
      primordialSpectrumInput := T.perturbation.primordialSpectrumInput
      metricPerturbationLinearizedClosed := T.perturbation.metricPerturbationLinearizedTerm
      fluidEquationsDerivedClosed := T.perturbation.fluidEquationsDerivedTerm
      transferFunctionsComputedClosed := T.perturbation.transferFunctionsComputedTerm
      primordialSpectrumInputClosed := T.perturbation.primordialSpectrumInputTerm
      perturbationEvidence := A.perturbationEvidence
    }
    recombination := {
      recombinationHistoryComputed := T.recombination.recombinationHistoryComputed
      visibilityFunctionDerived := T.recombination.visibilityFunctionDerived
      surfaceOfLastScattering := T.recombination.surfaceOfLastScattering
      ionizationFractionModeled := T.recombination.ionizationFractionModeled
      recombinationHistoryComputedClosed := T.recombination.recombinationHistoryComputedTerm
      visibilityFunctionDerivedClosed := T.recombination.visibilityFunctionDerivedTerm
      surfaceOfLastScatteringClosed := T.recombination.surfaceOfLastScatteringTerm
      ionizationFractionModeledClosed := T.recombination.ionizationFractionModeledTerm
      recombinationEvidence := A.recombinationEvidence
    }
    powerSpectrum := {
      angularPowerSpectrumComputed := T.powerSpectrum.angularPowerSpectrumComputed
      ttPowerSpectrumDerived := T.powerSpectrum.ttPowerSpectrumDerived
      eePowerSpectrumDerived := T.powerSpectrum.eePowerSpectrumDerived
      teCrossCorrelationDerived := T.powerSpectrum.teCrossCorrelationDerived
      angularPowerSpectrumComputedClosed := T.powerSpectrum.angularPowerSpectrumComputedTerm
      ttPowerSpectrumDerivedClosed := T.powerSpectrum.ttPowerSpectrumDerivedTerm
      eePowerSpectrumDerivedClosed := T.powerSpectrum.eePowerSpectrumDerivedTerm
      teCrossCorrelationDerivedClosed := T.powerSpectrum.teCrossCorrelationDerivedTerm
      powerSpectrumEvidence := A.powerSpectrumEvidence
    }
    parameterEstimation := {
      hubbleConstantConstrained := T.parameterEstimation.hubbleConstantConstrained
      darkEnergyFractionConstrained := T.parameterEstimation.darkEnergyFractionConstrained
      curvatureDensityConstrained := T.parameterEstimation.curvatureDensityConstrained
      spectralIndexConstrained := T.parameterEstimation.spectralIndexConstrained
      hubbleConstantConstrainedClosed := T.parameterEstimation.hubbleConstantConstrainedTerm
      darkEnergyFractionConstrainedClosed := T.parameterEstimation.darkEnergyFractionConstrainedTerm
      curvatureDensityConstrainedClosed := T.parameterEstimation.curvatureDensityConstrainedTerm
      spectralIndexConstrainedClosed := T.parameterEstimation.spectralIndexConstrainedTerm
      parameterEvidence := A.parameterEvidence
    }
  }

end HautevilleHouse
end CosmologyCmbCanonicalLaneLean