import ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.BridgeLemmas
import ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.ContinuumLimitLayer

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

def ConstrainedContinuumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuum_endgame (A : AdmissibleClass) :
    ConstrainedContinuumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse
