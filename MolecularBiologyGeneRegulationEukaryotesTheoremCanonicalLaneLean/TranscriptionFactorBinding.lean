import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure TranscriptionFactorBindingPackage where
  transcriptionFactor : String
  bindingSite : String
  cooperativity : Prop
  affinityModulated : Prop
  postTranslationalModification : Prop

structure TranscriptionFactorBindingEvidence (T : TranscriptionFactorBindingPackage) where
  cooperativityClosed : T.cooperativity
  affinityModulatedClosed : T.affinityModulated
  postTranslationalModificationClosed : T.postTranslationalModification

def TranscriptionFactorBindingClosed (T : TranscriptionFactorBindingPackage) : Prop :=
  T.cooperativity ∧ T.affinityModulated ∧ T.postTranslationalModification

theorem transcription_factor_binding_closed_from_evidence (T : TranscriptionFactorBindingPackage) (E : TranscriptionFactorBindingEvidence T) :
    TranscriptionFactorBindingClosed T := by
  exact And.intro E.cooperativityClosed (And.intro E.affinityModulatedClosed E.postTranslationalModificationClosed)

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse