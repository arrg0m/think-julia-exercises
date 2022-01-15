function hasduplicates(arr)
    sortedarr = sort(arr)
    for idx in eachindex(sortedarr)
        if idx > 1 && sortedarr[idx-1] == sortedarr[idx]
            return true
        end
    end
    return false
end
