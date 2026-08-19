-- Services
local players = game:GetService("Players")
-- Variables
local player = players.LocalPlayer
local playergui = player:WaitForChild("PlayerGui")
local luminespon = false
local colors = {
    [true] = Color3.fromHex("00ff00"),
    [false] = Color3.fromHex("ff0000")
}
local npcs = game:GetService("Workspace"):WaitForChild("_NPCS_")
local lumincolors = {
    ["Green Lumin"] = Color3.fromHex("00ff00"),
    ["Purple Lumin"] = Color3.fromHex("ff00ff"),
    ["Red Lumin"] = Color3.fromHex("ff0000"),
    ["White Lumin"] = Color3.fromHex("ffffff"),
    ["Worm Lumin"] = Color3.fromHex("00ffff"),
}
-- Gui
local screengui = Instance.new("ScreenGui")
screengui.ResetOnSpawn = false
screengui.Parent = playergui
local openbtn = Instance.new("TextButton")
openbtn.Text = "H"
openbtn.TextColor3 = Color3.fromHex("ffffff")
openbtn.TextScaled = true
openbtn.BackgroundColor3 = Color3.fromHex("000000")
openbtn.Size = UDim2.new(0.05,0,0.05,0)
openbtn.AnchorPoint = Vector2.new(0.5,0.5)
openbtn.Position = UDim2.new(0.5,0,0.1,0)
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
title.Text = " Wonderland"
title.TextScaled = true
title.TextColor3 = Color3.fromHex("ffffff")
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.Fantasy
title.Size = UDim2.new(0.8,0,1,0)
title.Position = UDim2.new(0,0,0,0)
title.BackgroundTransparency = 1
title.Parent = topbar
local btnframe = Instance.new("Frame")
btnframe.BackgroundTransparency = 1
btnframe.Size = UDim2.new(0.2,0,1,0)
btnframe.Position = UDim2.new(0.8,0,0,0)
btnframe.Parent = topbar
local hidebtn = Instance.new("TextButton")
hidebtn.Text = "-"
hidebtn.BackgroundTransparency = 1
hidebtn.Size = UDim2.new(0.5,0,1,0)
hidebtn.Position = UDim2.new(0,0,0,0)
hidebtn.TextScaled = true
hidebtn.TextColor3 = Color3.fromHex("ffffff")
hidebtn.Parent = btnframe
local quitbtn = Instance.new("TextButton")
quitbtn.Text = "X"
quitbtn.TextScaled = true
quitbtn.Size = UDim2.new(0.5,0,1,0)
quitbtn.Position = UDim2.new(0.5,0,0,0)
quitbtn.BackgroundTransparency = 1
quitbtn.TextColor3 = Color3.fromHex("ffffff")
quitbtn.Parent = btnframe
local sidebar = Instance.new("ScrollingFrame")
sidebar.Size = UDim2.new(0.2,0,0.9,0)
sidebar.Position = UDim2.new(0,0,0.1,0)
sidebar.BackgroundColor3 = Color3.fromHex("000000")
sidebar.AutomaticCanvasSize = Enum.AutomaticSize.Y
sidebar.ScrollBarThickness = 0
sidebar.Parent = mainframe
local sidelist = Instance.new("UIListLayout")
sidelist.SortOrder = Enum.SortOrder.LayoutOrder
sidelist.Parent = sidebar
local mainbtn = Instance.new("TextButton")
mainbtn.Text = "Main"
mainbtn.TextScaled = true
mainbtn.TextColor3 = Color3.fromHex("ffffff")
mainbtn.BackgroundColor3 = Color3.fromHex("2e2e2e")
mainbtn.Size = UDim2.new(1,0,0,30)
mainbtn.Parent = sidebar
local main = Instance.new("ScrollingFrame")
main.Size = UDim2.new(0.8,0,0.9,0)
main.Position = UDim2.new(0.2,0,0.1,0)
main.BackgroundColor3 = Color3.fromHex("2e2e2e")
main.AutomaticCanvasSize = Enum.AutomaticSize.Y
main.ScrollBarThickness = 0
main.Parent = mainframe
local mainlist = Instance.new("UIListLayout")
mainlist.SortOrder = Enum.SortOrder.LayoutOrder
mainlist.Parent = main
local luminesp = Instance.new("Frame")
luminesp.Size = UDim2.new(1,0,0,45)
luminesp.BackgroundColor3 = Color3.fromHex("000000")
luminesp.Parent = main
local lumintext = Instance.new("TextLabel")
lumintext.Text = "Lumin esp"
lumintext.TextXAlignment = Enum.TextXAlignment.Left
lumintext.Size = UDim2.new(0.9,0,1,0)
lumintext.TextScaled = true
lumintext.TextColor3 = Color3.fromHex("ffffff")
lumintext.Position = UDim2.new(0,0,0,0)
lumintext.BackgroundTransparency = 1
lumintext.Parent = luminesp
local luminframe = Instance.new("Frame")
luminframe.BackgroundColor3 = Color3.fromHex("ff0000")
luminframe.Size = UDim2.new(0.1,0,1,0)
luminframe.Position = UDim2.new(0.9,0,0,0)
luminframe.Parent = luminesp
local luminbtn = Instance.new("TextButton")
luminbtn.Text = ""
luminbtn.Size = UDim2.new(1,0,1,0)
luminbtn.BackgroundTransparency = 1
luminbtn.Parent = luminesp
-- Functions
local function show()
    openbtn.Visible = false
    mainframe.Visible = true
end
local function hide()
    openbtn.Visible = true
    mainframe.Visible = false
end
local function close()
    screengui:Destroy()
end
-- Events
openbtn.Activated:Connect(show)
hidebtn.Activated:Connect(hide)
quitbtn.Activated:Connect(close)
luminbtn.Activated:Connect(function()
    luminespon = not luminespon
    luminframe.BackgroundColor3 = colors[luminespon]
    if luminespon then
        for _,child in ipairs(npcs:GetChildren()) do
            if child.Name:lower():find("lumin") and luminespon then
                local highlight = Instance.new("Highlight")
                highlight.Name = "superSecretEspL"
                highlight.FillTransparency = 0.5
                highlight.FillColor = lumincolors[child.Name]
                highlight.Parent = child
            end
        end
    else
        for _,decendant in ipairs(npcs:GetChildren()) do
            if decendant.Name == "superSecretEspL" then
                decendant:Destroy()
            end
        end
    end
end)
npcs.ChildAdded:Connect(function(child)
    if child.Name:lower():find("lumin") and luminespon then
        local highlight = Instance.new("Highlight")
        highlight.Name = "superSecretEspL"
        highlight.FillTransparency = 0.5
        highlight.FillColor = lumincolors[child.Name]
        highlight.Parent = child
    end
end)
