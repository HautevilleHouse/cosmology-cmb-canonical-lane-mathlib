import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CmbSpectrumPackage where
  temperature : ℝ
  blackbodySpectrum : Prop
  anisotropyMap : Type u
  angularPowerSpectrum : Prop
  primordialPowerSpectrum : Prop
  transferFunctions : Prop

structure CmbSpectrumEvidence (P : CmbSpectrumPackage) where
  temperatureClosed : P.temperature = 2.72548
  blackbodySpectrumClosed : P.blackbodySpectrum
  angularPowerSpectrumClosed : P.angularPowerSpectrum
  primordialPowerSpectrumClosed : P.primordialPowerSpectrum
  transferFunctionsClosed : P.transferFunctions

def CmbSpectrumClosed (P : CmbSpectrumPackage) : Prop :=
  P.temperature = 2.72548 ∧ P.blackbodySpectrum ∧
  P.angularPowerSpectrum ∧ P.primordialPowerSpectrum ∧
  P.transferFunctions

theorem cmb_spectrum_closed_from_evidence
    (P : CmbSpectrumPackage) (E : CmbSpectrumEvidence P) :
    CmbSpectrumClosed P := by
  exact And.intro E.temperatureClosed
    (And.intro E.blackbodySpectrumClosed
      (And.intro E.angularPowerSpectrumClosed
        (And.intro E.primordialPowerSpectrumClosed
          E.transferFunctionsClosed)))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
