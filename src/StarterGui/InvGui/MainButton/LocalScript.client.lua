--// Variables //--

local tweenservice = game:GetService("TweenService")
local imagelabel = script.Parent.ImageLabel
local mainbutton = script.Parent
local frame = script.Parent.Parent.Frame
local frameout = script.Parent.Parent.FrameoutLine
local open = false

--// TweenService/Main //--

script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Click:Play()
	if open == false then
		
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
			Position = UDim2.new(0.191, 0,0.103, 0)
		}
		
		local tween = tweenservice:Create(frame, info, goal)
		tween:Play()
		
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
			Position = UDim2.new(0.191, 0,0.103, 0)
		}
		
		local tween = tweenservice:Create(frameout, info, goal)
		tween:Play()
		
		open = true
	elseif open == true then
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
			Position = UDim2.new(0.191, 0,1, 0)
		}
		
		local tween = tweenservice:Create(frame, info, goal)
		tween:Play()
		
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
			Position = UDim2.new(0.191, 0,1, 0)
		}
		
		local tween = tweenservice:Create(frameout, info, goal)
		tween:Play()
		
		open = false
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
		ImageColor3 = Color3.fromRGB(255, 82, 85)
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
		Size = UDim2.new(0.067, 0,0.178, 0)
	}
	
	local tween = tweenservice:Create(mainbutton, info, goal)
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
		ImageColor3 = Color3.fromRGB(255, 255, 255)
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
	
end)

