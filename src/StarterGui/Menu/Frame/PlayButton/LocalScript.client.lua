--// Variables //--

local camera = workspace.CurrentCamera
local playergui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local tweenervice  = game:GetService("TweenService")
local playbutton = script.Parent
local clicksound = script.Parent.Parent.Click
local closeframe = script.Parent.Parent.Parent.CloseFrame
local closeframe2 = script.Parent.Parent.Parent.Parent.RebirthGui.CloseFrame2
local closeframe3 = script.Parent.Parent.Parent.Parent:WaitForChild("GamePassShop").CloseFrame3
local closeframe4 = script.Parent.Parent.Parent.Parent:WaitForChild("CountGui").CloseFrame4
local closeframe5 = script.Parent.Parent.Parent.Parent:WaitForChild("TeleportGui").CloseFrame5
local closeframe6 = script.Parent.Parent.Parent.Parent:WaitForChild("InvGui").CloseFrame6
local gamepassshop = playergui:WaitForChild("GamePassShop")
local blur = game.Lighting.Blur
local UIS = game:GetService("UserInputService")
local UIST = UIS.TouchEnded
local frame = script.Parent.Parent
local creditframe = script.Parent.Parent.Parent.CreditFrame


--// TweenService/Main/Mobile //--
playergui.RebirthGui.Enabled = false
playergui.Menu.Enabled = true
gamepassshop.Enabled = false
playergui.CountGui.Enabled = false
playergui.TeleportGui.Enabled = false
playergui.InvGui.Enabled = false


script.Parent.MouseButton1Click:Connect(function()
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe2, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe3, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe4, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe5, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe6, info, goal);
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
		Position = UDim2.new(1.2, 0, 0.032, 0)
	}
	
	local tween = tweenervice:Create(creditframe, info, goal);
	tween:Play()
	
	wait(0.5)
	camera.CameraType = "Custom"
	local info = TweenInfo.new(
		0.01,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out,
		0,
		false,
		0
	)
	
	local goal = 
	{
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(frame, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe2, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe3, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe4, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe5, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe6, info, goal);
	tween:Play()
	
	playergui.RebirthGui.Enabled = true
	playergui.GamePassShop.Enabled = true
	playergui.CountGui.Enabled = true
	playergui.TeleportGui.Enabled = true
	playergui.InvGui.Enabled = true
	blur.Size = 2
	wait(0.5)
	playergui.Menu.Enabled = false
	
end)

script.Parent.TouchTap:Connect(function()
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe2, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe3, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe4, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe5, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe6, info, goal);
	tween:Play()
	
	wait(0.5)
	camera.CameraType = "Custom"
	local info = TweenInfo.new(
		0.01,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out,
		0,
		false,
		0
	)
	
	local goal = 
	{
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(frame, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe2, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe3, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe4, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe5, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe6, info, goal);
	tween:Play()
	
	playergui.RebirthGui.Enabled = true
	playergui.GamePassShop.Enabled = true
	playergui.CountGui.Enabled = true
	playergui.TeleportGui.Enabled = true
	playergui.InvGui.Enabled = true
	blur.Size = 2
	wait(0.5)
	playergui.Menu.Enabled = false
end)


--// MouseEnter //--

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
		Position = UDim2.new(0.295, 0, 0.416, 0)
	}
	
	local tween = tweenervice:Create(playbutton, info, goal);
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
		Size = UDim2.new(0.497, 0, 0.13, 0)
	}
	
	local tween = tweenervice:Create(playbutton, info, goal);
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
		Position = UDim2.new(0.25, 0, 0.416, 0)
	}
	
	local tween = tweenervice:Create(playbutton, info, goal);
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
		Size = UDim2.new(0.497, 0, 0.12, 0)
	}
	
	local tween = tweenervice:Create(playbutton, info, goal);
	tween:Play()
end)

--// Mobile //--

script.Parent.TouchLongPress:Connect(function()
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
		Position = UDim2.new(0.295, 0, 0.416, 0)
	}
	
	local tween = tweenervice:Create(playbutton, info, goal);
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
		Size = UDim2.new(0.497, 0, 0.13, 0)
	}
	
	local tween = tweenervice:Create(playbutton, info, goal);
	tween:Play()
	
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe2, info, goal);
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
		Position = UDim2.new(0, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe3, info, goal);
	tween:Play()
	
	wait(0.5)
	camera.CameraType = "Custom"
	local info = TweenInfo.new(
		0.01,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out,
		0,
		false,
		0
	)
	
	local goal = 
	{
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(frame, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe2, info, goal);
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
		Position = UDim2.new(-1.2, 0, 0, 0)
	}
	
	local tween = tweenervice:Create(closeframe3, info, goal);
	tween:Play()
	
	playergui.RebirthGui.Enabled = true
	playergui.GamePassShop.Enabled = true
	playergui.CountGui.Enabled = true
	playergui.TeleportGui.Enabled = true
	playergui.InvGui.Enabled = true
	blur.Size = 2
	wait(0.5)
	playergui.Menu.Enabled = false
	
end)

UIST:Connect(function()
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
		Position = UDim2.new(0.25, 0, 0.416, 0)
	}
	
	local tween = tweenervice:Create(playbutton, info, goal);
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
		Size = UDim2.new(0.497, 0, 0.12, 0)
	}
	
	local tween = tweenervice:Create(playbutton, info, goal);
	tween:Play()
end)