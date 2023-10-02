import Mathlib

/-- normal definition of the fibonacci sequence. -/
def fib : Nat → Nat
| 0 => 0
| 1 => 1
| n + 2 => fib n + fib (n + 1)

example : [0, 1, 2, 3, 4, 5].map fib = [0, 1, 1, 2, 3, 5] := rfl


/-- a fast version of the fibonacci function
  see: https://lean-lang.org/theorem_proving_in_lean4/induction_and_recursion.html#structural-recursion-and-induction -/
def fib' (n : Nat) : Nat :=
  (loop n).1
where
  loop : Nat → Nat × Nat
    | 0   => (0, 1)
    | n+1 => ((loop n).2, (loop n).1 + (loop n).2)

example : [0, 1, 2, 3, 4, 5].map fib' = [0, 1, 1, 2, 3, 5] := rfl


/-- `fib'` satisfies the same equation as `fib` -/
theorem fib'_add (n : Nat) : fib' n + fib' (n + 1) = fib' (n + 2) := by
  sorry


/-- `fib'` is equal to `fib` -/
example : fib' = fib := by
  sorry