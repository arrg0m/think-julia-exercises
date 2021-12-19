using ThinkJulia

function square(t)
    @svg begin
        forward(t, 100)
        turn(t, -90)
        forward(t, 100)
        turn(t, -90)
        forward(t, 100)
        turn(t, -90)
        forward(t, 100)
    end
end
