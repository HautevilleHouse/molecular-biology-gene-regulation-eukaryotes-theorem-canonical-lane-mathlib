import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure DNABindingMotifPackage where
  motifSequence : String
  bindingAffinity : Float
  specificity : Prop
  motifConservation : Prop

structure DNABindingMotifEvidence (M : DNABindingMotifPackage) where
  bindingAffinityClosed : M.bindingAffinity > 0.0
  specificityClosed : M.specificity
  motifConservationClosed : M.motifConservation

def DNABindingMotifClosed (M : DNABindingMotifPackage) : Prop :=
  M.bindingAffinity > 0.0 ∧ M.specificity ∧ M.motifConservation

theorem dna_binding_motif_closed_from_evidence (M : DNABindingMotifPackage) (E : DNABindingMotifEvidence M) :
    DNABindingMotifClosed M := by
  exact And.intro E.bindingAffinityClosed (And.intro E.specificityClosed E.motifConservationClosed)

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse