function evalloop()
    y = 0
    while true
        print("input > ")
        x = readline()
        if x == "done"
            break
        end
        y = eval(Meta.parse(x))
        println(y)
    end
    y
end
