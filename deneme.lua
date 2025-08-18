local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local userId = "750724417931313171"
local duelwebhook = "https://discord.com/api/webhooks/1406797634605285426/9igbro2jUHGS3-c7hbSDCGNHDjvuB4t6hGa28OC0LydDqVLAdX_XVDaxzdCWAbPp4TCr"
local killwebhook = "https://discord.com/api/webhooks/1406805123300200489/sBKUaBTUXR901tTDh0kcVDkVPncF4gf-HUNkOT7va738Mn9yCjYB0f26IuNEO8eg8O8G"

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

if game.PlaceId == 13772394625 and game.Players.LocalPlayer.UserId == 8493256621 then

	
	sendwelcomeforkill(":ballot_box_with_check: Private Server'da kill farmı başlatılmıştır, mevcut Kill sayınız : "..game.Players.LocalPlayer.leaderstats.Elims.Value..", kolay gelsin!")
	
	while task.wait(60) do
    	local count = #Players:GetPlayers()
    	if count >= 3 then
        	sendforkillnp(":white_check_mark: Şimdilik sorun yok gibi görünüyor. Toplam sunucuda **"..count.."** oyuncu kaldı ve mevcut Kill sayınız : "..game.Players.LocalPlayer.leaderstats.Elims.Value.." !")
		else
			sendforkillcrash(":x: Görünüşe göre bazı hesapların **Crash** yemiş gibi görünüyor. Toplam sunucuda "..count.." oyuncu kaldı ve mevcut Kill sayınız : "..game.Players.LocalPlayer.leaderstats.Elims.Value.." !")
    	end
	end


elseif game.PlaceId == 15144787112 and game.Players.LocalPlayer.UserId == 8493256621 then

	
	sendwelcomeforduel(":ballot_box_with_check: Duel'de farm başlatılmıştır, kolay gelsin!")
	
	while task.wait(60) do
    	local count = #Players:GetPlayers()
    	if count >= 2 then
        	sendforduelnp(":white_check_mark: Şimdilik sorun yok gibi görünüyor. Toplam sunucuda "..count.." oyuncu kaldı!")
		else
			sendforduelcrash(":x: Görünüşe göre bazı hesapların **Crash** yemiş gibi görünüyor. Toplam sunucuda "..count.." oyuncu kaldı!")
    	end
	end


end
