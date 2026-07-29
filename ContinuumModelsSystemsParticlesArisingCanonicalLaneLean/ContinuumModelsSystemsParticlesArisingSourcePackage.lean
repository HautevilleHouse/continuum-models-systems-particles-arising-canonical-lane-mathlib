import Mathlib

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  lineCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  line : Nat
deriving Repr, DecidableEq

structure ConstantSpec where
  group : String
  key : String
  value : String
  sourceSection : String
  validation : String
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123def456"

def sourceFiles : List SourceFile :=
  [{ path := "continuum_model.py", sha256 := "aaa", lineCount := 150, parseOk := true },
   { path := "particle_system.py", sha256 := "bbb", lineCount := 200, parseOk := true }]

def sourceFunctions : List SourceFunctionDecl :=
  [{ file := "continuum_model.py", name := "evolve", args := ["density", "time"], returns := "float", line := 42 }]

def constantSpecs : List ConstantSpec :=
  [{ group := "physical", key := "diffusion_coeff", value := "0.5", sourceSection := "Section 3.2", validation := "positive" }]

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse