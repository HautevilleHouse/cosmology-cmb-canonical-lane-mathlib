import CosmologyCmbCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure AdmissibleClass where
  object : CosmologyCmbAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CosmologyCmbWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
