i ← •FBytes "input/day11.txt"
str ← •Import "libs/strings.bqn"
i ← str.ToNats i

Blink ← {
    t ← ∘‿2⥊ ⟨⟩ {
        c‿s ← 𝕨
        l ← ⌊1+10⋆⁼1⌈s
        t ← {𝕩 = 0 ?
            1;
            ¬2|l ?
                𝕩(⌊∘÷∾|˜)10⋆2×⁼l;
                𝕩×2024} s
        𝕩∾∾c∾¨t
    }˝ 𝕩
    a‿b ← <˘⍉ (1(⊏˘⍋⊸⊏⊢) t)
    a ↩ -⟜»(≠⟜«b)/+`a
    ⍉>a‿(⍷b)
}
t ← ⍉2‿∘⥊((≠i)⥊1)∾i
sol1 ← +´⊏˘ Blink⍟25 t
sol2 ← +´⊏˘ Blink⍟75 t

•Show sol1‿sol2