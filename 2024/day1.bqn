in ← •file.Bytes "input/day1.txt"

Split ← (¬-˜⊢×·+`»⊸>)∘≠⊔⊢
in ↩ (@+10) Split in
in ↩ >' ' Split¨ in
in ↩ •ParseFloat¨ in
t ← in

sol1 ← +´|-´˘⍉∧˘⍉t

l‿r ← <˘⍉t
count ← (/⁼⊐r)∾0×r
index ← ⊐r∾l
ic ← index⊏count
sol2 ← +´{(𝕩⊏r∾l)×𝕩⊏ic}(≠l)+↕≠l

•Out "Part 1: "
•Show sol1
•Out "Part 2: "
•Show sol2