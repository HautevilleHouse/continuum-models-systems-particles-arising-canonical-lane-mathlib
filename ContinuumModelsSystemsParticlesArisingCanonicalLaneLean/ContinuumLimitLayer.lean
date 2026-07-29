import ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.ParticleSystemLayer
import Mathlib.Analysis.Calculus.MeanInequalities
import Mathlib.MeasureTheory.Integral.SetIntegral

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuumLimitCertificate where
  particleSystem : ParticleSystemCertificate
  limitEquation : Prop
  wellPosedness : Prop
  energyStability : Prop
  limitEquationClosed : limitEquation
  wellPosednessClosed : wellPosedness
  energyStabilityClosed : energyStability

def sourceContinuumLimitCertificate : ContinuumLimitCertificate := {
  particleSystem := sourceParticleSystemCertificate
  limitEquation := sourceParticleSystemCertificate.meanFieldLimit ∧
    sourceParticleSystemCertificate.homogenizationValid
  wellPosedness := sourceParticleSystemCertificate.scalingLimitExists
  energyStability := sourceParticleSystemCertificate.config.temperature > 0
  limitEquationClosed := source_particle_system_closed
  wellPosednessClosed := sourceParticleSystemCertificate.scalingLimitExistsClosed
  energyStabilityClosed := by
    have h : sourceParticleSystemCertificate.config.temperature > 0 := by
      unfold sourceParticleSystemCertificate
      simp
    exact h
}

def ContinuumLimitClosed (C : ContinuumLimitCertificate) : Prop :=
  C.limitEquation ∧ C.wellPosedness ∧ C.energyStability

theorem source_continuum_limit_closed :
    ContinuumLimitClosed sourceContinuumLimitCertificate := by
  exact And.intro sourceContinuumLimitCertificate.limitEquationClosed
    (And.intro sourceContinuumLimitCertificate.wellPosednessClosed
      sourceContinuumLimitCertificate.energyStabilityClosed)

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse
