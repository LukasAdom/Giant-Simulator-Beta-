--// Variables //--

local open = false
local aboutbutton = script.Parent
local clicksound = script.Parent.Parent.Click
local tweenervice  = game:GetService("TweenService")
local creditframe = script.Parent.Parent.Parent.CreditFrame
local UIS = game:GetService("UserInputService")
local UIST = UIS.TouchEnded

--// Main //--

aboutbutton.MouseButton1Click:Connect(function()
	script.Parent.Parent.Click:Play()
	if open == false then
		clicksound:Play()
		local info = TweenInfo.new(
	0.5,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.Out,
	0,
	false,
	0
	)
	
		local goal = 
	{
			Position = UDim2.new(0.677, 0, 0.032, 0)
		}
	
		local tween = tweenervice:Create(creditframe, info, goal)
		tween:Play()
		open = true
	elseif open == true then
		clicksound:Play()
		local info = TweenInfo.new(
	0.5,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.Out,
	0,
	false,
	0
	)
	
		local goal = 
	{
			Position = UDim2.new(1.2, 0, 0.032, 0)
		}
	
		local tween = tweenervice:Create(creditframe, info, goal)
		tween:Play()
		open = false
	end
end)

aboutbutton.TouchTap:Connect(function()
	script.Parent.Parent.Click:Play()
	if open == false then
		clicksound:Play()
		local info = TweenInfo.new(
	0.5,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.Out,
	0,
	false,
	0
	)
	
		local goal = 
	{
			Position = UDim2.new(0.677, 0, 0.032, 0)
		}
	
		local tween = tweenervice:Create(creditframe, info, goal)
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
			Position = UDim2.new(0.193, 0, 0.629, 0)
		}
	
		local tween = tweenervice:Create(aboutbutton, info, goal)
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
			Size = UDim2.new(0.702, 0, 0.13, 0)
		}
	
		local tween = tweenervice:Create(aboutbutton, info, goal)
		tween:Play()
		
		open = true
	elseif open == true then
		clicksound:Play()
		local info = TweenInfo.new(
	0.5,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.Out,
	0,
	false,
	0
	)
	
		local goal = 
	{
			Position = UDim2.new(1.2, 0, 0.032, 0)
		}
	
		local tween = tweenervice:Create(creditframe, info, goal)
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
			Position = UDim2.new(0.148, 0, 0.629, 0)
		}
	
		local tween = tweenervice:Create(aboutbutton, info, goal)
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
			Size = UDim2.new(0.702, 0, 0.12, 0)
		}
	
		local tween = tweenervice:Create(aboutbutton, info, goal)
		tween:Play()
		
		open = false
	end
end)


--// TweenService //--

script.Parent.MouseEnter:Connect(function()
		script.Parent.Parent.Hover:Play()
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
			Position = UDim2.new(0.193, 0, 0.629, 0)
		}
	
		local tween = tweenervice:Create(aboutbutton, info, goal)
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
			Size = UDim2.new(0.702, 0, 0.13, 0)
		}
	
		local tween = tweenervice:Create(aboutbutton, info, goal)
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
			Position = UDim2.new(0.148, 0, 0.629, 0)
		}
	
		local tween = tweenervice:Create(aboutbutton, info, goal)
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
			Size = UDim2.new(0.702, 0, 0.12, 0)
		}
	
		local tween = tweenervice:Create(aboutbutton, info, goal)
		tween:Play()
end)

