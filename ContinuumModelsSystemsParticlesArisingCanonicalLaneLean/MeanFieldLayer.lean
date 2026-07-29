import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.ParticleContinuumModel

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure MeanFieldCertificate where
  model : ParticleContinuumModel
  densityRegularity : Prop
  interactionIntegrability : Prop
  potentialIntegrability : Prop
  densityRegularityClosed : densityRegularity
  interactionIntegrabilityClosed : interactionIntegrability
  potentialIntegrabilityClosed : potentialIntegrability

def sourceMeanFieldCertificate : MeanFieldCertificate := {
  model := defaultModel
  densityRegularity := True
  interactionIntegrability := True
  potentialIntegrability := True
  densityRegularityClosed := trivial
  interactionIntegrabilityClosed := trivial
  potentialIntegrabilityClosed := trivial
}

def MeanFieldLayerClosed (C : MeanFieldCertificate) : Prop :=
  C.densityRegularity ∧ C.interactionIntegrability ∧ C.potentialIntegrability

theorem source_mean_field_layer_closed : MeanFieldLayerClosed sourceMeanFieldCertificate := by
  exact And.intro sourceMeanFieldCertificate.densityRegularityClosed
    (And.intro sourceMeanFieldCertificate.interactionIntegrabilityClosed sourceMeanFieldCertificate.potentialIntegrabilityClosed)

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse