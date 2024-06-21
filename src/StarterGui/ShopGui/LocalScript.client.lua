--// Viriables //--

local debounce = false
local tweenervice  = game:GetService("TweenService")
local frame = script.Parent.Frame
local blur = game.Lighting.Blur
local playergui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local gamepassshop = playergui:WaitForChild("GamePassShop").MainButton
local rebirthshop = playergui:WaitForChild("RebirthGui").MainButton
local teleportgui = playergui:WaitForChild("TeleportGui").MainButton
local invgui = playergui:WaitForChild("InvGui").MainButton

--// TweenService/Main/RemoteEvent //--

game.ReplicatedStorage.ShowGuiShop.OnClientEvent:Connect(function()
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
		Position = UDim2.new(0.47, 0, 0.5, 0)
	}
	
	local tween = tweenervice:Create(frame, info, goal)
	tween:Play()
	
	local info = TweenInfo.new(
	0.3,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.In,
	0,
	false,
	0
	)
	
	local goal = 
	{
		Position = UDim2.new(-0.044, 0,0.667, 0)
	}
	
	local tween = tweenervice:Create(gamepassshop, info, goal)
	tween:Play()
	
	local info = TweenInfo.new(
	0.3,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.In,
	0,
	false,
	0
	)
	
	local goal = 
	{
		Position = UDim2.new(-0.044, 0,0.883, 0)
	}
	
	local tween = tweenervice:Create(rebirthshop, info, goal)
	tween:Play()
	
	local info = TweenInfo.new(
		0.3,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.In,
		0,
		false,
		0
	)
	
	local goal = 
	{
		Position = UDim2.new(-0.044, 0,0.2, 0)
	}
	
	local tween = tweenervice:Create(teleportgui, info, goal)
	tween:Play()
	
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
		Position = UDim2.new(-0.04, 0,0.198, 0)
	}
	
	local tween = tweenervice:Create(invgui, info, goal)
	tween:Play()
	
	blur.Size = 10
	
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)
end)

game.ReplicatedStorage.CloseGuiShop.OnClientEvent:Connect(function()
	if not debounce then
		debounce = true
		local info = TweenInfo.new(
	0.5,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.In,
	0,
	false,
	0
	)
	
		local goal = 
	{
			Position = UDim2.new(0.47, 0, -1.2, 0)
			
		}
	
		local tween = tweenervice:Create(frame, info, goal)
		tween:Play()
		
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
		Position = UDim2.new(0.044, 0,0.667, 0)
	}
	
	local tween = tweenervice:Create(gamepassshop, info, goal)
		tween:Play()
		
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
		Position = UDim2.new(0.044, 0,0.883, 0)
	}
	
	local tween = tweenervice:Create(rebirthshop, info, goal)
		tween:Play()
		
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
			Position = UDim2.new(0.046, 0,0.2, 0)
		}
		
		local tween = tweenervice:Create(teleportgui, info, goal)
		tween:Play()
		
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
			Position = UDim2.new(0.125, 0,0.198, 0)
		}
		
		local tween = tweenervice:Create(invgui, info, goal)
		tween:Play()
		
		blur.Size = 2
		
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
	end
	wait(0.5)
	debounce = false
end)