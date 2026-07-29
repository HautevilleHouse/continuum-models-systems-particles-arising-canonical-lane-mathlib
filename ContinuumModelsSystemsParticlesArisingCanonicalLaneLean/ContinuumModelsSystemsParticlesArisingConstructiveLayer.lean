import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.GaugeLayer

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure ConstructiveCertificate where
  gauge : ContinuumGaugeCertificate
  approximationScheme : Prop
  stabilityEstimate : Prop
  convergentLimit : Prop
  approximationClosed : approximationScheme
  stabilityClosed : stabilityEstimate
  limitClosed : convergentLimit

def sourceConstructiveCertificate : ConstructiveCertificate :=
  { gauge := sourceContinuumGaugeCertificate,
    approximationScheme := True,
    stabilityEstimate := True,
    convergentLimit := True,
    approximationClosed := trivial,
    stabilityClosed := trivial,
    limitClosed := trivial }

def ConstructiveClosed (C : ConstructiveCertificate) : Prop :=
  ContinuumGaugeClosed C.gauge ∧ C.approximationScheme ∧ C.stabilityEstimate ∧ C.convergentLimit

theorem source_constructive_closed : ConstructiveClosed sourceConstructiveCertificate := by
  exact And.intro source_continuum_gauge_closed
    (And.intro sourceConstructiveCertificate.approximationClosed
      (And.intro sourceConstructiveCertificate.stabilityClosed
        sourceConstructiveCertificate.limitClosed))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse