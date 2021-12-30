function aabbcc(word)
    for i in firstindex(word):lastindex(word)-5
        if word[i] == word[i+1] && word[i+2] == word[i+3] && word[i+4] == word[i+5]
            return true
        end
    end
    return false
end


function findandcount(filename, criterion)
    cnt = 0
    for line in eachline(filename)
        if criterion(line)
            cnt += 1
            println(line)
        end
    end
    return cnt
end
