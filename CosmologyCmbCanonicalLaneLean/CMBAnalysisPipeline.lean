import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CMBAnalysisPackage where
  temperatureAnisotropy : Type u
  polarizationMaps : Type v
  componentSeparation : Prop
  powerSpectrumEstimation : Prop
  cosmologicalParameterInference : Prop

structure CMBAnalysisEvidence (C : CMBAnalysisPackage) where
  componentSeparationClosed : C.componentSeparation
  powerSpectrumEstimationClosed : C.powerSpectrumEstimation
  cosmologicalParameterInferenceClosed : C.cosmologicalParameterInference

def CMBAnalysisClosed (C : CMBAnalysisPackage) : Prop :=
  C.componentSeparation ∧ C.powerSpectrumEstimation ∧ C.cosmologicalParameterInference

theorem cmb_analysis_closed_from_evidence
    (C : CMBAnalysisPackage) (E : CMBAnalysisEvidence C) :
    CMBAnalysisClosed C := by
  exact And.intro E.componentSeparationClosed
    (And.intro E.powerSpectrumEstimationClosed E.cosmologicalParameterInferenceClosed)

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
