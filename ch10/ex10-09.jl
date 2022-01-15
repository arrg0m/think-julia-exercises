function readwordspush(filename)
    f = open(filename)
    x = readlines(f)
    arr = []
    for item in x
        push!(arr, item)
    end
    close(f)
    arr
end

function readwordsidiom(filename)
    f = open(filename)
    x = readlines(f)
    arr = []
    for item in x
        arr = [arr..., item]
    end
    close(f)
    arr
end
