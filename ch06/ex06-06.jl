function first(word)
    first = firstindex(word)
    word[first]
end

function last(word)
    last = lastindex(word)
    word[last]
end

function middle(word)
    first = firstindex(word)
    last = lastindex(word)
    word[nextind(word, first) : prevind(word, last)]
end

function ispalindrome(word)
    if length(word) <= 1
        return true
    else
        if first(word) == last(word)
            return ispalindrome(middle(word))
        else
            return false
        end
    end
end
