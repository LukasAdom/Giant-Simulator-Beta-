-- place this script into the server script service
-- place "gamepassChecker" into the ReplicatedStorage

local mps = game:GetService("MarketplaceService")
local rf = game:GetService("ReplicatedStorage"):WaitForChild("gamepassChecker")

local function returnPassInfo(player, actual, passid)
	-- 'player' is the player of the client, not the speaker; 'actual' represents the player of the speaker
	if mps:UserOwnsGamePassAsync(actual.UserId, passid) then
		return true
	else
		return false
	end
end
 
rf.OnServerInvoke = returnPassInfo

--[[

written by: Shiro75
	
--]]