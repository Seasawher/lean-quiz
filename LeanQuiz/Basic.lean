import Mathlib

/-! ## 問題
  以下のコード例の中の `sorry` の部分をコンパイルが通るように埋めてください. -/

/-- `RemoveOnce x l` はリスト `l` から，最初に現れる `x` を削除したリスト.
  もし `l` に `x` が現れない場合は，元の `l` に等しい．-/
def RemoveOnce (x : Nat) : List Nat → List Nat
| [] => []
| a :: as => sorry


/-! 次の3つは，定義が正しければ `rfl` で通ります -/
example : RemoveOnce 7 [1, 2, 0] = [1, 2, 0] := by sorry

example : RemoveOnce 3 [1, 3, 3, 2] = [1, 3, 2] := by sorry

example : RemoveOnce 5 [1, 5, 3, 5, 3] = [1, 3, 5, 3] := by sorry

@[simp]
theorem remove_nil_is_nil (x : Nat) : RemoveOnce x [] = [] := by rfl


/-- `RemoveOnce` による，リストの長さの減少は高々1 -/
example (l : List Nat) (x : Nat) : (RemoveOnce x l).length + 1 ≥ l.length := by
  sorry


/-- `RemoveOnce x l` には，元のリスト `l` に含まれる要素しか含まれない．-/
example (l : List Nat) (x : Nat) : ∀ y, y ∈ RemoveOnce x l → y ∈ l := by
  sorry