local Module = {}
Module.ClassName = "JSON"

local HttpService = game:GetService("HttpService")

function Module:JSEncode(Table)
    if Table then
        local Success, Response = pcall(HttpService.JSONEncode, HttpService, Table)
        if Success and Response then
            return Response
        end
    end
end

function Module:JSDecode(String)
    if String then
        local Success, Response = pcall(HttpService.JSONDecode, HttpService, String)
        if Success and Response then
            return Response
        end
    end
end

return Module
