local UIS = game:GetService("UserInputService")
local click = script.Parent.Parent.Parent.Click
local template = script:WaitForChild("Template")
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local part = game.Workspace.Part2
local open = false
local db = false
local db2 = false

script.Parent.MouseButton1Click:Connect(function()
	if not db == true then
		db = true
		game.ReplicatedStorage.PetBuy:FireServer()
		wait(3)
		db = false
		
	end	
end)


UIS.InputBegan:Connect(function(Input,gameProcessedEvent)
	if not gameProcessedEvent then
		if Input.KeyCode == Enum.KeyCode.R then
			if open == true then
				if not db == true then
					db = true				
					click:Play()
					game.ReplicatedStorage.PetBuy:FireServer()
					wait(3)
					db = false
				end
			end
		end
	end
end)

while wait() do
	local dis = (char.Head.Position - part.Position).Magnitude	
	if dis <= 10 then
		open = true
	elseif dis >= 10 then
		open = false
	end
end