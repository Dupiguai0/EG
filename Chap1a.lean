import EuclideanGeometry.Foundation.Index
import EuclideanGeometry.Foundation.Axiom.Linear.Line_ex
import EuclideanGeometry.Foundation.Axiom.Linear.Ray

-- All exercises are from Aref-Wernick book: Problems and Solutions in Euclidean Geometry Chapter 1

namespace EuclidGeom

variable {P : Type _} [EuclideanPlane P]

namespace Aref_Wernick_Exercise_1_1
/- Two triangles are congruent if two sides and the enclosed median in one triangle are respectively equal to two sides and the enclosed median of the other.

In other words, let $\triangle A_1B_1C_1$ and $\triangle A_2B_2C_2$ be two triangles and let $A_1M_1$ and $A_2M_2$ be the corresponding medians. Suppose that $A_1B_1 = A_2B_2$, $A_1C_1 = A_2C_2$, and $A_1M_1 = A_2M_2$.

Prove that $\triangle A_1B_1C_1$ is congruent to $\triangle A_2B_2C_2$. -/

-- Don't prove this yet, the way to prove this is to extend $A_1M_1$ to $D_1$ so that $A_1 B_1 D_1 C_1$ is a parallelogram... Parallelogram.lean is not ready yet.

end Aref_Wernick_Exercise_1_1


namespace Aref_Wernick_Exercise_1_2
/- Let $D$ and $E$ be points on two sides $AB$ and $AC$ of a triangle $ABC$, respectively, such that $BD = BC = CE$. The segments $BE$ and $CD$ intersect at $F$.

Prove that $\angle BFD = \pi / 2 - \angle CAB$. -/
variable {A B C : P} {hnd : ¬ colinear A B C} {hisoc : (▵ A B C).IsIsoceles}
-- Claim: $A \ne B$ and $A \ne C$ and $B \ne C$.
--This is because vertices of nondegenerate triangles are distinct.
lemma b_ne_a : B ≠ A := (ne_of_not_colinear hnd).2.2
lemma c_ne_a : C ≠ A := (ne_of_not_colinear hnd).2.1.symm
lemma b_ne_c : B ≠ C := (ne_of_not_colinear hnd).1.symm
--定义DE为AB AC 上的点
variable {D E : P}{hd : D LiesInt (SEG_nd A B (b_ne_a (hnd := hnd)))} 





end Aref_Wernick_Exercise_1_2



end EuclidGeom