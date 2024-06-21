cp = 0
local plr =  game.Players.LocalPlayer
while wait() do
	if cp ~= plr.leaderstats.Rebirths.Value then
		local rand = math.random(1,900)
		local xnew = rand/1000
		local new = game.ReplicatedStorage.PopUpRebirth:Clone()
		new.Parent = script.Parent.VersionGui
		new.Position = UDim2.new(xnew,0,1,0)
		new.Text = ""..plr.leaderstats.Rebirths.Value - cp.."🔄"
		cp = plr.leaderstats.Rebirths.Value
	end
end
