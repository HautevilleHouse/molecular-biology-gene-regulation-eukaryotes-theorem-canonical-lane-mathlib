import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure EnhancerPromoterLoopingPackage where
  enhancerBoundByActivators : Prop
  mediatorComplexBridge : Prop
  dnaLoopingFormed : Prop
  promoterActivation : Prop

def EnhancerPromoterLoopingClosed (E : EnhancerPromoterLoopingPackage) : Prop :=
  E.enhancerBoundByActivators ∧ E.mediatorComplexBridge ∧
  E.dnaLoopingFormed ∧ E.promoterActivation

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse