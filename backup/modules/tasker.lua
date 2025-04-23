local Module = {}
Module.ClassName = "Tasker"

local Tasker = {}

function Module:IsExistingTask(TaskName)
    return Tasker[TaskName] and true or false
end

function Module:MakeTask(TaskName, TaskConnection, TaskCallback)
    if not self:IsExistingTask(TaskName) then
        Tasker[TaskName] = TaskConnection:Connect(TaskCallback)
    end
end

function Module:RemoveTask(TaskName)
    if self:IsExistingTask(TaskName) then
        Tasker[TaskName]:Disconnect()
        Tasker[TaskName] = nil
    end
end

return Module
