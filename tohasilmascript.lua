local A_1 = "..." local A_2 = "All" 


local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)



game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false


game.Players.LocalPlayer.PlayerGui.heightMeter.HeightMeter.Visible = false



local hummy = game:GetService("Players").LocalPlayer.Character.Humanoid

while wait(10) do
while hummy.Parent.Parent ~= nil do


	wait()


	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[kullanici].Character.HumanoidRootPart.CFrame


	game.Workspace.Camera:Destroy()


end
end

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
