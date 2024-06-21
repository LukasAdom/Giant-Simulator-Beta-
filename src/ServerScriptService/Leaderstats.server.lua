
--// Variables //--

local serverStorage = game:GetService("ServerStorage")
local DataDtore = game:GetService("DataStoreService"):GetDataStore("PlayerSave3")
local Players = game:GetService("Players")

--// functions //--

Players.PlayerAdded:Connect(function(player)
	
	
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local strength = Instance.new("NumberValue")
	strength.Name = "Strength"
	strength.Parent = leaderstats
	
	local Cash = Instance.new("NumberValue")
	Cash.Name = "Money"
	Cash.Parent = leaderstats
	
	local rebirths = Instance.new("IntValue")
	rebirths.Name = "Rebirths"
	rebirths.Parent = leaderstats
	
	local dataFolder = Instance.new("Folder")
	dataFolder.Name = player.Name
	dataFolder.Parent = serverStorage.RemoteData
	
	local debounce = Instance.new("BoolValue")
	debounce.Name = "Debounce"
	debounce.Parent = dataFolder
	
--// DataStore //--
	
	local strengthData, rebirthsData, moneyData
	
	local success, errormessage = pcall(function()
		strengthData = DataDtore:GetAsync("strength-"..player.UserId)
		rebirthsData = DataDtore:GetAsync("rebirths-"..player.UserId)
		moneyData = DataDtore:GetAsync("money-"..player.UserId)
	end)
		
	if success then
		if strengthData then
			strength.Value = strengthData
			rebirths.Value = rebirthsData	
			Cash.Value = moneyData	
		end
	end
end)      

game.Players.PlayerRemoving:Connect(function(player)
	
	local success, errormessage = pcall(function()
		DataDtore:SetAsync("strength-"..player.UserId, player.leaderstats.Strength.Value)
		DataDtore:SetAsync("rebirths-"..player.UserId, player.leaderstats.Rebirths.Value)	
		DataDtore:SetAsync("money-"..player.UserId, player.leaderstats.Money.Value)
	end)
end)
