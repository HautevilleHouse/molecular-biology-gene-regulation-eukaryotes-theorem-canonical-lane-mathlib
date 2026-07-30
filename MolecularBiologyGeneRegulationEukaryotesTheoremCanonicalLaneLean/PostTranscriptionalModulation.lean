import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheorem

structure PostTranscriptionalModulationPackage where
  alternativeSplicing : Type u
  mrnaStability : Type v
  nonCodingRnas : Type w
  splicingRegulation : Prop
  degradationPathway : Prop
  mirnaSilencing : Prop

structure PostTranscriptionalModulationEvidence (P : PostTranscriptionalModulationPackage) where
  splicingRegulationClosed : P.splicingRegulation
  degradationPathwayClosed : P.degradationPathway
  mirnaSilencingClosed : P.mirnaSilencing

def PostTranscriptionalModulationClosed (P : PostTranscriptionalModulationPackage) : Prop :=
  P.splicingRegulation ∧ P.degradationPathway ∧ P.mirnaSilencing

theorem post_transcriptional_modulation_closed_from_evidence
    (P : PostTranscriptionalModulationPackage) (E : PostTranscriptionalModulationEvidence P) :
    PostTranscriptionalModulationClosed P := by
  exact And.intro E.splicingRegulationClosed
    (And.intro E.degradationPathwayClosed E.mirnaSilencingClosed)

end MolecularBiologyGeneRegulationEukaryotesTheorem
end HautevilleHouse