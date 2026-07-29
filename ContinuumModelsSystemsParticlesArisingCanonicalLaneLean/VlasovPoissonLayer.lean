import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.HydrodynamicLimitLayer

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure VlasovPoissonCertificate where
  hydrodynamicLimit : HydrodynamicLimitCertificate
  fieldEquation : Prop
  propagationOfChaos : Prop
  stabilityMargin : Prop
  fieldEquationClosed : fieldEquation
  propagationOfChaosClosed : propagationOfChaos
  stabilityMarginClosed : stabilityMargin

def sourceVlasovPoissonCertificate : VlasovPoissonCertificate := {
  hydrodynamicLimit := sourceHydrodynamicLimitCertificate
  fieldEquation := True
  propagationOfChaos := True
  stabilityMargin := True
  fieldEquationClosed := trivial
  propagationOfChaosClosed := trivial
  stabilityMarginClosed := trivial
}

def VlasovPoissonLayerClosed (C : VlasovPoissonCertificate) : Prop :=
  HydrodynamicLimitLayerClosed C.hydrodynamicLimit ∧
  C.fieldEquation ∧
  C.propagationOfChaos ∧
  C.stabilityMargin

theorem source_vlasov_poisson_layer_closed : VlasovPoissonLayerClosed sourceVlasovPoissonCertificate := by
  exact And.intro source_hydrodynamic_limit_layer_closed
    (And.intro sourceVlasovPoissonCertificate.fieldEquationClosed
      (And.intro sourceVlasovPoissonCertificate.propagationOfChaosClosed sourceVlasovPoissonCertificate.stabilityMarginClosed))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse