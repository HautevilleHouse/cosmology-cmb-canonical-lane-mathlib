import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure RecombinationHistoryPackage where
  redshiftRecombination : ℝ
  ionizationFraction : ℝ → ℝ
  recombinationModel : Prop
  decouplingApproximated : Prop

structure RecombinationHistoryEvidence (R : RecombinationHistoryPackage) where
  recombinationModelClosed : R.recombinationModel
  decouplingApproximatedClosed : R.decouplingApproximated

def RecombinationHistoryClosed (R : RecombinationHistoryPackage) : Prop :=
  R.recombinationModel ∧ R.decouplingApproximated

theorem recombination_history_closed_from_evidence (R : RecombinationHistoryPackage) (E : RecombinationHistoryEvidence R) :
    RecombinationHistoryClosed R := by
  exact And.intro E.recombinationModelClosed E.decouplingApproximatedClosed

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse