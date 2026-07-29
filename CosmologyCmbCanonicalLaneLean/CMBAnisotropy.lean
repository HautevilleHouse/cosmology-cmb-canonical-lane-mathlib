import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyCmbCanonicalLaneLean

structure CMBAnisotropyPackage where
  angularScale : ℝ
  soundHorizon : ℝ
  acousticPeaks : Prop
  dampingTail : Prop
  polarization : Prop

structure CMBAnisotropyEvidence (A : CMBAnisotropyPackage) where
  angularScaleClosed : A.angularScale = 0.010410
  soundHorizonClosed : A.soundHorizon = 147.21
  acousticPeaksClosed : A.acousticPeaks
  dampingTailClosed : A.dampingTail
  polarizationClosed : A.polarization

def CMBAnisotropyClosed (A : CMBAnisotropyPackage) : Prop :=
  A.angularScale = 0.010410 ∧ A.soundHorizon = 147.21 ∧
  A.acousticPeaks ∧ A.dampingTail ∧ A.polarization

theorem cmb_anisotropy_closed_from_evidence
    (A : CMBAnisotropyPackage) (E : CMBAnisotropyEvidence A) :
    CMBAnisotropyClosed A := by
  exact And.intro E.angularScaleClosed
    (And.intro E.soundHorizonClosed
      (And.intro E.acousticPeaksClosed
        (And.intro E.dampingTailClosed E.polarizationClosed)))

end CosmologyCmbCanonicalLaneLean
end HautevilleHouse
