using ThinkJulia

function polygon(t, len, n)
    forward(t, len)
    for i = 1:(n-1)
        turn(t, -360/n)
        forward(t, len)
    end
end
