local Module = {}
Module.ClassName = "Execute"

function Module:ExecuteFunction(Callback, ...)
    if Callback and type(Callback) then
        task.spawn(Callback, ...)
    else
        error("The given closure is not a function, expected: " .. type(Callback))
    end
end

return Module
