import CanonicalLaneMathlibCore
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

-- Source description and boundary

def sourceRepository : String := "continuum-models-systems-particles-arising-canonical-lane"
def sourceDescription : String := "Continuum Models of Systems of Particles Arising"
def claimBoundary : String := "Derivation of continuum models from particle systems via scaling limits, homogenization, and mean-field approximations"

structure SourceTheoremBoundary where
  claimBoundary : String

def sourceTheoremBoundary : SourceTheoremBoundary := {
  claimBoundary := claimBoundary
}

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse
