import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure PromoterArchitecturePackage where
  promoterSequence : String
  tataBoxPresent : Prop
  initiatorElementPresent : Prop
  distalRegulatoryElements : List String
  corePromoterFunctional : Prop

structure PromoterArchitectureEvidence (P : PromoterArchitecturePackage) where
  tataBoxPresentClosed : P.tataBoxPresent
  initiatorElementPresentClosed : P.initiatorElementPresent
  distalRegulatoryElementsClosed : P.distalRegulatoryElements.length > 0
  corePromoterFunctionalClosed : P.corePromoterFunctional

def PromoterArchitectureClosed (P : PromoterArchitecturePackage) : Prop :=
  P.tataBoxPresent ∧ P.initiatorElementPresent ∧ (P.distalRegulatoryElements.length > 0) ∧ P.corePromoterFunctional

theorem promoter_architecture_closed_from_evidence (P : PromoterArchitecturePackage) (E : PromoterArchitectureEvidence P) :
    PromoterArchitectureClosed P := by
  exact And.intro E.tataBoxPresentClosed
    (And.intro E.initiatorElementPresentClosed
      (And.intro E.distalRegulatoryElementsClosed E.corePromoterFunctionalClosed))

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse