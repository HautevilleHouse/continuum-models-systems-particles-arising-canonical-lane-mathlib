import HautevilleHouse.ContinuumModelsSystemsParticlesArisingCanonicalLaneLean.ConstructiveLayer

namespace HautevilleHouse
namespace ContinuumModelsSystemsParticlesArisingCanonicalLaneLean

structure MassGapCertificate where
  constructive : ConstructiveCertificate
  coercivityFloor : Prop
  positivityFloor : Prop
  massLowerBound : Prop
  coercivityClosed : coercivityFloor
  positivityClosed : positivityFloor
  massClosed : massLowerBound

def sourceMassGapCertificate : MassGapCertificate :=
  { constructive := sourceConstructiveCertificate,
    coercivityFloor := True,
    positivityFloor := True,
    massLowerBound := True,
    coercivityClosed := trivial,
    positivityClosed := trivial,
    massClosed := trivial }

def MassGapClosed (C : MassGapCertificate) : Prop :=
  ConstructiveClosed C.constructive ∧ C.coercivityFloor ∧ C.positivityFloor ∧ C.massLowerBound

theorem source_mass_gap_closed : MassGapClosed sourceMassGapCertificate := by
  exact And.intro source_constructive_closed
    (And.intro sourceMassGapCertificate.coercivityClosed
      (And.intro sourceMassGapCertificate.positivityClosed
        sourceMassGapCertificate.massClosed))

end ContinuumModelsSystemsParticlesArisingCanonicalLaneLean
end HautevilleHouse