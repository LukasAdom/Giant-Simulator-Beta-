
--// Viriable //--


local price = script.Parent.Parent.Price
local tools = game.ReplicatedStorage:WaitForChild("Tools")
local tool = script.Parent.Parent.ItemName
local player = game.Players.LocalPlayer
local Playerss = game:GetService("Players")
local localPlayer = Playerss.LocalPlayer
local tweeneservice  = game:GetService("TweenService")
local buy = script.Parent.Buy_Roundify_12pxFis
local buy2 = script.Parent.Parent.Buy_Roundify_12px
local event = game:GetService("ReplicatedStorage"):WaitForChild("GiveMoney")
local human = player.Character:FindFirstChild("Humanoid")
local Backpack = player:WaitForChild("Backpack")
local toolchild = game.ReplicatedStorage.Tools:GetChildren()
local FindTool = Backpack:FindFirstChild(toolchild)
local scrollingframe = script.Parent.Parent.Parent.ScrollingFrame
local itemchild = scrollingframe
local button = script.Parent

--// Main //--

script.Parent.MouseButton1Click:connect(function()	
script.Parent.Parent.Parent.Click:Play()
	if player.leaderstats:FindFirstChild("Money").Value >= price.Value then 
		if localPlayer.Character then 
				local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid")
				if humanoid then 
					humanoid:UnequipTools()
				end
			end
		event:FireServer(price)
		player.Backpack:ClearAllChildren()
		game.ReplicatedStorage.ShopBuy:FireServer(tool.Value)

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
			Position = UDim2.new(0.492, 0,0.89, 0)
		}
	
		local tween = tweeneservice:Create(button, info, goal)
	tween:Play()
	
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
			Size = UDim2.new(0.947, 0,0.068, 0)
		}
	
		local tween = tweeneservice:Create(buy2, info, goal)
	tween:Play()
		
		script.Parent.Text = "Bought"		
		wait(0.2)
		
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
			Position = UDim2.new(0.492, 0,0.864, 0)
		}
	
		local tween = tweeneservice:Create(button, info, goal)
	tween:Play()
	
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
			Size = UDim2.new(0.947, 0,0.139, 0)
		}
	
		local tween = tweeneservice:Create(buy2, info, goal)
	tween:Play()
		
		script.Parent.Text = "Buy"
			
         	elseif player.leaderstats:FindFirstChild("Money").Value <= price.Value then 
			script.Parent.Text = "Not Enough"
			wait(0.5)
		script.Parent.Text = "Buy"
		
		
			
	end
end)

--// tween //--

script.Parent.MouseEnter:Connect(function()
		script.Parent.Parent.Parent.Sound:Play()
	buy.ImageColor3 = Color3.fromRGB(46, 212, 55)
end)

script.Parent.MouseLeave:Connect(function()
	buy.ImageColor3 = Color3.fromRGB(78, 255, 69)
end)