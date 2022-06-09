local main = Instance.new("ScreenGui")
local top = Instance.new("Frame")
local back = Instance.new("Frame")
local top_2 = Instance.new("TextLabel")
local credits = Instance.new("TextLabel")
local target = Instance.new("TextBox")
local queue = Instance.new("TextLabel")
local rename = Instance.new("TextButton")
local ignore = {"Signals", "RobloxReplicatedStorage", "DefaultChatSystemEvents"}

local find = function(sub, str)
	for i,v in pairs(sub) do
		if v:find(str) or v == str then
			return v
		end
	end
end

--Properties:
main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

top.Name = "top"
top.Parent = main
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
back.Position = UDim2.new(-0.00343642617, 0, 5.19999981, 0)
back.Size = UDim2.new(0, 293, 0, 167)

top_2.Name = "top"
top_2.Parent = top
top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
top_2.BackgroundTransparency = 1.000
top_2.Position = UDim2.new(0.00343642617, 0, 4.83333254, 0)
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
credits.Position = UDim2.new(0.00343642617, 0, 6.26666641, 0)
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
target.Position = UDim2.new(0.0206185561, 0, 8.86666584, 0)
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
rename.Position = UDim2.new(0.0206185561, 0, 7.19550657, 0)
rename.Size = UDim2.new(0, 278, 0, 40)
rename.Font = Enum.Font.SourceSansLight
rename.Text = "Rename"
rename.TextColor3 = Color3.fromRGB(255, 255, 255)
rename.TextSize = 23.000

-- CHECK GAME --
if game.PlaceId == 8915359921 then
	queue.Text = "Replication Queue: 1"
end

-- SLAVE'S WORK -- 
for i,slaves in pairs(game:GetDescendants()) do
	if slaves:IsA("RemoteEvent") then
		rename.MouseButton1Down:Connect(function()
			slaves:FireServer(target.Text, {Value = target.Text})
		end)
	end
end