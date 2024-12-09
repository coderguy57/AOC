i ← •FLines "input/day7.txt"
str ← •Import "libs/strings.bqn"
i ← str.ToNats ¨i

Concat ← {𝕩 + 𝕨 × 10⋆⌈ 10 ⋆⁼ 𝕩 + 0.5}

Solve ← {
    r ← ⊑𝕩
    n ← 1↓𝕩
    b ← ⥊(∾⌜⍟(¯2+≠n))˜ ↕𝕨
    •Show 𝕩
    r×⊑r ∊ { ⊑{
        a‿b‿c ← 𝕩
        f ← (⊑c)⊑+‿×‿Concat
        a F↩ ⊑b
        a‿{a>r?⟨⟩;(1↓b)}‿(1↓c)
    } •_while_ { 0<≠1⊑𝕩 } (⊑n)‿(1↓n)‿𝕩 } ¨b
}

sol1 ← +´ 2 Solve¨ i
sol2 ← +´ 3 Solve¨ i