import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyGeneRegulationEukaryotesTheorem.BridgeLemmas
import HautevilleHouse.MolecularBiologyGeneRegulationEukaryotesTheorem.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheorem

def ConstrainedGeneRegulationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gene_regulation_endgame (A : AdmissibleClass) :
    ConstrainedGeneRegulationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyGeneRegulationEukaryotesTheorem
end HautevilleHouse