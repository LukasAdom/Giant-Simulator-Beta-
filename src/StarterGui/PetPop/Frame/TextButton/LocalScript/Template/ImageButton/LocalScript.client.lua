local tweenservice = game:GetService("TweenService")
local button = script.Parent

script.Parent.MouseButton1Click:Connect(function()
	local info = TweenInfo.new(
		0.1,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out,
		0,
		false,
		0
	)
	
	local goal = 
	{
		Position = UDim2.new(0.125, 0,0.0075, 0)
	}
	
	local tween = tweenservice:Create(button, info, goal)
	tween:Play()
	wait(.1)
	local info = TweenInfo.new(
		0.1,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out,
		0,
		false,
		0
	)
	
	local goal = 
	{
		Position = UDim2.new(0.125, 0,0.007, 0)
	}
	
	local tween = tweenservice:Create(button, info, goal)
	tween:Play()
end)