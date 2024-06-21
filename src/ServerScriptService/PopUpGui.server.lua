local part = game.Workspace.ShopCircle.Buy
local part2 = game.workspace.ShopCircle.Union
local debounce = false

part.Touched:Connect(function(hit)
	if not debounce then
		debounce = true
		if game.Players:GetPlayerFromCharacter(hit.Parent) then
	    game.ReplicatedStorage.ShowGuiShop:FireClient(game.Players:GetPlayerFromCharacter(hit.Parent)) 
		    end
		wait(0.5)
		debounce = false
	end
end)

part2.Touched:Connect(function(hit)
	if game.Players:GetPlayerFromCharacter(hit.Parent) then
	    game.ReplicatedStorage.CloseGuiShop:FireClient(game.Players:GetPlayerFromCharacter(hit.Parent)) 
	end
end)

