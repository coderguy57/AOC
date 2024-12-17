i ← •FLines "input/day13.txt"
str ← •Import "libs/strings.bqn"
i ← ∘‿6⥊∾ str.ToNats¨ i

Solve ← {
     input‿offset ← 𝕩
    +´ {
        x0‿y0‿x1‿y1‿x2‿y2 ← 𝕩
        x2‿y2+↩offset
        b ← ((y2×x0)-x2×y0)÷((y1×x0)-x1×y0)
        a ← (x2 - b×x1)÷x0
        ∧´ ⌊⊸=¨ a‿b ? b+a×3 ; 0
    }˘ input
}

sol1 ← Solve i‿0
sol2 ← Solve i‿10000000000000

•Show sol1‿sol2