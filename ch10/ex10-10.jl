function inbisect(arr, x)
    l = length(arr)
    if l == 0
        return false
    elseif l == 1
        return arr[1] == x
    else
        mididx = l ÷ 2
        if arr[mididx] == x
            return true
        elseif arr[mididx] > x
            return inbisect(arr[1:mididx-1], x)
        else
            return inbisect(arr[mididx+1:end], x)
        end
    end
    return false
end
