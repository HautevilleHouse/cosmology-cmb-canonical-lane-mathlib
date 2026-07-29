import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure InflationaryInitialConditionsPackage where
  inflatonField : Type u
  potential : Type v
  slowRollParameters : Type w
  quantumFluctuations : Prop
  nearlyScaleInvariantSpectrum : Prop
  gaussianity : Prop

structure InflationaryInitialConditionsEvidence (I : InflationaryInitialConditionsPackage) where
  quantumFluctuationsClosed : I.quantumFluctuations
  nearlyScaleInvariantSpectrumClosed : I.nearlyScaleInvariantSpectrum
  gaussianityClosed : I.gaussianity

def InflationaryInitialConditionsClosed (I : InflationaryInitialConditionsPackage) : Prop :=
  I.quantumFluctuations ∧ I.nearlyScaleInvariantSpectrum ∧ I.gaussianity

theorem inflationary_initial_conditions_closed_from_evidence (I : InflationaryInitialConditionsPackage) (E : InflationaryInitialConditionsEvidence I) : InflationaryInitialConditionsClosed I := by
  exact And.intro E.quantumFluctuationsClosed (And.intro E.nearlyScaleInvariantSpectrumClosed E.gaussianityClosed)

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse