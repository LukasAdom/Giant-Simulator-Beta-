local camera = game.Workspace.Camera

game.ReplicatedStorage.FOV.OnClientEvent:Connect(function()
	local Properties = {FieldOfView = 100}
local Info = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut) 
local T = game:GetService("TweenService"):Create(game.Workspace.CurrentCamera, Info, Properties)
	T:Play()
	wait(4)
	local Properties = {FieldOfView = 70}
local Info = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
local T = game:GetService("TweenService"):Create(game.Workspace.CurrentCamera, Info, Properties)
	T:Play()
end)
