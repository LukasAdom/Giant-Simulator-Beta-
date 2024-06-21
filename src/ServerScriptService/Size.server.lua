while wait(.5) do
	local children = game.Players:GetChildren()
	for i = 1, #children do
		
		if children[i].Character ~= nil then
		local hum = children[i].Character.Humanoid
		hum.HeadScale.Value = children[i].leaderstats.Strength.Value/10000 +1
		hum.BodyHeightScale.Value = children[i].leaderstats.Strength.Value/10000 +1
		hum.BodyWidthScale.Value = children[i].leaderstats.Strength.Value/10000 +1
		hum.BodyDepthScale.Value = children[i].leaderstats.Strength.Value/10000 +1
			
			if hum.HeadScale.Value >= 2 then
				hum.HeadScale.Value = 1.9
				hum.BodyHeightScale.Value = 1.9
				hum.BodyWidthScale.Value = 1.9
				hum.BodyDepthScale.Value = 1.9
			end
		end
	end	
		
end
