import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure ParticleContinuumModel where
  spatialDomain : Type
  particleCount : ℕ
  continuousDensity : spatialDomain → ℝ
  interactionKernel : spatialDomain → spatialDomain → ℝ
  externalPotential : spatialDomain → ℝ

def meanFieldPotential (model : ParticleContinuumModel) (x : model.spatialDomain) : ℝ :=
  ∫ y, model.interactionKernel x y * model.continuousDensity y

def totalEnergy (model : ParticleContinuumModel) : ℝ :=
  (∫ x, model.continuousDensity x * model.externalPotential x) +
  (1/2) * (∫ x, model.continuousDensity x * meanFieldPotential model x)

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse