local tweenservice = game:GetService("TweenService")
local frame = script.Parent.ImageLabel
local frame2 =  script.Parent.ImageLabel2


local info = TweenInfo.new(
	30,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.In,
	9999999999999999999999999999999999999999999999999999999999999999,
	false,
	0
)

local goal = 
{
	Position = UDim2.new(1,0,0,0)
}

local tween = tweenservice:Create(frame, info, goal)
tween:Play()

local info = TweenInfo.new(
	30,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.In,
	9999999999999999999999999999999999999999999999999999999999999999,
	false,
	0
)

local goal = 
{
	Position = UDim2.new(0,0,0,0)
}

local tween = tweenservice:Create(frame2, info, goal)
tween:Play()
