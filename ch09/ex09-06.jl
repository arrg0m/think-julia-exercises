function isabecedarian(word)
    for i = firstindex(word)+1:lastindex(word)
        if word[i-1] > word[i]
            return false
        end
    end
    return true
end


function isabecedarianlookup(filename)
    cnt = 0
    for line in eachline(filename)
        if isabecedarian(line)
            println(line)
            cnt += 1
        end
    end
    return cnt
end
