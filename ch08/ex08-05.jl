include("ex08-04.jl")

function count(word, chr)
    counter = 0
    for letter in word
        if letter == chr
            counter = counter += 1
        end
    end
    return counter
end


function countwithfind(word, chr)
    counter = 0
    nextidx = find(word, chr, 1)
    while nextidx != -1
        counter += 1
        nextidx = find(word, chr, nextidx + 1)
    end
    return counter
end
