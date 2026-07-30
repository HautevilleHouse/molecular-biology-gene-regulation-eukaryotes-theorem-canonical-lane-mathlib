import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure RnaSplicingPackage where
  preMrna : Type u
  spliceosome : Type v
  exonJunction : Type w
  intronRemoval : Prop
  alternativeSplicing : Prop
  spliceSiteRecognition : Prop

structure RnaSplicingEvidence (R : RnaSplicingPackage) where
  intronRemovalClosed : R.intronRemoval
  alternativeSplicingClosed : R.alternativeSplicing
  spliceSiteRecognitionClosed : R.spliceSiteRecognition

def RnaSplicingClosed (R : RnaSplicingPackage) : Prop :=
  R.intronRemoval ∧ R.alternativeSplicing ∧ R.spliceSiteRecognition

theorem rna_splicing_closed_from_evidence
    (R : RnaSplicingPackage) (E : RnaSplicingEvidence R) :
    RnaSplicingClosed R := by
  exact And.intro E.intronRemovalClosed
    (And.intro E.alternativeSplicingClosed E.spliceSiteRecognitionClosed)

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse