local vim = game:GetService("VirtualInputManager")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local userId = "1300452724953055335"
local duelwebhook = "https://discord.com/api/webhooks/1406789282760233071/tvPPkgEbDBL8St-T9X9bfJo4iG_jkBkPfZThp75qimk6YzVxA55TyRanPRRlRnWl_j8h"
local killwebhook = "https://discord.com/api/webhooks/1406789460515094639/zfNnIXOtryiH4XJbg30ttdqlUD2x_wBgtXhgISWIkcEl234-fjagJvd5Ssc9uBh0G9cx"
local winwebhook = "https://discord.com/api/webhooks/1408505808299491590/gpuh4Rxz3zO8w7BX_ZZxiUtoxWswUNcxDSLKYXLvq7Niw5AaAG--Jbj4TvKbwL5BW8nW"

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
						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DualityShootActivation"):FireServer("Light", game:GetService("Players"):WaitForChild("1sametfarm1").Character)
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
				sendforduelcrash(":x: Görünüşe göre bazı hesapların **Crash** yemiş gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu kaldı! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
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
						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DualityShootActivation"):FireServer("Light", game:GetService("Players"):WaitForChild("1sametfarm1").Character)
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
				sendforkillcrash(":x: Görünüşe göre bazı hesapların **Crash** yemiş gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu kaldı! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
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

elseif game.PlaceId == 15264892126 and game.Players.LocalPlayer.UserId == 4145216416 then

	loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/Circle"))()

	task.spawn(function()
		while wait() do
			local ball = game.Workspace.Balls:GetDescendants()
	
			for i,v in pairs (ball) do
				if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart") then
               				if game.Workspace.Alive:FindFirstChild(game.Players.LocalPlayer.Name) then
						wait(0.5)
						vim:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
						wait(0.05)
						vim:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
            				end
				end
			end
		end
	end)

	task.spawn(function()
		sendwelcomeforwin(":fire: Win farmı başlatılmıştır, gazanız mübarek olsun!")
		wait(0.1)
		sendwinamount("Mevcut Win sayınız : **"..game.Players.LocalPlayer.leaderstats.Wins.Value.."**")
	
		while task.wait(59.9) do
    			local count = #Players:GetPlayers()
    			if count >= 4 then
        			sendforwinnp(":white_check_mark: Şimdilik sorun yok gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu bulunuyor! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
				wait(0.1)
				sendwinamount("Mevcut Win sayınız : **"..game.Players.LocalPlayer.leaderstats.Wins.Value.."**")
			else
				sendforwincrash(":x: Görünüşe göre bazı hesapların **Crash** yemiş gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu kaldı! Eğer 60 saniye sonra mesaj gelmediyse ana hesabınızın oyunda olmadığı anlamına gelir.")
				wait(0.1)
				sendwinamount("Mevcut Win sayınız : **"..game.Players.LocalPlayer.leaderstats.Wins.Value.."**")
    			end
		end
	end)

	task.spawn(function()
		local LocalPlayer = Players.LocalPlayer

		Players.PlayerAdded:Connect(function(player)
   			if not LocalPlayer:IsFriendsWith(player.UserId) then
				sendplayernameforwin(":warning: Sunucuda **"..player.Name.."** kullanıcı adına sahip yabancı oyuncu tespit edildiği için güvenlik amaçlı tüm hesaplar oyundan atılmıştır!")
				wait(0.1)
       				game:Shutdown()
    			end
		end)
	end)

elseif game.PlaceId == 15264892126 then
	
	task.spawn(function()
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
	end)

	task.spawn(function()
		while wait(10) do
			game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.1.0"):WaitForChild("net"):WaitForChild("RE/UpdateVotes"):FireServer("2Teams")
		end
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
