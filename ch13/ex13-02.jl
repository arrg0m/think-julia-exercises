function loadFromGutenbergBook(filename, format)
    if format == "list"
        wordList = []
    elseif format == "dict"
        wordDict = Dict()
    end

    cnt = 0

    isContent = false
    for line in readlines(filename)
        if startswith(line, "*** START")
            isContent = true
            continue
        end
        if startswith(line, "*** END")
            isContent = false
            continue
        end
        if isContent == false
            continue
        end
        splittedLines = split(replace(lowercase(line), r"[^a-zA-Z\d\s]" => ""), " ")
        for item in splittedLines
            if item != ""
                cnt += 1
                if format == "list"
                    push!(wordList, item)
                elseif format == "dict"
                    wordDict[item] = get(wordDict, item, 0) + 1
                end
            end
        end
    end
    println("total number of words: $cnt")
    if format == "list"
        return wordList
    elseif format == "dict"
        return wordDict
    end
end  