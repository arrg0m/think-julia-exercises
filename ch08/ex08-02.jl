function ducklings()
    prefixes = "JKLMNOPQ"
    suffix = "ack"

    for letter in prefixes
        if letter == 'O' || letter == 'Q'
            println(letter * "u" * suffix)
        else
            println(letter * suffix)
        end
    end
end
