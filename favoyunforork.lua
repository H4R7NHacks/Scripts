if game.PlaceId == 15144787112 then



	local vim = game:GetService("VirtualInputManager")
	local cooldown = false

	if game.Players.LocalPlayer.Name == "Slow_pq" or game.Players.LocalPlayer.Name == "Rising_An4el" then
		while wait(0.1) do
			
			game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.1.0").net:FindFirstChild("RE/PlayerWantsRematch"):FireServer()

			local ball = game.Workspace.Balls:GetDescendants()
			
			for i,v in pairs (ball) do
				if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
                    			if game.Workspace.Alive:FindFirstChild(game.Players.LocalPlayer.Name) then
						if cooldown == false then
							cooldown = true
							wait(1)
							vim:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
							wait(0.05)
							vim:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
							wait(2)
							cooldown = false
						end
            	   	 		end
				end
			end
		end
	else
		while wait(0.1) do
			game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.1.0").net:FindFirstChild("RE/PlayerWantsRematch"):FireServer()
		end
	end



elseif game.PlaceId == 13772394625 then



	local vim = game:GetService("VirtualInputManager")

	if game.Players.LocalPlayer.Name == "Slow_pq" or game.Players.LocalPlayer.Name == "Rising_An4el" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/Circle"))()
		-- Click "X" To Spam (for close battles)

		game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.1.0").net:FindFirstChild("RF/RequestEquipAbility"):InvokeServer("YlMZd1arQG_8OIwGucusX")

		while true do
			wait(1)
			vim:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
			wait(0.05)
			vim:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
		end
	else

		game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.1.0").net:FindFirstChild("RF/RequestEquipAbility"):InvokeServer("d6MvDBUpOYS0UaCzPzXFy")

		while wait() do
		local ball = game.Workspace.Balls:GetDescendants()
		local ballspawn = game.Workspace.Map:GetDescendants()
	
			for i,v in pairs (ball) do
				if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
                    			if game.Workspace.Alive:FindFirstChild(game.Players.LocalPlayer.Name) then
						for i, y in pairs (ballspawn) do
							if y.Name == "BALLSPAWN" then
								wait(2)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = y.CFrame
							end
						end
            	   	 		end
				end
			end
		end
	end



end
