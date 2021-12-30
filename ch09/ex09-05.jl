function usesall(word, letters)
    for letter in letters
        if !(letter in word)
            return false
        end
    end
    return true
end

function usesalllookup(filename, letters)
    cnt_used = 0
    for line in eachline(filename)
        if usesall(line, letters)
            cnt_used += 1
            println(line)
        end
    end
    return cnt_used
end
