function usesonly(word, letters)
    for l in 0:25
        chr = Char(Int('a') + l)
        if !(chr in letters) && chr in word
            return false
        end
    end
    return true
end


function usesonlylookup(filename, letters)
    for line in eachline(filename)
        if usesonly(line, letters)
            println(line)
        end
    end
end

