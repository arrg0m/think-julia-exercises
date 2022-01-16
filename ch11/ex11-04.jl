known = Dict()

function ack(m, n)
    if (m, n) in keys(known)
        return known[(m, n)]
    end

    if m == 0
        ans = n + 1
    elseif n == 0
        ans = ack(m-1, 1)
    else
        b = ack(m, n-1)
        ans = ack(m-1, b)  # hmm...
    end
    known[(m, n)] = ans
    return ans
end
