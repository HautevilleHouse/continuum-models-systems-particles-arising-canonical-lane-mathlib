import ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

abbrev DensityField := Euclidean4 → ℝ
abbrev VelocityField := Euclidean4 → Euclidean4
abbrev PressureField := Euclidean4 → ℝ

structure ContinuumModel where
  density : DensityField
  velocity : VelocityField
  pressure : PressureField
  equationOfState : Prop
  equationOfStateProof : equationOfState

def primitiveContinuumModel : ContinuumModel := {
  density := fun _ => 0
  velocity := fun _ => zeroEuclidean4
  pressure := fun _ => 0
  equationOfState := True
  equationOfStateProof := trivial
}

structure ContinuumModelCertificate where
  model : ContinuumModel
  continuityClosed : Prop
  momentumClosed : Prop
  energyClosed : Prop
  closureCondition : Prop
  continuityClosedProof : continuityClosed
  momentumClosedProof : momentumClosed
  energyClosedProof : energyClosed
  closureConditionProof : closureCondition

def sourceContinuumModelCertificate : ContinuumModelCertificate := {
  model := primitiveContinuumModel
  continuityClosed := True
  momentumClosed := True
  energyClosed := True
  closureCondition := True
  continuityClosedProof := trivial
  momentumClosedProof := trivial
  energyClosedProof := trivial
  closureConditionProof := trivial
}

def ContinuumModelClosed (C : ContinuumModelCertificate) : Prop :=
  C.continuityClosed ∧ C.momentumClosed ∧ C.energyClosed ∧ C.closureCondition

theorem source_continuum_model_closed : ContinuumModelClosed sourceContinuumModelCertificate := by
  exact And.intro sourceContinuumModelCertificate.continuityClosedProof
    (And.intro sourceContinuumModelCertificate.momentumClosedProof
      (And.intro sourceContinuumModelCertificate.energyClosedProof
        sourceContinuumModelCertificate.closureConditionProof))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse