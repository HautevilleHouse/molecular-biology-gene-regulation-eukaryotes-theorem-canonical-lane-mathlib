import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure TranscriptionInitiationPackage where
  rnaPolymeraseIIRecruitment : Prop
  generalTranscriptionFactors : Prop
  preInitiationComplexFormation : Prop
  promoterClearance : Prop

def TranscriptionInitiationClosed (T : TranscriptionInitiationPackage) : Prop :=
  T.rnaPolymeraseIIRecruitment ∧ T.generalTranscriptionFactors ∧
  T.preInitiationComplexFormation ∧ T.promoterClearance

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse