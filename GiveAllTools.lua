for i,v in pairs(game:GetDescendants()) do
    if v:IsA("Tool") then
        local tool = v:Clone()
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
end

workspace.ChildAdded:Connect(function(child)
    if child:IsA("Tool") then
        local handle = child:WaitForChild("Handle")
        local height = (0.5 * RootPart.Size.Y) + game.Players.LocalPlayer.Character.Humanoid.HipHeight
        game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Vector3.new(handle.Position.X, handle.Position.Y + height, handle.Position.Z)
    end
end)