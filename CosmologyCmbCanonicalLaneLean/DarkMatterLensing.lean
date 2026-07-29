import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure DarkMatterLensingPackage where
  gravitationalPotential : Type u
  deflectionField : Type v
  convergenceMap : Type w
  lensingPowerSpectrum : Prop
  delensingResiduals : Prop
  matterDensityFluctuations : Prop

structure DarkMatterLensingEvidence (D : DarkMatterLensingPackage) where
  lensingPowerSpectrumClosed : D.lensingPowerSpectrum
  delensingResidualsClosed : D.delensingResiduals
  matterDensityFluctuationsClosed : D.matterDensityFluctuations

def DarkMatterLensingClosed (D : DarkMatterLensingPackage) : Prop :=
  D.lensingPowerSpectrum ∧ D.delensingResiduals ∧ D.matterDensityFluctuations

theorem dark_matter_lensing_closed_from_evidence (D : DarkMatterLensingPackage) (E : DarkMatterLensingEvidence D) : DarkMatterLensingClosed D := by
  exact And.intro E.lensingPowerSpectrumClosed (And.intro E.delensingResidualsClosed E.matterDensityFluctuationsClosed)

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse