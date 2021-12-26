function estimatepi()
    ϵ = 1e-15

    denominator1 = 1
    denominator2 = 1103
    numerator1 = 1
    numerator2 = 1

    con = 2 * sqrt(2) / 9801
    term = con * (denominator1 * denominator2) / (numerator1 * numerator2)

    invpi = 0
    k = 0
    while term > ϵ
        invpi += term
        k += 1
        denominator1 = denominator1 * 4 * k
        denominator2 = denominator2 + 26390
        numerator1 = numerator1 * (k ^ 4)
        numerator2 = numerator2 * (396 ^ 4)
        term = con * (denominator1 * denominator2) / (numerator1 * numerator2)
    end
    return 1 / invpi
end
