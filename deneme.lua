local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local userId = "750724417931313171"
local duelwebhook = "https://discord.com/api/webhooks/1406797634605285426/9igbro2jUHGS3-c7hbSDCGNHDjvuB4t6hGa28OC0LydDqVLAdX_XVDaxzdCWAbPp4TCr"
local killwebhook = "https://discord.com/api/webhooks/1406805123300200489/sBKUaBTUXR901tTDh0kcVDkVPncF4gf-HUNkOT7va738Mn9yCjYB0f26IuNEO8eg8O8G"

local function send(msg)
if game.PlaceId == 13772394625 and game.Players.LocalPlayer.UserId == 8493256621 then

	request({
        	Url = killwebhook,
        	Method = "POST",
        	Headers = {["Content-Type"] = "application/json"},
        	Body = HttpService:JSONEncode({
            	content = "<@"..userId.."> " .. msg
        	})
    	})
	
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
end
