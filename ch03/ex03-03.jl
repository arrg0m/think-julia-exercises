function dotwice(func, val)
    func(val)
    func(val)
end

function dofour(func, val)
    dotwice(func, val)
    dotwice(func, val)
end
