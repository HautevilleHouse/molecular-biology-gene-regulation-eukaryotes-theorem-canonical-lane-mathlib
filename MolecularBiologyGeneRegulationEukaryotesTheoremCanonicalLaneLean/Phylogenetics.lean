import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure PhylogeneticsPackage where
  taxa : Type u
  distanceMatrix : taxa → taxa → ℕ
  treeTopology : Type v
  edgeLengths : treeTopology → ℕ
  additiveProperty : Prop
  ultrametricProperty : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  additivePropertyClosed : P.additiveProperty
  ultrametricPropertyClosed : P.ultrametricProperty

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.additiveProperty ∧ P.ultrametricProperty

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.additivePropertyClosed E.ultrametricPropertyClosed

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse
