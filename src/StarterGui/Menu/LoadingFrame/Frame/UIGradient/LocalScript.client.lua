local tweenservice = game:GetService("TweenService")
local loadingframe = script.Parent
local RF = script.Parent.Parent.Parent
local sound = game.Workspace.Sound

sound.Playing = false

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
			Offset = Vector2.new(0.4,0)
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
			Offset = Vector2.new(0.8,0)
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
			Offset = Vector2.new(1,0)
		}
	
		local tween = tweenservice:Create(loadingframe, info, goal)
tween:Play()

wait(4)

local info = TweenInfo.new(
	0.5,
	Enum.EasingStyle.Quad,
	Enum.EasingDirection.Out,
	0,
	false,
	0
	)
	
		local goal = 
	{
			Position = UDim2.new(0,0,-1.2,0)
		}
	
		local tween = tweenservice:Create(RF, info, goal)
tween:Play()

sound.Playing = true
sound.Volume = 0.1
wait(0.1)
sound.Volume = 0.2
wait(0.1)
sound.Volume = 0.3
wait(0.1)
sound.Volume = 0.4
wait(0.1)
sound.Volume = 0.5
sound.Looped = true

wait(1)

RF:Destroy()



