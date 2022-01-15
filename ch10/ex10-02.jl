function cumulsum(arr)
    res = []
    tmpsum = 0
    for item in arr
        tmpsum += item
        push!(res, tmpsum)
    end
    res
end
