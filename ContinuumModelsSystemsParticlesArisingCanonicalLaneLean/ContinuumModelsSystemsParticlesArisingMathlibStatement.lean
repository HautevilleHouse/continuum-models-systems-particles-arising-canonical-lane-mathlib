import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String
deriving Repr, DecidableEq

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "continuum-models-systems-particles-arising-canonical-lane",
    theoremObject := "Continuum Models Systems Particles Arising",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "theorem-specific Mathlib closure package closes over the admitted class; unrestricted classical closure remains carried" }

theorem mathlib_common_core_projection_law_available : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.xNext = L.state + L.projection.toFun L.delta := by
  intro X instAdd instSub L
  exact AdditiveLane.x_next_eq L

theorem mathlib_common_core_carriage_law_available : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.carriedComponent = L.delta - L.projection.toFun L.delta := by
  intro X instAdd instSub L
  exact AdditiveLane.carried_component_eq L

theorem mathlib_common_core_idempotence_available : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.projection.toFun (L.projection.toFun L.delta) = L.projection.toFun L.delta := by
  intro X instAdd instSub L
  exact AdditiveLane.projection_idempotent_on_delta L

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse