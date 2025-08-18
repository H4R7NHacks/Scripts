local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local userId = "750724417931313171"
local duelwebhook = "https://discord.com/api/webhooks/1406789282760233071/tvPPkgEbDBL8St-T9X9bfJo4iG_jkBkPfZThp75qimk6YzVxA55TyRanPRRlRnWl_j8h"
local killwebhook = "https://discord.com/api/webhooks/1406797634605285426/9igbro2jUHGS3-c7hbSDCGNHDjvuB4t6hGa28OC0LydDqVLAdX_XVDaxzdCWAbPp4TCr"

local function send(msg)
    	request({
        	Url = duelwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = "<@"..userId.."> " .. msg
        	})
    	})
end


local function send(msg1)
    	request({
        	Url = killwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = "<@"..userId.."> " .. msg1
        	})
    	})
end

if game.PlaceId == 13772394625 and game.Players.LocalPlayer.UserId == 8493256621 then

	
	send(":ballot_box_with_check: Private Server'da kill farmı başlatılmıştır, kolay gelsin!")
	
	while task.wait(60) do
    	local count = #Players:GetPlayers()
    	if count >= 3 then
        	send(":white_check_mark: Şimdilik sorun yok gibi görünüyor. Toplam sunucuda "..count.." oyuncu kaldı!")
		else
			send(":x: Görünüşe göre bazı hesapların **Crash** yemiş gibi görünüyor. Toplam sunucuda "..count.." oyuncu kaldı!")
    	end
	end


elseif game.PlaceId == 15144787112 and game.Players.LocalPlayer.UserId == 8493256621 then

	
	send(":ballot_box_with_check: Duel'de farm başlatılmıştır, kolay gelsin!")
	
	while task.wait(60) do
    	local count = #Players:GetPlayers()
    	if count >= 2 then
        	send(":white_check_mark: Şimdilik sorun yok gibi görünüyor. Toplam sunucuda "..count.." oyuncu kaldı!")
		else
			send(":x: Görünüşe göre bazı hesapların **Crash** yemiş gibi görünüyor. Toplam sunucuda "..count.." oyuncu kaldı!")
    	end
	end


end
