import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure TranscriptionalInitiationPackage where
  promoterRegion : Type u
  rnaPolymeraseII : Type v
  preInitiationComplex : Prop
  tataBox : Prop
  initiatorElement : Prop
  transcriptionStartSite : Prop

structure TranscriptionalInitiationEvidence (T : TranscriptionalInitiationPackage) where
  preInitiationComplexClosed : T.preInitiationComplex
  tataBoxClosed : T.tataBox
  initiatorElementClosed : T.initiatorElement
  transcriptionStartSiteClosed : T.transcriptionStartSite

def TranscriptionalInitiationClosed (T : TranscriptionalInitiationPackage) : Prop :=
  T.preInitiationComplex ∧ T.tataBox ∧ T.initiatorElement ∧ T.transcriptionStartSite

theorem transcriptional_initiation_closed_from_evidence
    (T : TranscriptionalInitiationPackage) (E : TranscriptionalInitiationEvidence T) :
    TranscriptionalInitiationClosed T := by
  exact And.intro E.preInitiationComplexClosed
    (And.intro E.tataBoxClosed
      (And.intro E.initiatorElementClosed E.transcriptionStartSiteClosed))

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse