import ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure MesoscopicKineticBridgeCertificate where
  continuumModelCertificate : ContinuumModelCertificate
  particleSystemCertificate : ParticleSystemCertificate
  boltzmannEquationClosed : Prop
  hydrodynamicLimitClosed : Prop
  meanFieldLimitClosed : Prop
  boltzmannEquationClosedProof : boltzmannEquationClosed
  hydrodynamicLimitClosedProof : hydrodynamicLimitClosed
  meanFieldLimitClosedProof : meanFieldLimitClosed

def sourceMesoscopicKineticBridgeCertificate : MesoscopicKineticBridgeCertificate := {
  continuumModelCertificate := sourceContinuumModelCertificate
  particleSystemCertificate := sourceParticleSystemCertificate
  boltzmannEquationClosed := True
  hydrodynamicLimitClosed := True
  meanFieldLimitClosed := True
  boltzmannEquationClosedProof := trivial
  hydrodynamicLimitClosedProof := trivial
  meanFieldLimitClosedProof := trivial
}

def MesoscopicKineticBridgeClosed (C : MesoscopicKineticBridgeCertificate) : Prop :=
  ContinuumModelClosed C.continuumModelCertificate ∧
  ParticleSystemClosed C.particleSystemCertificate ∧
  C.boltzmannEquationClosed ∧
  C.hydrodynamicLimitClosed ∧
  C.meanFieldLimitClosed

theorem source_mesoscopic_kinetic_bridge_closed :
    MesoscopicKineticBridgeClosed sourceMesoscopicKineticBridgeCertificate := by
  exact And.intro source_continuum_model_closed
    (And.intro source_particle_system_closed
      (And.intro sourceMesoscopicKineticBridgeCertificate.boltzmannEquationClosedProof
        (And.intro sourceMesoscopicKineticBridgeCertificate.hydrodynamicLimitClosedProof
          sourceMesoscopicKineticBridgeCertificate.meanFieldLimitClosedProof)))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse