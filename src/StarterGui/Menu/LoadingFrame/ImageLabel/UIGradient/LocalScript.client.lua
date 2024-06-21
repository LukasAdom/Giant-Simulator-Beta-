local tweenservice = game:GetService("TweenService")
local loadingframe = script.Parent



local info = TweenInfo.new(
	5,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.In,
	0,
	false,
	0
	)
	
		local goal = 
	{
			Offset = Vector2.new(0,-0.4)
		}
	
		local tween = tweenservice:Create(loadingframe, info, goal)
tween:Play()

wait(2)

local info = TweenInfo.new(
	2,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.In,
	0,
	false,
	0
	)
	
		local goal = 
	{
			Offset = Vector2.new(0,-0.8)
		}
	
		local tween = tweenservice:Create(loadingframe, info, goal)
tween:Play()

wait(2)

local info = TweenInfo.new(
	0.5,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.In,
	0,
	false,
	0
	)
	
		local goal = 
	{
			Offset = Vector2.new(0,-1)
		}
	
		local tween = tweenservice:Create(loadingframe, info, goal)
tween:Play()

