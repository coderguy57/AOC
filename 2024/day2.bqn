i ← •FLines "input/day2.txt"
Split ← (¬-˜⊢×·+`»⊸>)∘≠⊔⊢

r ← 1(↓--⊸↓)¨ {•ParseFloat¨ ' ' Split 𝕩}¨ i
Sign ← {1=≠⍷×𝕩}
Diff ← {(3≥⌈´|𝕩)∧(1≤⌊´|𝕩)}
Ok ← {((Sign 𝕩) ∧ (Diff 𝕩))}
sol1 ← +´Ok¨ r
•Show sol1

t ← {•ParseFloat¨ ' ' Split 𝕩}¨ i
t ← {𝕩⊸{𝕩/𝕨}˘(¬=⌜˜↕≠𝕩)}¨ t
t ← 1(↓--⊸↓)˘¨ t
sol2 ← +´∨´¨Ok ˘¨t
•Show sol2