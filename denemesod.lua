local args = {
	"Dual",
	game:GetService("Players"):WaitForChild("CikoIata").Character
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DualityShootActivation"):FireServer(unpack(args))
