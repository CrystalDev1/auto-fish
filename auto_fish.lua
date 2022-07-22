local toggled = false
local uis = game:GetService('UserInputService')

uis.InputBegan:Connect(function(key, processed) 
    if processed then
        return
    end

    if key.KeyCode == Enum.KeyCode.L then -- Change the letter after "Enum.Keycode." to change the start/stop key
        toggled = not toggled
    end
    
end)

local g = _G
g['scriptValue'] = (g['scriptValue'] and g["scriptValue"] + 1) or 1
local ScriptValue = g['scriptValue']
-- aaa
local rs = game:GetService("RunService")
while true do 
    rs.Heartbeat:Wait()
    if ScriptValue == g['scriptValue'] then
        if toggled then 
            print'fish?'
            game:GetService("ReplicatedStorage").Modules.GlobalInit.RemoteEvents.PlayerCatchFish:FireServer()
            wait(12)
        end 
    else 
        break
    end
end 
