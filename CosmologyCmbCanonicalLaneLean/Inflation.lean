import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure InflationPackage where
  exponentialExpansion : Prop
  quantumFluctuations : Prop
  horizonProblemSolved : Prop
  flatnessProblemSolved : Prop
  primordialPowerSpectrum : Prop

structure InflationEvidence (I : InflationPackage) where
  exponentialExpansionClosed : I.exponentialExpansion
  quantumFluctuationsClosed : I.quantumFluctuations
  horizonProblemSolvedClosed : I.horizonProblemSolved
  flatnessProblemSolvedClosed : I.flatnessProblemSolved
  primordialPowerSpectrumClosed : I.primordialPowerSpectrum

def InflationClosed (I : InflationPackage) : Prop :=
  I.exponentialExpansion ∧ I.quantumFluctuations ∧
  I.horizonProblemSolved ∧ I.flatnessProblemSolved ∧
  I.primordialPowerSpectrum

theorem inflation_closed_from_evidence (I : InflationPackage)
    (E : InflationEvidence I) : InflationClosed I := by
  exact And.intro E.exponentialExpansionClosed
    (And.intro E.quantumFluctuationsClosed
      (And.intro E.horizonProblemSolvedClosed
        (And.intro E.flatnessProblemSolvedClosed
          E.primordialPowerSpectrumClosed)))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
