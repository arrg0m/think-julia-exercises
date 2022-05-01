function inbisectidx(arr, x, curr=0)
    # FIXME fix this implementation
    l = length(arr)
    if l == 0
        return curr
    elseif l == 1
        return curr
    else
        mididx = l ÷ 2
        if arr[mididx] == x
            return curr + mididx
        elseif arr[mididx] > x
            return inbisectidx(arr[1:mididx-1], x, curr + mididx)
        else
            return inbisectidx(arr[mididx+1:end], x, curr + mididx)
        end
    end
end


function randomwordfrombook(filename)
    wordDict = loadFromGutenbergBook(filename, "dict")

    wordList = keys(wordDict)
    
    cumulArray = []
    curr = 0
    for (_, value) in wordDict
        curr += value
        push!(cumulArray, curr)
    end

    rnd = rand(1:curr) 
    idx = inbisectidx(cumulArray, rnd)
    return wordList[idx]
end