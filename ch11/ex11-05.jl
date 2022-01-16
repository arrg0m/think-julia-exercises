function hasduplicates(arr)
    dct = Dict()
    for item in arr
        dct[item] = get(dct, item, 0) + 1
    end
    for value in values(dct)
        if value >= 2
            return true
        end
    end
    return false
end
