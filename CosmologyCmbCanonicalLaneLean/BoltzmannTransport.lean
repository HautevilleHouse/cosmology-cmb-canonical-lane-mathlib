import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure BoltzmannTransportPackage where
  collisionTerm : ℝ → ℝ
  freeStreaming : Prop
  tightCoupling : Prop
  diffusionDamping : Prop

structure BoltzmannTransportEvidence (B : BoltzmannTransportPackage) where
  freeStreamingClosed : B.freeStreaming
  tightCouplingClosed : B.tightCoupling

def BoltzmannTransportClosed (B : BoltzmannTransportPackage) : Prop :=
  B.freeStreaming ∧ B.tightCoupling ∧ B.diffusionDamping

theorem boltzmann_transport_closed_from_evidence (B : BoltzmannTransportPackage) (E : BoltzmannTransportEvidence B) :
    BoltzmannTransportClosed B := by
  exact And.intro E.freeStreamingClosed (And.intro E.tightCouplingClosed B.diffusionDamping)

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse