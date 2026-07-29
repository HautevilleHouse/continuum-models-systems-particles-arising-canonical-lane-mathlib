import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure BaselineCertificate where
  allPass : Bool
  lane : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "bridge.md", sha256 := "ccc", present := true }]

def reviewerManifestEntries : List ReviewerManifestEntry :=
  [{ path := "manifest.json", sha256 := "ddd" }]

def baselineCertificate : BaselineCertificate :=
  { allPass := true, lane := "manifold_constrained" }

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse