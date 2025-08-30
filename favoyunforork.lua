local vim = game:GetService("VirtualInputManager")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local userId = "1300452724953055335"
local duelwebhook = "https://discord.com/api/webhooks/1410665903359787169/tWQQ3WfSaZ2YQsWsDM3yUrt1FoLw-0AsoXuzw1Hd6uOsHCX4ugkw1LIWkEk28iBD_LyF"
local killwebhook = "https://discord.com/api/webhooks/1410666517154234449/ZgxP-oKRM5y1Jbqhbt20c8b-KmLFtNAuKhro6r10Zz9dcbWGE67JGQf-T-TkpTbQEzg9"
local winwebhook = "https://discord.com/api/webhooks/1410666664579698738/_EqmdjpCPhOc-4iwqkKdMYtFevs2tb5RVVMxChJDdmkB2xtnmyKOm8G8xpOP3R74T_1i"

local function sendwelcomeforduel(msg)
    	request({
        	Url = duelwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = msg
        	})
    	})
end

local function sendwelcomeforkill(msg)
    	request({
        	Url = killwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = msg
        	})
    	})
end

local function sendwelcomeforwin(msg)
    	request({
        	Url = winwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = msg
        	})
    	})
end

local function sendforduelnp(msg)
    	request({
        	Url = duelwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = msg
        	})
    	})
end

local function sendforkillnp(msg)
    	request({
        	Url = killwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = msg
        	})
    	})
end

local function sendforwinnp(msg)
    	request({
        	Url = winwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = msg
        	})
    	})
end

local function sendforduelcrash(msg)
    	request({
        	Url = duelwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = "<@"..userId.."> " .. msg
        	})
    	})
end

local function sendforkillcrash(msg)
    	request({
        	Url = killwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = "<@"..userId.."> " .. msg
        	})
    	})
end

local function sendforwincrash(msg)
    	request({
        	Url = winwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = "<@"..userId.."> " .. msg
        	})
    	})
end

local function sendduelamount(msg)
    	request({
        	Url = duelwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = msg
        	})
    	})
end

local function sendkillamount(msg)
    	request({
        	Url = killwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = msg
        	})
    	})
end

local function sendwinamount(msg)
    	request({
        	Url = winwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = msg
        	})
    	})
end

local function sendplayernameforwin(msg)
    	request({
        	Url = winwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = "<@"..userId.."> " .. msg
        	})
    	})
end


