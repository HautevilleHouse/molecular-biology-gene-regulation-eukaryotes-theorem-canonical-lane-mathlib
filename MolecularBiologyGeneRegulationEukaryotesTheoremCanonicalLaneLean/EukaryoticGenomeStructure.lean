import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure EukaryoticGenomePackage where
  dnaOrganizedIntoChromosomes : Prop
  chromatinStructure : Prop
  nucleosomeOrganization : Prop
  histoneModifications : Prop

def EukaryoticGenomeClosed (E : EukaryoticGenomePackage) : Prop :=
  E.dnaOrganizedIntoChromosomes ∧ E.chromatinStructure ∧
  E.nucleosomeOrganization ∧ E.histoneModifications

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse