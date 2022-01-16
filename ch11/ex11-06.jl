include("../ch08/ex08-11.jl")

function isrotatedpair(a, b)
    len = length(a)
    if len != length(b)
        return false
    end

    for idx in 1:len
        if rotateword(a, idx) == b
            return true
        end
    end
    return false
end


function findrotateword(arr)
    len = length(arr)
    res = []
    for idx in 1:len
        for jdx in idx+1:len
            if isrotatedpair(arr[idx], arr[jdx])
                push!(res, [arr[idx], arr[jdx]])
            end
        end
    end
    return res
end
