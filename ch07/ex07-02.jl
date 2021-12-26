function mysqrt(a)
    x = a / 2
    while true
        y = (x + a/x) / 2
        if y == x
            break
        end
        x = y
    end
    return x
end


function testsquareroot()
    println("a\tmysqrt\tsqrt\tdiff")
    println("-\t------\t----\t----")
    for a in 1:9
        mysqrtval = mysqrt(a)
        sqrtval = sqrt(a)
        sqrtdiff = abs(mysqrtval - sqrtval)
        println("$a\t$mysqrtval\t$sqrtval\t$sqrtdiff")
    end
end
