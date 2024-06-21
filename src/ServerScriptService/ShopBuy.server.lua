local tools = game.ReplicatedStorage:WaitForChild("Tools")

game.ReplicatedStorage.ShopBuy.OnServerEvent:Connect(function(player,tool)
	local clone = tools:FindFirstChild(tool):Clone()
	clone.Parent = player.Backpack
	
	local clone2 = tools:FindFirstChild(tool):Clone()
	clone2.Parent = player.StarterGear
end)