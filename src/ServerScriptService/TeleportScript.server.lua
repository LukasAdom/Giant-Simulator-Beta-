local TS = game:GetService("TeleportService")
local plr = game:GetService("Players")

game.Workspace.Portal.TelePad.Touched:Connect(function(hit)
	if game.Players:GetPlayerFromCharacter(hit.Parent) then
		game.ReplicatedStorage.Teleport:FireClient(game.Players:GetPlayerFromCharacter(hit.Parent))
		wait(2)
		local char = hit.Parent
		local plr = game.Players:GetPlayerFromCharacter(char)
			TS:Teleport(5550467520, plr)
		end
end)