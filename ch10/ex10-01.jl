function nestedsum(arr)
    totalsum = 0
    for item in arr
        totalsum += sum(item)
    end
    totalsum
end

