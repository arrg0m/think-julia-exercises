function issort(arr)
    sortedarr = sort(arr)
    for idx in eachindex(arr)
        if sortedarr[idx] != arr[idx]
            return false
        end
    end
    return true
end
