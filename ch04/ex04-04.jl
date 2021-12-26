using ThinkJulia

function square(t, len)
    forward(t, len)
    turn(t, -90)
    forward(t, len)
    turn(t, -90)
    forward(t, len)
    turn(t, -90)
    forward(t, len)
end
