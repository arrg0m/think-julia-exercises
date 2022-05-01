function disassemble(s)
    x = Dict()
    for ch in s
        x[ch] = get(x, ch, 0) + 1
    end
    return x
end


function mostfrequent(s)
    dct = disassemble(s)
    for (k, v) in sort(collect(dct), by = x->-x[2])
        println(k, " (", v, ")")
    end
end
