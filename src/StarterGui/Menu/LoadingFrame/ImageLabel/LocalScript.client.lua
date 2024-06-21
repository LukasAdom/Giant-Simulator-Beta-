local a = script.Parent
local ts = game:GetService("TweenService")

local info = TweenInfo.new(
	200,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.Out,
	0,
	false,
	0
)

local goal = 
{
	Position = UDim2.new(0, 0, 0, 0)
}

local tween = ts:Create(a, info, goal)
tween:Play()
