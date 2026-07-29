import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse