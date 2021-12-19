include("ex04-05.jl")

function circle(t, r)
    n = 90
    len = 2 * π * r / n
    polygon(t, r, n)
end
