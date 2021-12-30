function checkreversible(a, b)
    return 0 <= a <= 99 && 0 <= b <= 99 && a ÷ 10 == b % 10 && a % 10 == b ÷ 10
end

function countreversible(diff)
    cnt = 0
    for age in 1:99-diff
        if checkreversible(age, age + diff)
            cnt += 1
        end
    end
    return cnt
end

function printreversible(diff)
    for age in 1:99-diff
        if checkreversible(age, age + diff)
            println(age, ", ", age + diff)
        end
    end
end

function execute()
    for diff in 1:99
        c = countreversible(diff)
        if c == 8
            println("diff: $diff")
            printreversible(diff)
        end
    end
end

