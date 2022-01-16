function invertdict(d)
    inverse = Dict()
    for key in keys(d)
        val = d[key]
        push!(get!(inverse, val, []), key)
    end
    inverse
end
