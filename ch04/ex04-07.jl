using ThinkJulia

function arc(t, r, angle)
    n = 90
    len = 2 * π * r / n
    num_arcs = trunc(n * angle / 360)
    forward(t, len)
    for i = 1:num_arcs
        turn(t, -360/n)
        forward(t, len)
    end
end
