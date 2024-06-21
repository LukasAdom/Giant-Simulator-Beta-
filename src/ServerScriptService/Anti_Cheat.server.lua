

local Event = {
	game:GetService("ReplicatedStorage").Remote.Lifts.Lift,
	game:GetService("ReplicatedStorage").Remote.Lifts.Lift2,
	game:GetService("ReplicatedStorage").Remote.Lifts.Lift3,
	game:GetService("ReplicatedStorage").Remote.Lifts.Lift4,
	game:GetService("ReplicatedStorage").PetBuy
}

EventDebounce = {}

Event[5].OnServerEvent:Connect(function(player, args) 
	local lastFired = EventDebounce[player.Name]
	if lastFired then 
		
		if tick() - lastFired  < 2.9 then
			player:Kick("Kicked due to: Trying to spam RemoteEvents")
			return 
		end
	end
	EventDebounce[player.Name] = tick()
end)


