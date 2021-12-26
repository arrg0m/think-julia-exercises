function rotateword(s, rot)
    rotated = ""
    for letter in s
        rotated = rotated * Char((Int(letter) + rot - Int('a')) % 26 + Int('a'))
    end
    return rotated
end
