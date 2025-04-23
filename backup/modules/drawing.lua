local Module = {}
Module.ClassName = "Drawing"

function Module:Create2DDrawing(DrawingType, Properties)
    local Draw = Drawing.new(DrawingType)
    if Properties then
        for _, Child in next, Properties do
            Draw[_] = Child
        end
    end
    return Draw
end

return Module
