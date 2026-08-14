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
local function openGui()
    openbtn.Visible = false
end
openbtn.Activated:Connect(openGui)
