function istriangle(a, b, c)
    a > 0 && b > 0 && c > 0 && a + b > c && b + c > a && c + a > b
end


function istriangleprompt()
    print("a = "); a = parse(Int64, readline())
    print("b = "); b = parse(Int64, readline())
    print("c = "); c = parse(Int64, readline())
    print("Can the numbers a, b and c format triangle? ", istriangle(a, b, c))
end
