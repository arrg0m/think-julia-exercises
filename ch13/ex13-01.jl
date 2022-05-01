function loadFromFile(filename)
    wordList = []
    for line in readlines(filename)
        splittedLines = split(replace(lowercase(line), r"[.|,|']" => ""), " ")
        for item in splittedLines
            if item != ""
                push!(wordList, item)
            end
        end
    end
    return wordList
end