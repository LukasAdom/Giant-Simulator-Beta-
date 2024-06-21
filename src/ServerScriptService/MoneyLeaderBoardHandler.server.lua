--// Variables //--

local AN = require(game.ReplicatedStorage.ModuleScript)
local DataStoreService = game:GetService("DataStoreService")
local moneyleaderboards =  DataStoreService:GetOrderedDataStore("MoneyLeaderboard")


--// Main //--



	local function updateLeaderboard()
	local succes, errorMessage = pcall(function()
		local data = moneyleaderboards:GetSortedAsync(false, 5)
		local moneypage = data:GetCurrentPage()
		for rank, data1 in ipairs(moneypage) do
			local username = game.Players:GetNameFromUserIdAsync(tonumber(data1.key))
			local name 	= username
			local money	= data1.value
			local isonleaderboard = false
			for i, v in pairs(game.Workspace.MoneyLeaderboard.GlobalLeaderBoard.LeaderBoardGui.Holder:GetChildren()) do
				if v.Player.Text == name then
					isonleaderboard = true
				break	
			end
		end
			
			if money and isonleaderboard == false then
				local newLBFrame = game.ReplicatedStorage:WaitForChild("LeaderboardFrame"):Clone()
				newLBFrame.Player.Text = name
				newLBFrame.Money.Text = money
				newLBFrame.Rank.Text = "#"..rank
				newLBFrame.Position = UDim2.new(0, 0, -0.0006 + (.005 * #game.Workspace.MoneyLeaderboard.GlobalLeaderBoard.LeaderBoardGui.Holder:GetChildren()),0) 
				newLBFrame.Parent = game.Workspace.MoneyLeaderboard.GlobalLeaderBoard.LeaderBoardGui.Holder  
		    end
	      end	
	   end)
	
	
	if not succes then
		print(errorMessage)
	end
end

while true do
	
	for _, player in pairs(game.Players:GetPlayers()) do
		moneyleaderboards:SetAsync(player.UserId , player.leaderstats.Money.Value)
	end
	
	for _, frame in pairs(game.Workspace.MoneyLeaderboard.GlobalLeaderBoard.LeaderBoardGui.Holder:GetChildren()) do
		frame:Destroy()
	end
	
	updateLeaderboard()
	print("Updated")
	
	wait(60)
	end
