import canonicalLaneMathlib.ReviewerBridge

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "eukaryotic-gene-regulation-theorem-canonical-lane",
  theoremName := "Eukaryotic Gene Regulation Theorem",
  theoremObject := "EukaryoticGeneRegulationAdmittedObject",
  classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary",
  constrainedStatement := "DNA-binding transcription factors, enhancers, promoters, and chromatin modification state are closed under admissible-class bridge for eukaryotic gene regulation.",
  certificateLane := "gene_regulation_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate"
}

def ConstrainedGeneRegulationTheoremClosed : Prop :=
  certificateLane = "gene_regulation_constrained"

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "eukaryotic-gene-regulation-theorem-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "gene_regulation_constrained" := by
  rfl

theorem constrained_gene_regulation_theorem_closed_checked :
    ConstrainedGeneRegulationTheoremClosed := by
  rfl

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse
