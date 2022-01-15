function isanagram(a, b)
    charofa = sort(collect(a))
    charofb = sort(collect(b))
    if length(charofa) != length(charofb)
        return false
    end
    for idx in eachindex(charofa)
        if charofa[idx] != charofb[idx]
            return false
        end
    end
    return true
end
