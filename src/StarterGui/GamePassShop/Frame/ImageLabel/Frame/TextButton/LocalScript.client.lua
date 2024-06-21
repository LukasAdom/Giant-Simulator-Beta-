local ts = game:GetService("TweenService")
local fis = script.Parent

script.Parent.MouseButton1Click:Connect(function()
	
	game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer,11340254)
	
	script.Parent.Parent.Parent.Parent.Parent.Click:Play()
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
		Position = UDim2.new(0.032, 0,0.862, 0)
}

local tween = ts:Create(fis, info, goal)
	tween:Play()
	wait(0.1)
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
		Position = UDim2.new(0.032, 0,0.842, 0)
	}
	
	local tween = ts:Create(fis, info, goal)
	tween:Play()
end)
