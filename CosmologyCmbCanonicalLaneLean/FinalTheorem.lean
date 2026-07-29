import canonicalLaneMathlib.AdmissibleClass
import CosmologyCmbCanonicalLaneLean.CosmologicalPerturbationTheory
import CosmologyCmbCanonicalLaneLean.PowerSpectrumGeneration
import CosmologyCmbCanonicalLaneLean.AcousticOscillations
import CosmologyCmbCanonicalLaneLean.RecombinationPhysics
import CosmologyCmbCanonicalLaneLean.CMBAnalysisPipeline

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

def ConstrainedCosmologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cosmology_endgame (A : AdmissibleClass) :
    ConstrainedCosmologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
