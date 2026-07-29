import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse