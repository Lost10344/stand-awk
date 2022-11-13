local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.1208337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "https://www.roblox.com/library/10256042104/q8m5v71hg2MDu5REx5D-o"
ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)


local dsinv = "https://discord.gg/EGwQdWPG3y"

local d
local f = pcall(function()
    d = game:HttpGet("https://raw.githubusercontent.com/muzrblx/muz-scripts/main/NanoLoader/Scripts/"..game.PlaceId..".lua")
end)
if f == true then
    loadstring(d)()
else
    game.Players.LocalPlayer:Kick("Game not supported "..dsinv)
    setclipboard(dsinv)
end
