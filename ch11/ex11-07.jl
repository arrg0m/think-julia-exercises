include("ex11-02.jl")

function ishomophome(a, b)
    # TODO read and parse http://svn.code.sf.net/p/cmusphinx/code/trunk/cmudict/cmudict-0.7b
    return false
end

function isdesirableword(x)
    if len(x) != 5
        return false
    end

    a = x[2] * x[3:5]
    b = x[1] * x[3:5]
    return ishomophome(a, b)
end

function puzzler(filename)
    x = readwords("../ch09/words.txt")
    res = []
    for key in keys(x)
        if isdesirableword(key)
            push!(res, key)
        end
    end
    res
end
