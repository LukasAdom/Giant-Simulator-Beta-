local cl_service = game:GetService("CollectionService")
local c = cl_service:GetTagged("coin1")
local waittime = 20
local amnt = 1
local sound = game.ReplicatedStorage.sfx.coin_pickup
local db = false

for i, coin in pairs(c) do
	
	function onTouched(c1)
		local h = c1.Parent:findFirstChild("Humanoid")
		if (h~=nil) then
			local thisplr = game.Players:findFirstChild(h.Parent.Name)
			if (thisplr~=nil) then
				local stats = thisplr:findFirstChild("leaderstats")
				if (stats~=nil) then
					local score = stats:findFirstChild("Money")
					if (score~=nil) then
						score.Value = score.Value + amnt
				
							coin.Transparency = 1
							coin.CanTouch = false
							sound:Play()
							task.delay(waittime, function()
							coin.Transparency = 0
							coin.CanTouch = true	

						end)
					end
				end
			end
		end
	end
	coin.Touched:connect(onTouched)
	
--[[	function onTouched2(c2)
		local h1 = c2.Parent:findFirstChild("Humanoid")
		if not db then
			db = true
			sound:Play()
			task.delay(waittime, function()
				db = false	
			end)
		end
	end
	coin.Touched:connect(onTouched2)
	]]
end
