local cam = workspace.CurrentCamera
local partPos = game.Workspace.Part2
local tweenservice = game:GetService("TweenService")
local button = script.Parent.TextButton

game.ReplicatedStorage.PetPopUPGui.OnClientEvent:Connect(function()
	button.Visible = true
	script.Parent.Parent.Enabled = true
	while wait() do
		
		local WTSP = cam:WorldToScreenPoint(partPos.Position)
		script.Parent.Position = UDim2.new(0,WTSP.X,0,WTSP.Y)
		
		local info = TweenInfo.new(
			0.2,
			Enum.EasingStyle.Quint,
			Enum.EasingDirection.Out,
			0,
			false,
			0
		)
		
		local goal = 
		{
			Size = UDim2.new(0.324, 0,0.216, 0)
		}
		
		local tween = tweenservice:Create(script.Parent, info, goal);
		tween:Play()
		break
	end
	while wait() do
		
		local WTSP = cam:WorldToScreenPoint(partPos.Position)
		script.Parent.Position = UDim2.new(0,WTSP.X,0,WTSP.Y)
	end
end)

game.ReplicatedStorage.PetPopUPGuiClose.OnClientEvent:Connect(function()
	button.Visible = false
	local info = TweenInfo.new(
		0.2,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out,
		0,
		false,
		0
	)
	
	local goal = 
	{
		Size = UDim2.new(0, 0,0, 0)
	}
	
	local tween = tweenservice:Create(script.Parent, info, goal);
	tween:Play()
end)
