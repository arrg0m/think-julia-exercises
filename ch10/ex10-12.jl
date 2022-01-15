function preprocess(arr)
    res = []
    sort!(arr, by=length)
    current_length = length(arr[1])

    tmpres = []
    for idx in eachindex(arr)
        if idx == 1
            push!(tmpres, arr[idx])
            continue
        else
            if length(arr[idx]) != length(arr[idx-1])
                push!(res, tmpres)
               tmpres = []
            end
            push!(tmpres, arr[idx])
        end
    end
    push!(res, tmpres)
    return res
end

function getinterlockedstring(arr)
    for item in arr
        if length(item) != length(arr[1])
            throw(ArgumentError())
        end
    end
    interlocked = ""
    for itr in eachindex(arr[1])
        for item in arr
            interlocked *= item[itr]
        end
    end
    return interlocked
end


function interlock(filename)
    f = open(filename)
    lst = readlines(filename)
    sort!(lst, by=length)

    splitted_arr = preprocess(lst)

    res = []

    for subarr in splitted_arr
        for a in subarr
            for b in subarr
                candidates = [a, b]
                interlocked = getinterlockedstring(candidates)
                if interlocked in lst
                    push!(res, [candidates, interlocked])
                end
            end
        end
    end
    res
end

function interlockthree(filename)
    f = open(filename)
    lst = readlines(filename)
    sort!(lst, by=length)

    splitted_arr = preprocess(lst)

    res = []

    for subarr in splitted_arr
        for a in subarr
            for b in subarr
                for c in subarr
                    candidates = [a, b, c]
                    interlocked = getinterlockedstring(candidates)
                    if interlocked in lst
                        push!(res, [candidates..., interlocked])
                    end
                end
            end
        end
    end
    res
end
