import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.VlasovPoissonLayer

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure ContinuumModelAnalyticCertificate where
  substrate : Type
  meanFieldLayerClosed : Prop
  hydrodynamicLimitLayerClosed : Prop
  vlasovPoissonLayerClosed : Prop
  canonicalCarriageImported : Prop
  meanFieldLayerClosedProof : meanFieldLayerClosed
  hydrodynamicLimitLayerClosedProof : hydrodynamicLimitLayerClosed
  vlasovPoissonLayerClosedProof : vlasovPoissonLayerClosed
  canonicalCarriageImportedProof : canonicalCarriageImported

def sourceContinuumModelAnalyticCertificate : ContinuumModelAnalyticCertificate := {
  substrate := Unit
  meanFieldLayerClosed := MeanFieldLayerClosed sourceMeanFieldCertificate
  hydrodynamicLimitLayerClosed := HydrodynamicLimitLayerClosed sourceHydrodynamicLimitCertificate
  vlasovPoissonLayerClosed := VlasovPoissonLayerClosed sourceVlasovPoissonCertificate
  canonicalCarriageImported := True
  meanFieldLayerClosedProof := source_mean_field_layer_closed
  hydrodynamicLimitLayerClosedProof := source_hydrodynamic_limit_layer_closed
  vlasovPoissonLayerClosedProof := source_vlasov_poisson_layer_closed
  canonicalCarriageImportedProof := trivial
}

def ContinuumModelAnalyticCertificateClosed (C : ContinuumModelAnalyticCertificate) : Prop :=
  C.meanFieldLayerClosed ∧
  C.hydrodynamicLimitLayerClosed ∧
  C.vlasovPoissonLayerClosed ∧
  C.canonicalCarriageImported

theorem source_continuum_model_analytic_certificate_closed : ContinuumModelAnalyticCertificateClosed sourceContinuumModelAnalyticCertificate := by
  exact And.intro sourceContinuumModelAnalyticCertificate.meanFieldLayerClosedProof
    (And.intro sourceContinuumModelAnalyticCertificate.hydrodynamicLimitLayerClosedProof
      (And.intro sourceContinuumModelAnalyticCertificate.vlasovPoissonLayerClosedProof sourceContinuumModelAnalyticCertificate.canonicalCarriageImportedProof))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse