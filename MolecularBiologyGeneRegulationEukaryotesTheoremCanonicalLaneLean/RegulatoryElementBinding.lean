import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean

structure RegulatoryElementBindingPackage where
  dnaSequence : Type u
  transcriptionFactor : Type v
  bindingSite : dnaSequence → Prop
  bindingSpecificity : Prop
  affinityMeasure : Prop
  cooperativity : Prop

structure RegulatoryElementBindingEvidence (R : RegulatoryElementBindingPackage) where
  bindingSiteClosed : R.bindingSite R.dnaSequence
  bindingSpecificityClosed : R.bindingSpecificity
  affinityMeasureClosed : R.affinityMeasure
  cooperativityClosed : R.cooperativity

def RegulatoryElementBindingClosed (R : RegulatoryElementBindingPackage) : Prop :=
  R.bindingSite R.dnaSequence ∧ R.bindingSpecificity ∧ R.affinityMeasure ∧ R.cooperativity

theorem regulatory_element_binding_closed_from_evidence
    (R : RegulatoryElementBindingPackage) (E : RegulatoryElementBindingEvidence R) :
    RegulatoryElementBindingClosed R := by
  exact And.intro E.bindingSiteClosed
    (And.intro E.bindingSpecificityClosed
      (And.intro E.affinityMeasureClosed E.cooperativityClosed))

end MolecularBiologyGeneRegulationEukaryotesTheoremCanonicalLaneLean
end HautevilleHouse