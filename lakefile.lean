import Lake
open Lake DSL

package «lean-quiz» where
  -- add any package configuration options here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "80b890f7e8113c7dd0832d09f8caf66cf169dcd3"

@[default_target]
lean_lib «LeanQuiz» where
  -- add any library configuration options here
