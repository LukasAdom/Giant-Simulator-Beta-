--// Variables //--

local AN = require(game.ReplicatedStorage.ModuleScript)
local DataStoreService = game:GetService("DataStoreService")
local rebirthsleaderboards =  DataStoreService:GetOrderedDataStore("RebirthLeaderboard")


--// Main //--



	local function updateLeaderboard()
	local succes, errorMessage = pcall(function()
		local data = rebirthsleaderboards:GetSortedAsync(false, 5)
		local rebirthhpage = data:GetCurrentPage()
		for rank, data1 in ipairs(rebirthhpage) do
			local username = game.Players:GetNameFromUserIdAsync(tonumber(data1.key))
			local name 	= username
			local rebirth = data1.value
			local isonleaderboard = false
			for i, v in pairs(game.Workspace.RebirthLeaderboard.GlobalLeaderBoard.LeaderBoardGui.Holder:GetChildren()) do
				if v.Player.Text == name then
					isonleaderboard = true
				break	
			end
		end
			
			if rebirth and isonleaderboard == false then
				local newLBFrame = game.ReplicatedStorage:WaitForChild("LeaderboardFrame"):Clone()
				newLBFrame.Player.Text = name
				newLBFrame.Money.Text = rebirth
				newLBFrame.Rank.Text = "#"..rank
				newLBFrame.Position = UDim2.new(0, 0, -0.0006 + (.005 * #game.Workspace.RebirthLeaderboard.GlobalLeaderBoard.LeaderBoardGui.Holder:GetChildren()),0) 
				newLBFrame.Parent = game.Workspace.RebirthLeaderboard.GlobalLeaderBoard.LeaderBoardGui.Holder
		    end
	      end	
	   end)
	
	if not succes then
		print(errorMessage)
	end
end

while true do
	
	for _, player in pairs(game.Players:GetPlayers()) do
		rebirthsleaderboards:SetAsync(player.UserId , player.leaderstats.Rebirths.Value)
	end
	
	for _, frame in pairs (game.Workspace.RebirthLeaderboard.GlobalLeaderBoard.LeaderBoardGui.Holder:GetChildren()) do
		frame:Destroy()
	end
	
	updateLeaderboard()
	print("Updated")
	
	wait(60)
	end