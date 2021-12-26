function ispower(a, b)
    if b == 1
        return false
    if a < b
        return false
    elseif a == b
        return true
    else
        return a % b == 0 && ispower(a ÷ b, b)
    end
end