if game.PlaceId == 15144787112 and game.Players.LocalPlayer.UserId == 3076333652 then

	task.spawn(function()
		while wait(0.1) do
			
			game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.1.0").net:FindFirstChild("RE/PlayerWantsRematch"):FireServer()

			local ball = game.Workspace.Balls:GetDescendants()
			
			for i,v in pairs (ball) do
				if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
                			if game.Workspace.Alive:FindFirstChild(game.Players.LocalPlayer.Name) then
						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DualityShootActivation"):FireServer("Light", game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())].Character)
            				end
				end
			end
		end
	end)


	task.spawn(function()
		sendwelcomeforduel(":ballot_box_with_check: Duel'de farm başlatılmıştır, kolay gelsin!")
		wait(0.1)
		sendduelamount("Mevcut Kill sayınız : **"..game.Players.LocalPlayer.leaderstats.Elims.Value.."**")
	
		while task.wait(59.9) do
    			local count = #Players:GetPlayers()
    			if count >= 2 then
        			sendforduelnp(":white_check_mark: Şimdilik sorun yok gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu bulunuyor! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
				wait(0.1)
				sendduelamount("Mevcut Kill sayınız : **"..game.Players.LocalPlayer.leaderstats.Elims.Value.."**")
			else
				sendforduelcrash(":warning: Görünüşe göre bazı hesaplarınız **Crash** yemiş gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu kaldı! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
				wait(0.1)
				sendduelamount("Mevcut Kill sayınız : **"..game.Players.LocalPlayer.leaderstats.Elims.Value.."**")
    			end
		end
	end)

elseif game.PlaceId == 15144787112 then
	while wait(0.1) do
		game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.1.0").net:FindFirstChild("RE/PlayerWantsRematch"):FireServer()
	end

elseif game.PlaceId == 13772394625 and game.Players.LocalPlayer.UserId == 3076333652 then

	loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/Circle"))()

	task.spawn(function()
		while wait() do
			local ball = game.Workspace.Balls:GetDescendants()
	
			for i,v in pairs (ball) do
				if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
               				if game.Workspace.Alive:FindFirstChild(game.Players.LocalPlayer.Name) then
						wait(0.5)
						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DualityShootActivation"):FireServer("Light", game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())].Character)
						wait(0.1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(30, 3, 30)
						wait(10)
            				end
				end
			end
		end
	end)

	task.spawn(function()
		sendwelcomeforkill(":ballot_box_with_check: Private Server'da kill farmı başlatılmıştır, kolay gelsin!")
		wait(0.1)
		sendkillamount("Mevcut Kill sayınız : **"..game.Players.LocalPlayer.leaderstats.Elims.Value.."**")
	
		while task.wait(59.9) do
    			local count = #Players:GetPlayers()
    			if count >= 3 then
        			sendforkillnp(":white_check_mark: Şimdilik sorun yok gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu bulunuyor! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
				wait(0.1)
				sendkillamount("Mevcut Kill sayınız : **"..game.Players.LocalPlayer.leaderstats.Elims.Value.."**")
			else
				sendforkillcrash(":warning: Görünüşe göre bazı hesaplarınız **Crash** yemiş gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu kaldı! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
				wait(0.1)
				sendkillamount("Mevcut Kill sayınız : **"..game.Players.LocalPlayer.leaderstats.Elims.Value.."**")
    			end
		end
	end)

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

elseif game.PlaceId == 15264892126 and game.Players.LocalPlayer.UserId == 3076333652 then

	task.spawn(function()
		game.Players.LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function()
			if game.Players.LocalPlayer.Team and game.Players.LocalPlayer.Team.Name == "Playing" then
				wait(1)
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DualityShootActivation"):FireServer("Light", game:GetService("Players"):WaitForChild("1sametfarm1").Character)
			end
		end)
	end)

	task.spawn(function()
		sendwelcomeforwin(":ballot_box_with_check: Win farmı başlatılmıştır, kolay gelsin!")
		wait(0.1)
		sendwinamount("Mevcut Win sayınız : **"..game.Players.LocalPlayer.leaderstats.Wins.Value.."**")
	
		while task.wait(59.9) do
    			local count = #Players:GetPlayers()
    			if count >= 4 then
        			sendforwinnp(":white_check_mark: Şimdilik sorun yok gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu bulunuyor! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
				wait(0.1)
				sendwinamount("Mevcut Win sayınız : **"..game.Players.LocalPlayer.leaderstats.Wins.Value.."**")
			else
				sendforwincrash(":warning: Görünüşe göre bazı hesaplarınız **Crash** yemiş gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu kaldı! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
				wait(0.1)
				sendwinamount("Mevcut Win sayınız : **"..game.Players.LocalPlayer.leaderstats.Wins.Value.."**")
    			end
		end
	end)

	task.spawn(function()
		local LocalPlayer = Players.LocalPlayer

		Players.PlayerAdded:Connect(function(player)
   			if not LocalPlayer:IsFriendsWith(player.UserId) then
				sendplayernameforwin(":x: Sunucuda **"..player.Name.."** kullanıcı adına sahip yabancı oyuncu tespit edildiği için güvenlik amaçlı tüm hesaplar oyundan atılmıştır!")
				wait(0.1)
       				game:Shutdown()
    			end
		end)
	end)

elseif game.PlaceId == 15264892126 then
	
	task.spawn(function()
		game.Players.LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function()
			if game.Players.LocalPlayer.Team and game.Players.LocalPlayer.Team.Name == "Playing" then
				if game.Players.LocalPlayer.Name == "1sametfarm1" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.Rising_An4el.Character.HumanoidRootPart.CFrame
				else
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
				end
			end
		end)
	end)

	task.spawn(function()
		local LocalPlayer = Players.LocalPlayer

		Players.PlayerAdded:Connect(function(player)
    			if not LocalPlayer:IsFriendsWith(player.UserId) then
        			game:Shutdown()
   			end
		end)
	end)

end
