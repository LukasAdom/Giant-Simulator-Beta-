
local billboardgui = game:GetService("ServerStorage"):WaitForChild("BillboardGui")
local billboardgui1 = game:GetService("ServerStorage"):WaitForChild("BillboardGui1")
local billboardgui2 = game:GetService("ServerStorage"):WaitForChild("BillboardGui2")
local billboardgui3 = game:GetService("ServerStorage"):WaitForChild("BillboardGui3")

game.Players.PlayerAdded:Connect(function(player)
  
	player.CharacterAdded:Connect(function(character)
   
		if player.UserId == 82620606 then 
			local clonedgui = billboardgui:Clone()
			clonedgui.TextLabel.Text = "Owner"
			clonedgui.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
			clonedgui.Parent = game.Workspace:WaitForChild(player.Name).Head
		end
  
	end)
 
 
end)


game.Players.PlayerAdded:Connect(function(player)
  
	player.CharacterAdded:Connect(function(character)
   
		if player.UserId == 472005525 then 
			local clonedgui = billboardgui1:Clone()
			clonedgui.TextLabel.Text = "Friend"
			clonedgui.TextLabel.TextColor3 = Color3.fromRGB(255, 11, 243)
			clonedgui.Parent = game.Workspace:WaitForChild(player.Name).Head
		end
  
	end)
 
 
end)

game.Players.PlayerAdded:Connect(function(player)
  
	player.CharacterAdded:Connect(function(character)
   
		if player.UserId == 591929487 then 
			local clonedgui = billboardgui2:Clone()
			clonedgui.TextLabel.Text = "Sofčius"
			clonedgui.TextLabel.TextColor3 = Color3.fromRGB(255, 96, 99)
			clonedgui.Parent = game.Workspace:WaitForChild(player.Name).Head
		end
  
	end)
 
 
end)

game.Players.PlayerAdded:Connect(function(player)
	
player.CharacterAdded:Connect(function(character)
   
		if player.UserId == 239318057 then 
			local clonedgui = billboardgui3:Clone()
			clonedgui.TextLabel.Text = "Augustas"
			clonedgui.TextLabel.TextColor3 = Color3.fromRGB(135, 255, 251)
			clonedgui.Parent = game.Workspace:WaitForChild(player.Name).Head
		end
  
	end)
 
 
end)