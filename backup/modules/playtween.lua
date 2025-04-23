local Module = {}
Module.ClassName = "PlayTween"

local TweenService = game:GetService("TweenService")

function Module:PlayTween(...)
    local Tween = TweenService:Create(...)
    Tween:Play()
    return Tween
end

return Module
