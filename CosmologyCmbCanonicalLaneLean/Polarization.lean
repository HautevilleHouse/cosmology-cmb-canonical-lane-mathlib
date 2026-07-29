import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure PolarizationPackage where
  eModePolarization : Prop
  bModePolarization : Prop
  tensorToScalarRatio : Prop
  reionizationBump : Prop

structure PolarizationEvidence (P : PolarizationPackage) where
  eModePolarizationClosed : P.eModePolarization
  bModePolarizationClosed : P.bModePolarization
  tensorToScalarRatioClosed : P.tensorToScalarRatio
  reionizationBumpClosed : P.reionizationBump

def PolarizationClosed (P : PolarizationPackage) : Prop :=
  P.eModePolarization ∧ P.bModePolarization ∧
  P.tensorToScalarRatio ∧ P.reionizationBump

theorem polarization_closed_from_evidence (P : PolarizationPackage)
    (E : PolarizationEvidence P) : PolarizationClosed P := by
  exact And.intro E.eModePolarizationClosed
    (And.intro E.bModePolarizationClosed
      (And.intro E.tensorToScalarRatioClosed E.reionizationBumpClosed))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
