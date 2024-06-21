
local price = game.StarterGui.ShopGui.Frame.Info.Price
local event = game:GetService("ReplicatedStorage"):WaitForChild("GiveMoney")

event.OnServerEvent:Connect(function(player,price)
	player.leaderstats.Money.Value = player.leaderstats.Money.Value - price.Value
	
end)
