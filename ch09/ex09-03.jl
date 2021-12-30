function avoids(word, forbiddens)
    for forbidden in forbiddens
        if forbidden in word
            return false
        end
    end
    return true
end

function avoidsprompt(filename)
    print("list of forbidden words: ")
    forbiddens = readline()
    return avoidslist(filename, forbiddens)
end

function avoidscount(filename, forbiddens)
    cnt_avoid = 0
    for line in eachline(filename)
        if avoids(line, forbiddens)
            cnt_avoid += 1
        end
    end
    return cnt_avoid
end

function bruteforceavoids(filename)
    # Don't try this by yourself - the answer is intuitive enough that you can easily imagine, believe me.
    mincnt = 100000
    minforbiddens = ""
    for l1 in 0:25
        for l2 in (l1+1):25
            for l3 in (l2+1):25
                for l4 in (l3+1):25
                    for l5 in (l4+1):25
                        forbiddens = Char(Int('a') + l1) * Char(Int('a') + l2) * Char(Int('a') + l3) * Char(Int('a') + l4) * Char(Int('a') + l5)
                        cnt = avoidscount(filename, forbiddens)
                        if cnt < mincnt
                            minforbiddens = forbiddens
                            mincnt = cnt
                        end
                    end
                end
            end
        end
    end
    return mincnt, minforbiddens
end

