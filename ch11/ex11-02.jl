function readwords(filename)
    f = open(filename)
    r = readlines(f)

    dct = Dict()
    for word in r
        dct[word] = get(dct, word, 0) + 1
    end
    return dct
end
