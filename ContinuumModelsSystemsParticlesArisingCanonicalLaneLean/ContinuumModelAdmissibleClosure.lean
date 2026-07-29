import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.ContinuumModelAnalyticCertificate

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

def continuumModelAdmissibleClass (A : AdmissibleClass) : Prop :=
  ContinuumModelAnalyticCertificateClosed sourceContinuumModelAnalyticCertificate ∧
  bridgeClosed A ∧ gateClosed A

theorem continuum_model_admissible_class_endgame (A : AdmissibleClass) : continuumModelAdmissibleClass A := by
  refine And.intro source_continuum_model_analytic_certificate_closed ?_
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse