--// Viriables //--

local tweenservice = game:GetService("TweenService")
local mainbutton = script.Parent
local plr = game.Players.LocalPlayer
local dollarsign = script.Parent.DollarSign
local checker = script.Parent.Parent.Frame
local open = script.Parent.Parent.Open
local UIS = game:GetService("UserInputService")
local UISTE = UIS.TouchEnded


--// TweenService //--

script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Click:Play()
	if open.Value == false then
		local info = TweenInfo.new(
			0.3,
			Enum.EasingStyle.Quint,
			Enum.EasingDirection.Out,
			0,
			false,
			0
		)
		
		local goal = 
		{
			Position = UDim2.new(0.223, 0, 0.157, 0)
		}
		
		local tween = tweenservice:Create(checker, info, goal)
		tween:Play()
		
		open.Value = true
	elseif open.Value == true then
		local info = TweenInfo.new(
			0.3,
			Enum.EasingStyle.Quint,
			Enum.EasingDirection.Out,
			0,
			false,
			0
		)
		
		local goal = 
		{
			Position = UDim2.new(0.223, 0, -1, 0)
		}
		
		local tween = tweenservice:Create(checker, info, goal)
		tween:Play()
		open.Value = false
	end
end)




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
		ImageColor3 = Color3.fromRGB(42, 206, 66)
	}
	
	local tween = tweenservice:Create(dollarsign, info, goal)
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
		ImageColor3 = Color3.fromRGB(255, 255, 255)
	}
	
	local tween = tweenservice:Create(dollarsign, info, goal)
	tween:Play()
	
end)