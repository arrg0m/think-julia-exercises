include("ex13-02.jl")

function loadFromWordListFile(wordListFileName)
    wordList = []
    for line in readlines(wordListFileName)
        push!(wordList, line)
    end
    return wordList
end

function wordsNotInWordList(fileName, wordListFileName="ch09/words.txt")
    bookWordList = loadFromGutenbergBook(fileName, "list")
    bookWordSet = Set(bookWordList)

    listWordList = loadFromWordListFile(wordListFileName)
    listWordSet = Set(listWordList)

    return setdiff(bookWordSet, listWordSet)
end