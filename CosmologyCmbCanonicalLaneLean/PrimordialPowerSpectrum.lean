import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure PrimordialPowerSpectrumPackage where
  scalarSpectralIndex : ℝ
  tensorToScalarRatio : ℝ
  inflationModel : Prop
  scaleInvariance : Prop

structure PrimordialPowerSpectrumEvidence (P : PrimordialPowerSpectrumPackage) where
  inflationModelClosed : P.inflationModel
  scaleInvarianceClosed : P.scaleInvariance

def PrimordialPowerSpectrumClosed (P : PrimordialPowerSpectrumPackage) : Prop :=
  P.inflationModel ∧ P.scaleInvariance

theorem primordial_power_spectrum_closed_from_evidence (P : PrimordialPowerSpectrumPackage) (E : PrimordialPowerSpectrumEvidence P) :
    PrimordialPowerSpectrumClosed P := by
  exact And.intro E.inflationModelClosed E.scaleInvarianceClosed

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse