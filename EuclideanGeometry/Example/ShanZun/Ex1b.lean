import EuclideanGeometry.Foundation.Index

noncomputable section

-- All exercises are from Shan Zun's book Exercise 1

namespace EuclidGeom

variable {P : Type _} [EuclideanPlane P]

namespace Shan_Problem_1_5
/- In $\triangle ABC$, let $AD$ be the median.  Let $E$ be a point on $AD$ such that $BE = AC$. The line $BE$ intersects $AC$ at $F$.

Prove that $AF = EF$. -/
variable {A B C : P} {hnd : ¬ colinear A B C}
lemma b_ne_a : B ≠ A := sorry
lemma c_ne_a : C ≠ A := sorry
lemma b_ne_c : B ≠ C := sorry

variable {D : P} {hd : D = (SEG B C).midpoint}
variable {E : P} {he : E LiesOn (SEG A D)}
variable (ha : (SEG B E).length = (SEG A C).length)
lemma b_ne_e : B ≠ E := sorry

variable {F : P} {hf : F LiesOn (SEG_nd B E (b_ne_e)).extension}

theorem Shan_Problem_1_5 : (SEG A F).length = (SEG E F).length := sorry

end Shan_Problem_1_5


namespace Shan_Problem_1_6
/- Let $\triangle ABC$ be an isosceles triangle in which $AB = AC$.

Prove that For any point $D$ on the base $BC$, the sum of the the distance of $D$ to $AB$ and to $AC$ is independent of $D$. -/


variable {A B C : P} {hnd : ¬ colinear A B C} {hisoc : (▵ A B C).IsIsoceles}
lemma b_ne_a : B ≠ A := sorry
lemma c_ne_a : C ≠ A := sorry
lemma b_ne_c : B ≠ C := sorry

--def htsum (M : P) :  : dist_pt_line (M) (LIN A B b_ne_a) + dist_pt_line (M) (LIN A C c_ne_a)
--def htsum : P → ℝ :=
--  fun M => dist_pt_line (M) (LIN A B b_ne_a) + dist_pt_line (M) (LIN A C c_ne_a)
def htsum (M : P) : ℝ :=
  dist_pt_line (M) (LIN A B b_ne_a) + dist_pt_line (M) (LIN A C c_ne_a)
variable {D₁ D₂ : P} {hd₁ : D₁ LiesInt (SEG A B)} {hd₂ : D₂ LiesInt (SEG A C)}

#check htsum
theorem Shan_Problem_1_6 : htsum (D₁) =  htsum D₂ := sorry


end Shan_Problem_1_6
