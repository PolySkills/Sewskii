local Target = nil
local cam = workspace.CurrentCamera
local uis = game:GetService("UserInputService")
function GetNearestPerson()
    local RequiredDistance
    RequiredDistance = 125

    if Target ~= nil then
        Target = nil
    end

    for _, v in next, game.Players:GetPlayers() do
        if v ~= game.Players.LocalPlayer then
            local Vector, OnScreen = cam:WorldToViewportPoint(v.Character.Head.Position)
            local Distance = (Vector2.new(uis:GetMouseLocation().X, uis:GetMouseLocation().Y) - Vector2.new(Vector.X, Vector.Y)).Magnitude
            if Distance <= RequiredDistance and OnScreen == true then
                RequiredDistance = Distance
                Target = v
                return Target
            end
        end
    end
end

uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Q and not uis:GetFocusedTextBox() then
        if Target then
            Target = nil
        else
            Target = GetNearestPerson()
        end
    end
end)

game["Run Service"].RenderStepped:Connect(function(delta)
    if Target ~= nil and Target.Character ~= nil then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame + Vector3.new(0, 4, 0)
    end
end)
