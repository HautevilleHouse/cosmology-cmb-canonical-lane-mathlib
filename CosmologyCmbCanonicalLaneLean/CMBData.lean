import HautevilleHouse.CosmologyCmbCanonicalLaneLean.CMBPerturbation

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CMBDataPackage where
  cmbSpectrum : Type u
  temperatureMap : Type v
  powerSpectrum : Type w
  observedBlackbodySpectrum : Prop
  anisotropiesDetected : Prop
  temperatureMapConstructed : Prop
  powerSpectrumComputed : Prop

structure CMBDataEvidence (F : CMBDataPackage) where
  observedBlackbodySpectrumClosed : F.observedBlackbodySpectrum
  anisotropiesDetectedClosed : F.anisotropiesDetected
  temperatureMapConstructedClosed : F.temperatureMapConstructed
  powerSpectrumComputedClosed : F.powerSpectrumComputed

def CMBDataClosed (F : CMBDataPackage) : Prop :=
  F.observedBlackbodySpectrum ∧ F.anisotropiesDetected ∧ F.temperatureMapConstructed ∧ F.powerSpectrumComputed

theorem cmb_data_closed_from_evidence (F : CMBDataPackage) (E : CMBDataEvidence F) : CMBDataClosed F := by
  exact And.intro E.observedBlackbodySpectrumClosed (And.intro E.anisotropiesDetectedClosed (And.intro E.temperatureMapConstructedClosed E.powerSpectrumComputedClosed))

end HautevilleHouse
end CosmologyCmbCanonicalLaneLean