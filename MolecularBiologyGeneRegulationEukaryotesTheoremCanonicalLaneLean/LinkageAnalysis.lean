import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure LinkageAnalysisPackage where
  geneticMarkers : Type u
  recombinationFrequencies : geneticMarkers → geneticMarkers → ℕ
  mapDistances : geneticMarkers → geneticMarkers → ℕ
  linkageEquilibrium : Prop
  independentAssortment : Prop
  markerOrderDefined : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkageEquilibriumClosed : L.linkageEquilibrium
  independentAssortmentClosed : L.independentAssortment
  markerOrderDefinedClosed : L.markerOrderDefined

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageEquilibrium ∧ L.independentAssortment ∧ L.markerOrderDefined

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.linkageEquilibriumClosed
    (And.intro E.independentAssortmentClosed E.markerOrderDefinedClosed)

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse
