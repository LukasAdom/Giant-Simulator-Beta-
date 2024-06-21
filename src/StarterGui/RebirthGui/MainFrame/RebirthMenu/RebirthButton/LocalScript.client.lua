--// viraibles //--

local rebirthbutton = script.Parent
local roundbutton = script.Parent.RebirthButton_Roundify_12pxFIS
local roundbutton2 = script.Parent.RebirthButton_Roundify_12px
local tweenservice = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local UIST = UIS.TouchEnded

--// TweenService //--

rebirthbutton.MouseEnter:Connect(function()
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
			Size = UDim2.new(1.05, 0, 1.1, 0)
		}
	
		local tween = tweenservice:Create(roundbutton, info, goal)
	tween:Play()
	
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
			Size = UDim2.new(1.05, 0, 1.263, 0)
		}
	
		local tween = tweenservice:Create(roundbutton2, info, goal)
	tween:Play()
end)

rebirthbutton.MouseLeave:Connect(function()
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
			Size = UDim2.new(1, 0, 1, 0)
		}
	
		local tween = tweenservice:Create(roundbutton, info, goal)
	tween:Play()
	
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
			Size = UDim2.new(1, 0, 1.163, 0)
		}
	
		local tween = tweenservice:Create(roundbutton2, info, goal)
	tween:Play()
end)
