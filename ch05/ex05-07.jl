using ThinkJulia

function koch(t, x)
    if x <= 3
        forward(t, x)
    else
        koch(t, x / 3)
        turn(t, -60)
        koch(t, x / 3)
        turn(t, 120)
        koch(t, x / 3)
        turn(t, -60)
        koch(t, x / 3)
    end
end


function snowflake(t, x)
    koch(t, x)
    turn(t, 120)
    koch(t, x)
    turn(t, 120)
    koch(t, x)
end


function sausage(t, x)
    if x <= 10
        forward(t, x)
    else
        sausage(t, x / 4)
        turn(t, -90)
        sausage(t, x / 4)
        turn(t, 90)
        sausage(t, x / 4)
        turn(t, 90)
        sausage(t, x / 4)
        sausage(t, x / 4)
        turn(t, -90)
        sausage(t, x / 4)
        turn(t, -90)
        sausage(t, x / 4)
        turn(t, 90)
        sausage(t, x / 4)
    end
end


function sausageflake(t, x)
    sausage(t, x)
    turn(t, 90)
    sausage(t, x)
    turn(t, 90)
    sausage(t, x)
    turn(t, 90)
    sausage(t, x)
end
