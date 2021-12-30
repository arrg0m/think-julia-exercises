
function printlongerthan(filename, minimumlength)
    for line in eachline(filename)
        if length(replace(line, " " => "")) > 20
            println(line)
        end
    end
end
