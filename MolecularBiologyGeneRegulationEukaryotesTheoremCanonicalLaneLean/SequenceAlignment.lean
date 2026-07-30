import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequences : Type u
  alignmentScoringFunction : sequences → sequences → ℕ
  optimalAlignment : sequences → sequences → sequences
  gapPenalty : ℕ
  substitutionMatrix : Type v

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  optimalAlignmentExists : ∀ (a b : S.sequences), ∃ (aln : S.optimalAlignment a b), True
  scoringConsistent : ∀ (a b : S.sequences), S.alignmentScoringFunction a b = 0 ∨ S.alignmentScoringFunction a b > 0

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  (∀ (a b : S.sequences), ∃ (aln : S.optimalAlignment a b), True) ∧
  (∀ (a b : S.sequences), S.alignmentScoringFunction a b = 0 ∨ S.alignmentScoringFunction a b > 0)

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.optimalAlignmentExists E.scoringConsistent

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse
