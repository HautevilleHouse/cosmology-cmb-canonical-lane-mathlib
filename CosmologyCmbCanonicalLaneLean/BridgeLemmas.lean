import CosmologyCmbCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CosmologyCmbWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
