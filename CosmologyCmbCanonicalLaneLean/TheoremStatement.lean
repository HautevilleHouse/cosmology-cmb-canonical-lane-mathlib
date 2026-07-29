import CosmologyCmbCanonicalLaneLean.BridgeLemmas
import CosmologyCmbCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CosmologyCmbTheoremStatement where
  cmbSpectrumConsistent : Prop
  cmbAnisotropyConstrained : Prop
  cosmologicalModelCompatible : Prop
  cmbEndgameReached : Prop

def theoremStatementClosed (T : CosmologyCmbTheoremStatement) : Prop :=
  T.cmbSpectrumConsistent ∧ T.cmbAnisotropyConstrained ∧
  T.cosmologicalModelCompatible ∧ T.cmbEndgameReached

theorem theorem_statement_from_given (T : CosmologyCmbTheoremStatement) :
    theoremStatementClosed T := by
  exact And.intro T.cmbSpectrumConsistent
    (And.intro T.cmbAnisotropyConstrained
      (And.intro T.cosmologicalModelCompatible T.cmbEndgameReached))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
