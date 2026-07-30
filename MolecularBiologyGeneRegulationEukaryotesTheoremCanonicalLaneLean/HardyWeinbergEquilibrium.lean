import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure HardyWeinbergPackage where
  populationState : Type u
  alleleFrequencies : populationState → Array ℕ
  genotypeFrequencies : populationState → Array ℕ
  equilibriumCondition : Prop
  randomMatingAssumed : Prop
  noEvolutionaryForces : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  equilibriumConditionClosed : H.equilibriumCondition
  randomMatingAssumedClosed : H.randomMatingAssumed
  noEvolutionaryForcesClosed : H.noEvolutionaryForces

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition ∧ H.randomMatingAssumed ∧ H.noEvolutionaryForces

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.equilibriumConditionClosed
    (And.intro E.randomMatingAssumedClosed E.noEvolutionaryForcesClosed)

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse
