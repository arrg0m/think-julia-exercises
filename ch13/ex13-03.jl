include("ex13-02.jl")

function mostFrequentItemFromGutenbergBook(filename, top=20)
    wordDict = loadFromGutenbergBook(filename, "dict")
    for (key, value) in sort(collect(wordDict), by = x -> -x[2])
        println("$key\t$value")
        top -= 1
        if top <= 0
            break
        end
    end
end