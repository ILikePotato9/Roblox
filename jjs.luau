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
local maincorner = Instance.new("UICorner")
maincorner.CornerRadius = UDim.new(0,8)
maincorner.Parent = mainframe
local mainpadding = Instance.new("UIPadding")
mainpadding.PaddingTop = UDim.new(0, 8)
mainpadding.PaddingBottom = UDim.new(0, 8)
mainpadding.PaddingLeft = UDim.new(0, 8)
mainpadding.PaddingRight = UDim.new(0, 8)
mainpadding.Parent = mainframe
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
local function openGui()
    openbtn.Visible = false
end
local function closeGui()
    openbtn.Visible = true
end
local function quitGui()
    screengui:Destroy()
end
openbtn.Activated:Connect(openGui)
