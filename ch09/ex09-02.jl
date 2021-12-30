function hasno_e(word)
    return !('e' in word)
end

function printwithoute(filename)
    count_all = 0
    count_no_e = 0
    for line in eachline(filename)
        count_all += 1
        if hasno_e(line)
            count_no_e += 1
            println(line)
        end
    end
    print("Percentage: $(count_no_e / count_all)")
end
