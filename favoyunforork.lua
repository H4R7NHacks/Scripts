if game.PlaceId == 15144787112 and game.Players.LocalPlayer.UserId == 3076333652 then

	while wait(0.1) do
			
		game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.1.0").net:FindFirstChild("RE/PlayerWantsRematch"):FireServer()

		local ball = game.Workspace.Balls:GetDescendants()
			
		for i,v in pairs (ball) do
			if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
                if game.Workspace.Alive:FindFirstChild(game.Players.LocalPlayer.Name) then
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DualityShootActivation"):FireServer("Light", game:GetService("Players"):WaitForChild("1sametfarm1").Character)
            	end
			end
		end
	end

elseif game.PlaceId == 15144787112 then
	while wait(0.1) do
		game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.1.0").net:FindFirstChild("RE/PlayerWantsRematch"):FireServer()
	end

elseif game.PlaceId == 13772394625 and game.Players.LocalPlayer.UserId == 3076333652 then

	loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/Circle"))()

	while wait() do
		local ball = game.Workspace.Balls:GetDescendants()
	
		for i,v in pairs (ball) do
			if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
                if game.Workspace.Alive:FindFirstChild(game.Players.LocalPlayer.Name) then
					wait(0.5)
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DualityShootActivation"):FireServer("Light", game:GetService("Players"):WaitForChild("1sametfarm1").Character)
					wait(0.1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(30, 3, 30)
					wait(10)
            	end
			end
		end
	end

elseif game.PlaceId == 13772394625 then

	while wait() do
		local ball = game.Workspace.Balls:GetDescendants()
		local ballspawn = game.Workspace.Map:GetDescendants()
	
		for i,v in pairs (ball) do
			if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
                if game.Workspace.Alive:FindFirstChild(game.Players.LocalPlayer.Name) then
					for i, y in pairs (ballspawn) do
						if y.Name == "BALLSPAWN" then
							wait(0.1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = y.CFrame
						end
					end
            	end
			end
		end
	end

end
