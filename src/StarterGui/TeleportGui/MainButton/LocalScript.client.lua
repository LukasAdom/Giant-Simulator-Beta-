--// Variables //--

local tweenservice = game:GetService("TweenService")
local imagelabel = script.Parent.ImageLabellabel
local mainbutton = script.Parent
local UIS = game:GetService("UserInputService")
local UIST = UIS.TouchEnded
local player = game.Players.LocalPlayer

--// TweenService/Main //--

script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Click:Play();
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(48.047, 27.311, 64.202));
end)

script.Parent.MouseEnter:Connect(function()
	script.Parent.Parent.Sound:Play();	
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
			Size = UDim2.new(0.069, 0, 0.18, 0);
		}
	
		local tween = tweenservice:Create(mainbutton, info, goal);
	tween:Play()
	
	imagelabel.Image = "rbxgameasset://Images/bit (1)"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit1"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit2"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit3"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit4"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit5"
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
			Size = UDim2.new(0.063, 0, 0.172, 0);
		}
	
		local tween = tweenservice:Create(mainbutton, info, goal);
	tween:Play()
	
	imagelabel.Image = "rbxgameasset://Images/bit5"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit4"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit3"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit2"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit1"
	wait(0.00000000001)
	imagelabel.Image = "rbxgameasset://Images/bit (1)"
	
end)



