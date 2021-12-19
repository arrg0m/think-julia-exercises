using ThinkJulia

function square(t, len)
    @svg begin
        forward(t, len)
        turn(t, -90)
        forward(t, len)
        turn(t, -90)
        forward(t, len)
        turn(t, -90)
        forward(t, len)
    end
end
