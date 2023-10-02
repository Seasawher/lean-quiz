import Mathlib

/-- `RemoveOnce x l` is the list `l` with the appearance of `x` removed.
  If `x` does not appear in `l`, it equals the original `l`.-/
def RemoveOnce (x : Nat) : List Nat → List Nat
| [] => []
| a :: as => sorry


/- If the definition of RemoveOnce is correct, just replace `sorry` with `rfl` and it will pass. -/
example : RemoveOnce 7 [1, 2, 0] = [1, 2, 0] := by sorry


/- If the definition of RemoveOnce is correct, just replace `sorry` with `rfl` and it will pass. -/
example : RemoveOnce 5 [1, 5, 3, 5, 3] = [1, 3, 5, 3] := by sorry


@[simp]
theorem remove_nil_is_nil (x : Nat) : RemoveOnce x [] = [] := by rfl


/-- The length of the list is reduced by `RemoveOnce` by at most 1 -/
example (l : List Nat) (x : Nat) : (RemoveOnce x l).length + 1 ≥ l.length := by
  sorry


/-- `RemoveOnce x l` contains only the elements of the original list `l`. -/
example (l : List Nat) (x : Nat) : ∀ y, y ∈ RemoveOnce x l → y ∈ l := by
  sorry