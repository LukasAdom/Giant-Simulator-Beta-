--// Variables //--

local roundify = script.Parent.TextButton_Roundify_12px
local ts = game:GetService("TweenService")
local button = script.Parent
local UIS = game:GetService("UserInputService")
local UIST = UIS.TouchEnded


--// Main Function //--

script.Parent.MouseEnter:Connect(function()
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
		Size = UDim2.new(0.146, 0, 0.228, 0)
	}
	
	local tween = ts:Create(button, info, goal)
	tween:Play()

end)

script.Parent.MouseLeave:Connect(function()
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
		Size = UDim2.new(0.142, 0, 0.208, 0)
	}
	
	local tween = ts:Create(button, info, goal)
	tween:Play()
	
end)

--// Mobile //--

script.Parent.TouchLongPress:Connect(function()
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
		Size = UDim2.new(0.146, 0, 0.228, 0)
	}
	
	local tween = ts:Create(button, info, goal)
	tween:Play()

end)

UIST:Connect(function()
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
		Size = UDim2.new(0.142, 0, 0.208, 0)
	}
	
	local tween = ts:Create(button, info, goal)
	tween:Play()
	
end)
	
