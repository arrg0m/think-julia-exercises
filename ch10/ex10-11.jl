function reversepairs(arr)
    res = []
    for idx in eachindex(arr)
        for jdx in eachindex(arr)
            if idx < jdx && arr[idx][end:-1:1] == arr[jdx]
                push!(res, [arr[idx], arr[jdx]])
            end
        end
    end
    return res
end
