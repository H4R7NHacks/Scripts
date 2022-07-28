-- Gui to Lua
-- Version: 3.2

-- Instances:

local SikisGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local sikis = Instance.new("TextBox")
local komut = Instance.new("TextButton")
local menuad = Instance.new("TextLabel")
local menuyukapa = Instance.new("ImageButton")

--Properties:

SikisGui.Name = "SikisGui"
SikisGui.Parent = game.CoreGui.RobloxGui
SikisGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SikisGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0, 0, 0.634952664, 0)
Frame.Size = UDim2.new(0, 302, 0, 249)

sikis.Name = "sikis"
sikis.Parent = Frame
sikis.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
sikis.Position = UDim2.new(0.163492978, 0, 0.383349061, 0)
sikis.Size = UDim2.new(0, 178, 0, 57)
sikis.Font = Enum.Font.SourceSans
sikis.Text = "Sikcegin Kisinin Adi"
sikis.TextColor3 = Color3.fromRGB(0, 0, 0)
sikis.TextSize = 14.000

komut.Name = "komut"
komut.Parent = Frame
komut.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
komut.Position = UDim2.new(0.0529801324, 0, 0.746987939, 0)
komut.Size = UDim2.new(0, 253, 0, 50)
komut.Font = Enum.Font.SourceSans
komut.Text = "Saldir!!!"
komut.TextColor3 = Color3.fromRGB(0, 0, 0)
komut.TextSize = 30.000

menuad.Name = "menuad"
menuad.Parent = Frame
menuad.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
menuad.Size = UDim2.new(0, 247, 0, 50)
menuad.Font = Enum.Font.SourceSans
menuad.Text = "SIKIS MENU"
menuad.TextColor3 = Color3.fromRGB(0, 0, 0)
menuad.TextSize = 40.000

menuyukapa.Name = "menuyukapa"
menuyukapa.Parent = Frame
menuyukapa.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
menuyukapa.Position = UDim2.new(0.817880809, 0, 0, 0)
menuyukapa.Size = UDim2.new(0, 54, 0, 50)
menuyukapa.Image = "rbxassetid://142257725"

-- Scripts:

local function UOONORE_fake_script() -- komut.LocalScript 
	local script = Instance.new('LocalScript', komut)

	script.Parent.MouseButton1Down:Connect(function()
		local player = script.Parent.Parent.sikis.Text
		local stupid = Instance.new('Animation')
		stupid.AnimationId = 'rbxassetid://148840371'
		local hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
		pcall(function()
			hummy.Parent.Pants:Destroy()
		end)
		pcall(function()
			hummy.Parent.Shirt:Destroy()
		end)
		local notfunny = hummy:LoadAnimation(stupid)
		notfunny:Play()
		notfunny:AdjustSpeed(10)
		while hummy.Parent.Parent ~= nil do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[player].Character.HumanoidRootPart.CFrame
		end
	end)
end
coroutine.wrap(UOONORE_fake_script)()
local function TKYPRIG_fake_script() -- menuyukapa.LocalScript 
	local script = Instance.new('LocalScript', menuyukapa)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(TKYPRIG_fake_script)()
