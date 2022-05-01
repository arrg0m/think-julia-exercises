include("ex12-02.jl")

function anagramdict(filename)
    x = Dict()
    for line in eachline(filename)
        dct = disassemble(line)
        x[dct] = push!(get(x, dct, []), line)
    end

    return x
end


function anagrams(filename)
    for (k, v) in anagramdict(filename)
        if length(v) > 1
            println(v)
        end
    end
end

function anagramsdesc(filename)
    for (k, v) in sort(collect(anagramdict(filename)), by = x -> -length(x[2]))
        if length(v) > 1
            println(v)
        end
    end
end
