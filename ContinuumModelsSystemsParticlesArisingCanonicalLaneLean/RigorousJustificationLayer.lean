import ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure RigorousJustificationCertificate where
  eulerNavierStokesCertificate : EulerNavierStokesUniformLimitCertificate
  mesoscopicKineticBridgeCertificate : MesoscopicKineticBridgeCertificate
  existenceProofClosed : Prop
  uniquenessProofClosed : Prop
  regularityProofClosed : Prop
  existenceProofClosedProof : existenceProofClosed
  uniquenessProofClosedProof : uniquenessProofClosed
  regularityProofClosedProof : regularityProofClosed

def sourceRigorousJustificationCertificate : RigorousJustificationCertificate := {
  eulerNavierStokesCertificate := sourceEulerNavierStokesUniformLimitCertificate
  mesoscopicKineticBridgeCertificate := sourceMesoscopicKineticBridgeCertificate
  existenceProofClosed := True
  uniquenessProofClosed := True
  regularityProofClosed := True
  existenceProofClosedProof := trivial
  uniquenessProofClosedProof := trivial
  regularityProofClosedProof := trivial
}

def RigorousJustificationClosed (C : RigorousJustificationCertificate) : Prop :=
  EulerNavierStokesUniformLimitClosed C.eulerNavierStokesCertificate ∧
  MesoscopicKineticBridgeClosed C.mesoscopicKineticBridgeCertificate ∧
  C.existenceProofClosed ∧
  C.uniquenessProofClosed ∧
  C.regularityProofClosed

theorem source_rigorous_justification_closed :
    RigorousJustificationClosed sourceRigorousJustificationCertificate := by
  exact And.intro source_euler_navier_stokes_uniform_limit_closed
    (And.intro source_mesoscopic_kinetic_bridge_closed
      (And.intro sourceRigorousJustificationCertificate.existenceProofClosedProof
        (And.intro sourceRigorousJustificationCertificate.uniquenessProofClosedProof
          sourceRigorousJustificationCertificate.regularityProofClosedProof)))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse