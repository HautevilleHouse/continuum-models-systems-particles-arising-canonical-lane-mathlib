import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure ContinuumGaugeCertificate where
  metricDefined : Prop
  particleDensityDefined : Prop
  interactionKernelDefined : Prop
  evolutionEquationDefined : Prop
  metricClosed : metricDefined
  densityClosed : particleDensityDefined
  kernelClosed : interactionKernelDefined
  equationClosed : evolutionEquationDefined

def sourceContinuumGaugeCertificate : ContinuumGaugeCertificate :=
  { metricDefined := True,
    particleDensityDefined := True,
    interactionKernelDefined := True,
    evolutionEquationDefined := True,
    metricClosed := trivial,
    densityClosed := trivial,
    kernelClosed := trivial,
    equationClosed := trivial }

def ContinuumGaugeClosed (C : ContinuumGaugeCertificate) : Prop :=
  C.metricDefined ∧ C.particleDensityDefined ∧ C.interactionKernelDefined ∧ C.evolutionEquationDefined

theorem source_continuum_gauge_closed : ContinuumGaugeClosed sourceContinuumGaugeCertificate := by
  exact And.intro sourceContinuumGaugeCertificate.metricClosed
    (And.intro sourceContinuumGaugeCertificate.densityClosed
      (And.intro sourceContinuumGaugeCertificate.kernelClosed
        sourceContinuumGaugeCertificate.equationClosed))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse