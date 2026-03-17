task.wait(3) -- wait for UI to load

local function changeText(v)
    if v:IsA("TextLabel") then

        -- Secret -> OG
        if v.Text == "Secret" then
            v.Text = "OG"
            v.TextColor3 = Color3.fromRGB(255,221,85)

            if not v:FindFirstChildOfClass("UIStroke") then
                local stroke = Instance.new("UIStroke")
                stroke.Color = Color3.fromRGB(0,0,0)
                stroke.Thickness = 2
                stroke.Parent = v
            end
        end

    end
end

for _, v in pairs(game:GetDescendants()) do
    changeText(v)
end

game.DescendantAdded:Connect(function(v)
    changeText(v)
end)
