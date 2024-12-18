i ← •FLines "input/day18.txt"
str ← •Import "libs/strings.bqn"
i ↩ str.ToNats ¨i

s ← 71‿71
d ← >⟨1‿0,0‿1,¯1‿0,0‿¯1⟩

Solve ← {
    b ← 𝕩
    map ← (⊢↑˝·≍⟜¬2+≢) 0¨⌾((b↑i)⊸⊑) s⥊1

    Add ← { 𝕨 < 𝕩⊑score? score 𝕨⌾(𝕩⊸⊑)↩ ⋄ 𝕨∾𝕩; ⟨⟩ }
    Empty ← {1=𝕩⊑map}

    queue ← <0‿1‿1
    score ← (2+s)⥊∞
    Move ← {
        score‿x‿y ← ⊑𝕩
        p ← (x‿y⊸+)˘d
        (1↓𝕩)∾<˘∘‿3⥊∾{Empty 𝕩 ?  (score+1) Add 𝕩 ; ⟨⟩}¨<˘p
    }
    Move •_while_ { 0≠≠𝕩 } queue
    s⊑score
}

sol1 ← Solve 1024

notOk ← ⊑{
    l‿h ← 𝕩 ⋄ m ← ⌊0.5×l+h
    ok ← ∞≠Solve m
    {ok ? (m+1)‿h ; l‿m}
} •_while_ { ≠´𝕩  } 1024‿(≠i)
sol2 ← (notOk-1)⊑i

•Show sol1‿sol2