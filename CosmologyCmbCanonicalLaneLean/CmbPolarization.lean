import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CmbPolarizationPackage where
  eModePolarization : Type u
  bModePolarization : Type v
  tensorToScalarRatio : Type w
  primordialGravitationalWaves : Prop
  eModeDetection : Prop
  bModeDetection : Prop

structure CmbPolarizationEvidence (P : CmbPolarizationPackage) where
  primordialGravitationalWavesClosed : P.primordialGravitationalWaves
  eModeDetectionClosed : P.eModeDetection
  bModeDetectionClosed : P.bModeDetection

def CmbPolarizationClosed (P : CmbPolarizationPackage) : Prop :=
  P.primordialGravitationalWaves ∧ P.eModeDetection ∧ P.bModeDetection

theorem cmb_polarization_closed_from_evidence (P : CmbPolarizationPackage) (E : CmbPolarizationEvidence P) : CmbPolarizationClosed P := by
  exact And.intro E.primordialGravitationalWavesClosed (And.intro E.eModeDetectionClosed E.bModeDetectionClosed)

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse