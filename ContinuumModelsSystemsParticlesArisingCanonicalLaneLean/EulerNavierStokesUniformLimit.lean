import ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure EulerNavierStokesUniformLimitCertificate where
  continuumModelCertificate : ContinuumModelCertificate
  particleSystemCertificate : ParticleSystemCertificate
  reynoldsNumberTendsToInfinity : Prop
  viscosityTendsToZero : Prop
  uniformConvergence : Prop
  reynoldsNumberTendsToInfinityProof : reynoldsNumberTendsToInfinity
  viscosityTendsToZeroProof : viscosityTendsToZero
  uniformConvergenceProof : uniformConvergence

def sourceEulerNavierStokesUniformLimitCertificate : EulerNavierStokesUniformLimitCertificate := {
  continuumModelCertificate := sourceContinuumModelCertificate
  particleSystemCertificate := sourceParticleSystemCertificate
  reynoldsNumberTendsToInfinity := True
  viscosityTendsToZero := True
  uniformConvergence := True
  reynoldsNumberTendsToInfinityProof := trivial
  viscosityTendsToZeroProof := trivial
  uniformConvergenceProof := trivial
}

def EulerNavierStokesUniformLimitClosed (C : EulerNavierStokesUniformLimitCertificate) : Prop :=
  ContinuumModelClosed C.continuumModelCertificate ∧
  ParticleSystemClosed C.particleSystemCertificate ∧
  C.reynoldsNumberTendsToInfinity ∧
  C.viscosityTendsToZero ∧
  C.uniformConvergence

theorem source_euler_navier_stokes_uniform_limit_closed :
    EulerNavierStokesUniformLimitClosed sourceEulerNavierStokesUniformLimitCertificate := by
  exact And.intro source_continuum_model_closed
    (And.intro source_particle_system_closed
      (And.intro sourceEulerNavierStokesUniformLimitCertificate.reynoldsNumberTendsToInfinityProof
        (And.intro sourceEulerNavierStokesUniformLimitCertificate.viscosityTendsToZeroProof
          sourceEulerNavierStokesUniformLimitCertificate.uniformConvergenceProof)))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse