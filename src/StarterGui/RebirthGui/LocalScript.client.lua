--// viraibles //--


local replicatedStorage = game:GetService("ReplicatedStorage")
local starterRebirthAmount = 1000000

local open = script.Parent.Open
local player = game.Players.LocalPlayer
local mainFrame = script.Parent:WaitForChild("MainFrame")
local rebirthMenu = mainFrame:WaitForChild("RebirthMenu")
local mainButton = script.Parent:WaitForChild("MainButton")
local rebirthButton = rebirthMenu:WaitForChild("RebirthButton")
local strengthToRebirth = rebirthMenu:WaitForChild("StrengthToRebirth")
local rebirths = player:WaitForChild("leaderstats").Rebirths
local tweenervice  = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

--// Main //--

strengthToRebirth.Text = "You need at least "..math.floor((starterRebirthAmount + (rebirths.Value) * math.sqrt(100000000))).." strength to rebirth"

mainButton.MouseButton1Click:Connect(function()
	script.Parent.Click:Play()
	if open.Value == false then
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
			Position = UDim2.new(0.5, 0, 0.5, 0)
		}
	
		local tween = tweenervice:Create(mainFrame, info, goal)
		tween:Play()
		open.Value = true
	elseif open.Value == true then
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
			Position = UDim2.new(0.5, 0, -1.2, 0)
		}
	
		local tween = tweenervice:Create(mainFrame, info, goal)
		tween:Play()
		open.Value = false
	end
end)



rebirthButton.MouseButton1Click:Connect(function()
	script.Parent.Click:Play()
	local result = replicatedStorage.Remote.Rebirth:InvokeServer()
	
	if result == true then
		local players = game.Players:children()
		for i = 1, #players do
			if (players[i]:findFirstChild("leaderstats") ~= nil) and (players[i].leaderstats.Strength ~= nil) then
				players[i].leaderstats.Strength.Value = 0 
			end 
		end

		rebirthButton.Text = "Successfully Rebirthed"
		player.leaderstats.Strength.Value = 0
		wait(1)
		rebirthButton.Text = "CLICK HERE TO REBIRTH"
	elseif result == "NotEnoughStrength" then
		rebirthButton.Text = "You're to weak!"
		wait(1)
		rebirthButton.Text = "CLICK HERE TO REBIRTH"	
	end
end)

rebirths:GetPropertyChangedSignal("Value"):Connect(function()
	strengthToRebirth.Text = "You need at least "..math.floor((starterRebirthAmount + (rebirths.Value) * math.sqrt(100000000))).." strength to rebirth"
end)