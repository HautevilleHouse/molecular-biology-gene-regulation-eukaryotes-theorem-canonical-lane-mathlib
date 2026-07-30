import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheorem

structure TranscriptionalRegulationPackage where
  activatorProteins : Type u
  repressorProteins : Type v
  mediatorComplex : Type w
  rnaPolymeraseIIRecruitment : Prop
  initiationEfficiency : Prop
  elongationControl : Prop

structure TranscriptionalRegulationEvidence (T : TranscriptionalRegulationPackage) where
  rnaPolymeraseIIRecruitmentClosed : T.rnaPolymeraseIIRecruitment
  initiationEfficiencyClosed : T.initiationEfficiency
  elongationControlClosed : T.elongationControl

def TranscriptionalRegulationClosed (T : TranscriptionalRegulationPackage) : Prop :=
  T.rnaPolymeraseIIRecruitment ∧ T.initiationEfficiency ∧ T.elongationControl

theorem transcriptional_regulation_closed_from_evidence
    (T : TranscriptionalRegulationPackage) (E : TranscriptionalRegulationEvidence T) :
    TranscriptionalRegulationClosed T := by
  exact And.intro E.rnaPolymeraseIIRecruitmentClosed
    (And.intro E.initiationEfficiencyClosed E.elongationControlClosed)

end MolecularBiologyGeneRegulationEukaryotesTheorem
end HautevilleHouse