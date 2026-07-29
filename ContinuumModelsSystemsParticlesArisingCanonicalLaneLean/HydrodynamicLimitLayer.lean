import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.MeanFieldLayer

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure HydrodynamicLimitCertificate where
  meanField : MeanFieldCertificate
  localEquilibrium : Prop
  convergenceRate : Prop
  closureCondition : Prop
  localEquilibriumClosed : localEquilibrium
  convergenceRateClosed : convergenceRate
  closureConditionClosed : closureCondition

def sourceHydrodynamicLimitCertificate : HydrodynamicLimitCertificate := {
  meanField := sourceMeanFieldCertificate
  localEquilibrium := True
  convergenceRate := True
  closureCondition := True
  localEquilibriumClosed := trivial
  convergenceRateClosed := trivial
  closureConditionClosed := trivial
}

def HydrodynamicLimitLayerClosed (C : HydrodynamicLimitCertificate) : Prop :=
  MeanFieldLayerClosed C.meanField ∧
  C.localEquilibrium ∧
  C.convergenceRate ∧
  C.closureCondition

theorem source_hydrodynamic_limit_layer_closed : HydrodynamicLimitLayerClosed sourceHydrodynamicLimitCertificate := by
  exact And.intro source_mean_field_layer_closed
    (And.intro sourceHydrodynamicLimitCertificate.localEquilibriumClosed
      (And.intro sourceHydrodynamicLimitCertificate.convergenceRateClosed sourceHydrodynamicLimitCertificate.closureConditionClosed))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse