function histogram(s)
    d = Dict()
    for c in s
        if c ∉ keys(d)
            d[c] = 1
        else
            d[c] += 1
        end
    end
    d
end

function choosefromhist(hist)
    totalcount = sum(values(hist))
    rnd = rand(1:totalcount)
    for (key, value) in hist
        rnd -= value
        if rnd <= 0
            return key
        end
    end
end