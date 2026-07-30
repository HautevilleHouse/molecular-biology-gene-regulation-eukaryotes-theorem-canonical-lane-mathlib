import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure RnaProcessingPackage where
  capping : Prop
  splicing : Prop
  polyadenylation : Prop
  nuclearExport : Prop

def RnaProcessingClosed (R : RnaProcessingPackage) : Prop :=
  R.capping ∧ R.splicing ∧ R.polyadenylation ∧ R.nuclearExport

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse