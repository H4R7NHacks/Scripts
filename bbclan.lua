-- Gui to Lua
-- Version: 3.2

-- Instances:

local byH4R7N = Instance.new("ScreenGui")
local Menu = Instance.new("Frame")
local cp = Instance.new("TextBox")
local crowns = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local jointheclan = Instance.new("TextButton")
local bpclaim = Instance.new("TextButton")
local cpbutton = Instance.new("TextButton")
local crownsbutton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

byH4R7N.Name = "byH4R7N"
byH4R7N.Parent = game.CoreGui.RobloxGui
byH4R7N.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Menu.Name = "Menu"
Menu.Parent = byH4R7N
Menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Menu.BorderColor3 = Color3.fromRGB(0, 0, 0)
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0.374441832, 0, 0.25, 0)
Menu.Size = UDim2.new(0.25, 0, 0.5, 0)
Menu.Active = true
Menu.Draggable = true

cp.Name = "cp"
cp.Parent = Menu
cp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
cp.BorderColor3 = Color3.fromRGB(0, 0, 0)
cp.BorderSizePixel = 0
cp.Position = UDim2.new(0, 0, 0.518518507, 0)
cp.Size = UDim2.new(1, 0, 0.100000001, 0)
cp.Font = Enum.Font.Unknown
cp.Text = "CP miktarını girin."
cp.TextColor3 = Color3.fromRGB(255, 255, 255)
cp.TextScaled = true
cp.TextSize = 14.000
cp.TextWrapped = true

crowns.Name = "crowns"
crowns.Parent = Menu
crowns.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
crowns.BorderColor3 = Color3.fromRGB(0, 0, 0)
crowns.BorderSizePixel = 0
crowns.Position = UDim2.new(0, 0, 0.763888896, 0)
crowns.Size = UDim2.new(1, 0, 0.100000001, 0)
crowns.Font = Enum.Font.Unknown
crowns.Text = "Crowns miktarını girin."
crowns.TextColor3 = Color3.fromRGB(255, 255, 255)
crowns.TextScaled = true
crowns.TextSize = 14.000
crowns.TextWrapped = true

TextLabel.Parent = Menu
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.00531914877, 0, 0, 0)
TextLabel.Size = UDim2.new(0.99000001, 0, 0.100000001, 0)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "by H4R7N ;)"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

jointheclan.Name = "jointheclan"
jointheclan.Parent = Menu
jointheclan.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
jointheclan.BorderColor3 = Color3.fromRGB(0, 0, 0)
jointheclan.BorderSizePixel = 0
jointheclan.Position = UDim2.new(0, 0, 0.171296299, 0)
jointheclan.Size = UDim2.new(1, 0, 0.100000001, 0)
jointheclan.Font = Enum.Font.Unknown
jointheclan.Text = "Klana katıl."
jointheclan.TextColor3 = Color3.fromRGB(0, 0, 0)
jointheclan.TextScaled = true
jointheclan.TextSize = 14.000
jointheclan.TextWrapped = true

bpclaim.Name = "bpclaim"
bpclaim.Parent = Menu
bpclaim.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
bpclaim.BorderColor3 = Color3.fromRGB(0, 0, 0)
bpclaim.BorderSizePixel = 0
bpclaim.Position = UDim2.new(0, 0, 0.319444448, 0)
bpclaim.Size = UDim2.new(1, 0, 0.100000001, 0)
bpclaim.Font = Enum.Font.Unknown
bpclaim.Text = "BP ödüllerini topla."
bpclaim.TextColor3 = Color3.fromRGB(0, 0, 0)
bpclaim.TextScaled = true
bpclaim.TextSize = 14.000
bpclaim.TextWrapped = true

cpbutton.Name = "cpbutton"
cpbutton.Parent = Menu
cpbutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
cpbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
cpbutton.BorderSizePixel = 0
cpbutton.Position = UDim2.new(0, 0, 0.615740716, 0)
cpbutton.Size = UDim2.new(1, 0, 0.100000001, 0)
cpbutton.Font = Enum.Font.Unknown
cpbutton.Text = "CP Bas!"
cpbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
cpbutton.TextScaled = true
cpbutton.TextSize = 14.000
cpbutton.TextWrapped = true

crownsbutton.Name = "crownsbutton"
crownsbutton.Parent = Menu
crownsbutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
crownsbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
crownsbutton.BorderSizePixel = 0
crownsbutton.Position = UDim2.new(0, 0, 0.861111104, 0)
crownsbutton.Size = UDim2.new(1, 0, 0.100000001, 0)
crownsbutton.Font = Enum.Font.Unknown
crownsbutton.Text = "Crowns Bas!"
crownsbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
crownsbutton.TextScaled = true
crownsbutton.TextSize = 14.000
crownsbutton.TextWrapped = true

UICorner.CornerRadius = UDim.new(0.0250000004, 0)
UICorner.Parent = Menu

-- Scripts:

local function BRAPKX_fake_script() -- Menu.LocalScript 
	local script = Instance.new('LocalScript', Menu)

	script.Parent.cpbutton.MouseButton1Click:Connect(function()
		game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.1.0"):WaitForChild("net"):WaitForChild("RE/ClanUpgrade"):FireServer("Size", "ClanPoints", tonumber(script.Parent.cp.Text))
	end)
	
	script.Parent.crownsbutton.MouseButton1Click:Connect(function()
		game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.1.0"):WaitForChild("net"):WaitForChild("RE/ClanUpgrade"):FireServer("Size", "Crowns", tonumber(script.Parent.crowns.Text))
	end)
	
	script.Parent.jointheclan.MouseButton1Click:Connect(function()
		game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.1.0"):WaitForChild("net"):WaitForChild("RF/JoinClan"):InvokeServer("CLANee57ca8e37524df3b77888149ae90310")
	end)
	
	script.Parent.bpclaim.MouseButton1Click:Connect(function()
		game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.1.0"):WaitForChild("net"):WaitForChild("RF/ClaimAllClanBPRewards"):InvokeServer()
	end)
end
coroutine.wrap(BRAPKX_fake_script)()
