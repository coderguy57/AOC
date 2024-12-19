i ← •FLines "input/day19.txt"
str ← •Import "libs/strings.bqn"
towels  ← ", " str.Split ⊑i
c ← 2↓i
StartsWith ← (⊢⟜≠×↑˜⟜≠≡⊢)

Solve ← {
    pattern ← 𝕩 
    visited ← 1∾0⥊˜≠pattern

    Add ← { v←𝕩⊑visited ⋄ visited 𝕨⊸+⌾(𝕩⊸⊑)↩ ⋄ 0<v ? ⟨⟩ ; ≍𝕩 }

    Try ← {
        len ← ⊑𝕩
        v ← len⊑visited
        subpattern ← len↓pattern
        ∧(1↓𝕩) ∾∾ {v Add 𝕩}¨ 1↓len+∧⍷{subpattern StartsWith 𝕩} ¨towels
    }
    Try •_while_ {0≠≠𝕩} ≍0
    ¯1⊑visited
}

# Solve¨ •_timed c
ways ← Solve¨ c
sol1 ← +´ 0< ways
sol2 ← +´ ways

•Show sol1‿sol2