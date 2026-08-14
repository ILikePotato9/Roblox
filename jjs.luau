local players = game:GetService("Players")
local player = players.LocalPlayer
local playergui = player:WaitForChild("PlayerGui")
local screengui = Instance.new("ScreenGui")
screengui.Name = "Very Secret Gui"
screengui.ResetOnSpawn = false
screengui.Parent = playergui
local openbtn = Instance.new("TextButton")
openbtn.Size = UDim2.new(0.05,0,0.05,0)
openbtn.AnchorPoint = Vector2.new(0.5,0.5)
openbtn.Position = UDim2.new(0.5,0,0.1,0)
openbtn.BackgroundColor3 = Color3.fromHex("000000")
openbtn.TextColor3 = Color3.fromHex("ffffff")
openbtn.TextScaled = true
openbtn.Text = "H"
openbtn.Parent = screengui
local mainframe = Instance.new("Frame")
mainframe.Visible = false
mainframe.Size = UDim2.new(0.5,0,0.5,0)
mainframe.AnchorPoint = Vector2.new(0.5,0.5)
mainframe.Position = UDim2.new(0.5,0,0.5,0)
mainframe.Parent = screengui
local topbar = Instance.new("Frame")
topbar.Size = UDim2.new(1,0,0.1,0)
topbar.Position = UDim2.new(0,0,0,0)
topbar.BackgroundColor3 = Color3.fromHex("000000")
topbar.Parent = mainframe
local title = Instance.new("TextLabel")
title.Text = "Jujutsu Shenanigans"
title.TextScaled = true
title.Size = UDim2.new(0.8,0,1,0)
title.TextXAlignment = Enum.TextXAlignment.Left
title.TextColor3 = Color3.fromHex("ffffff")
title.Parent = topbar
local topbuttonframe = Instance.new("Frame")
topbuttonframe.BackgroundTransparency = 1
topbuttonframe.Size = UDim2.new(0.2,0,1,0)
topbuttonframe.Position = UDim2.new(0.8,0,0,0)
topbuttonframe.Parent = topbar
local hidebtn = Instance.new("TextButton")
hidebtn.Text = "-"
hidebtn.Size = UDim2.new(0.5,0,1,0)
hidebtn.Position = UDim2.new(0,0,0,0)
hidebtn.TextScaled = true
hidebtn.BackgroundTransparency = 1
hidebtn.TextColor3 = Color3.fromHex("ffffff")
hidebtn.Parent = topbuttonframe
local closebtn = Instance.new("TextButton")
closebtn.Text = "X"
closebtn.Size = UDim2.new(0.5,0,1,0)
closebtn.Position = UDim2.new(0.5,0,0,0)
closebtn.TextScaled = true
closebtn.TextColor3 = Color3.fromHex("ffffff")
closebtn.BackgroundTransparency = 1
closebtn.Parent = topbuttonframe
local function openGui()
    openbtn.Visible = false
    mainframe.Visible = true
end
local function closeGui()
    openbtn.Visible = true
    mainframe.Visible = false
end
local function quitGui()
    screengui:Destroy()
end
openbtn.Activated:Connect(openGui)
hidebtn.Activated:Connect(closeGui)
closebtn.Activated:Connect(quitGui)
