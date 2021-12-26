function backwardperline(s)
    index = lastindex(s)
    while index > 0
        println(s[index])
        index = prevind(s, index)
    end
end
