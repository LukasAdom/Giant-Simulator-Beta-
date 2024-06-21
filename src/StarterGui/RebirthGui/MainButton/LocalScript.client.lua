--// Variables //--

local tweenservice = game:GetService("TweenService")
local imagelabel = script.Parent.ImageLabel
local mainbutton = script.Parent
local UIS = game:GetService("UserInputService")
local UIST = UIS.TouchEnded

--// TweenService/Main //--

script.Parent.MouseEnter:Connect(function()
	script.Parent.Parent.Sound:Play()
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
			Rotation = 180
		}
	
		local tween = tweenservice:Create(imagelabel, info, goal)
	tween:Play()
	
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
			Size = UDim2.new(0.069, 0, 0.18, 0)
		}
	
		local tween = tweenservice:Create(mainbutton, info, goal)
	tween:Play()
	
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
			Size = UDim2.new(1, 0, 0.9, 0)
		}
	
		local tween = tweenservice:Create(imagelabel, info, goal)
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
			Rotation = 0
		}
	
		local tween = tweenservice:Create(imagelabel, info, goal)
	tween:Play()
	
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
			Size = UDim2.new(0.063, 0, 0.172, 0)
		}
	
		local tween = tweenservice:Create(mainbutton, info, goal)
	tween:Play()
	
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
			Size = UDim2.new(0.996, 0, 0.729, 0)
		}
	
		local tween = tweenservice:Create(imagelabel, info, goal)
	tween:Play()
end)

--// Mobile //--

