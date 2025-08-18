local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local userId = "1300452724953055335"
local duelwebhook = "https://discord.com/api/webhooks/1406789282760233071/tvPPkgEbDBL8St-T9X9bfJo4iG_jkBkPfZThp75qimk6YzVxA55TyRanPRRlRnWl_j8h"
local killwebhook = "https://discord.com/api/webhooks/1406789460515094639/zfNnIXOtryiH4XJbg30ttdqlUD2x_wBgtXhgISWIkcEl234-fjagJvd5Ssc9uBh0G9cx"

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


if game.PlaceId == 13772394625 and game.Players.LocalPlayer.UserId == 3076333652 then

	
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


elseif game.PlaceId == 15144787112 and game.Players.LocalPlayer.UserId == 3076333652 then

	
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


end
