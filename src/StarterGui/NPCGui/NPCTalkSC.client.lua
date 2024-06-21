--// Services //--

local runservice = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local plrs = game:GetService("Players")


--// Main Variables //--


local detectedNPC = nil
local Detected = false
local chatting = false
local skip = false
local exit = false
local working = false
local hide = false
local points = 1


--// Player(plr) Variables //--


local plr = plrs.LocalPlayer
local camera = game.Workspace.CurrentCamera
local gui = script.Parent
local sounds = gui.Sounds
local promptlabel = gui.PromptLabel
local linelabel = gui.LineLabel
local textbutton = gui.LineLabel.TextButton
local textbttonskip = gui.LineLabel.TextButtonSkip
local playergui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Playerss = game:GetService("Players")
local localPlayer = Playerss.LocalPlayer

--// Character(Char) Variables //--


local character = plr.Character or plr.CharacteAdded:Wait()
local CharHMR = character:WaitForChild("HumanoidRootPart")


--// NPC Variables //--


local NPCS = game.Workspace:WaitForChild("NPC's")


--// Main functions //--

UIS.InputBegan:Connect(function(Input,gameProcessedEvent)
	if not gameProcessedEvent then
		if Input.KeyCode == Enum.KeyCode.X then
			if chatting == true then
				skip = true
				sounds.Click:Play();
			end
		end
	end
end)

gui.LineLabel.TextButton.MouseButton1Click:Connect(function()
	if chatting == true then
		skip = true
		sounds.Click:Play();
	end
end)

gui.LineLabel.TextButton.TouchTap:Connect(function()
	if chatting == true then
		skip = true
		sounds.Click:Play();
	end
end)

UIS.InputBegan:Connect(function(Input,gameProcessedEvent)
	if not gameProcessedEvent then
		if Input.KeyCode == Enum.KeyCode.P then
			if chatting == true then
				exit = true
				sounds.Click:Play();
			end
		end
	end
end)

gui.LineLabel.TextButtonSkip.MouseButton1Click:Connect(function()
	if chatting == true then
		exit = true
		sounds.Click:Play();
	end
end)

gui.LineLabel.TextButtonSkip.TouchTap:Connect(function()
	if chatting == true then
		exit = true
		sounds.Click:Play();
	end
end)

UIS.InputBegan:Connect(function(Input,gameProcessedEvent)
	if not gameProcessedEvent then
		if Input.KeyCode == Enum.KeyCode.E then
			
			if Detected == true then
				
				if localPlayer.Character then 
					local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid");
					if humanoid then 
						humanoid:UnequipTools();
					end
				end
				
				hide = true
				local Lines = detectedNPC:FindFirstChild("Lines");
				if Lines then
					sounds.Click:Play()
					
					chatting = true
					Detected = false
					character.Humanoid.WalkSpeed = 0
					playergui.RebirthGui.Enabled = false
					playergui.TeleportGui.Enabled = false
					playergui.RebirthGui.MainButton.Visible = false
					playergui.GamePassShop.Enabled = false
					playergui.InvGui.Enabled = false
					playergui.CountGui.Enabled = false
					game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false);
					game.Players.LocalPlayer.Character.Head.BillboardGui.TextLabel.Visible = false
					working = false
					
					linelabel.Text = " "
					
					promptlabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2);
					linelabel:TweenPosition(UDim2.new(0, 0, 0.796, 0), "In", "Linear", 0.2);
					
					if game.ReplicatedStorage.IfTitle == true then
						
					end
					
					wait(0.5)
					
					local line_table = Lines:GetChildren();
					
					table.sort(line_table, function(a,b)
						return string.byte(a.Name) < string.byte(b.Name)
					end)
					
					for i, Line in ipairs(line_table) do
						local text1 = Line.Value
						for i = 1, #text1 do
							linelabel.Text = string.sub(text1, 1, i);
							sounds.Talk:Play();
							if skip == true then
								skip = false
								linelabel.Text = text1
								break
							end
							
							
							if exit == true then
								break
							end	
							wait(0.07)
						end
						if exit == true then
							exit = false
							break
						end	
						repeat wait() until skip == true or exit == true
						skip = false
					end
					exit = false
					skip = false
					
					promptlabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2);
					linelabel:TweenPosition(UDim2.new(0, 0, 1.2, 0), "Out", "Linear", 0.2);
					
					wait(0.5);
					
					chatting = false
					Detected = false
					character.Humanoid.WalkSpeed = 16
					playergui.RebirthGui.Enabled = true
					playergui.RebirthGui.MainButton.Visible = true
					playergui.InvGui.Enabled = true
					playergui.TeleportGui.Enabled = true
					playergui.GamePassShop.Enabled = true
					playergui.CountGui.Enabled = true
					game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true);
					game.Players.LocalPlayer.Character.Head.BillboardGui.TextLabel.Visible = true
					working = true
					hide = false
				end
			end
		end	
	end
end)

script.Parent.PromptLabel.MouseButton1Click:Connect(function(click)
	
	if Detected == true then
		
		hide = true
		local Lines = detectedNPC:FindFirstChild("Lines");
		if Lines then
			sounds.Click:Play()
			
			chatting = true
			Detected = false
			character.Humanoid.WalkSpeed = 0
			playergui.RebirthGui.Enabled = false
			playergui.InvGui.Enabled = false
			playergui.RebirthGui.MainButton.Visible = false
			playergui.GamePassShop.Enabled = false
			playergui.CountGui.Enabled = false
			game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)
			
			working = false
			
			linelabel.Text = " "
			
			promptlabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2);
			linelabel:TweenPosition(UDim2.new(0, 0, 0.796, 0), "In", "Linear", 0.2);
			
			wait(0.5)
			
			
			for i, Line in pairs(Lines:GetChildren()) do
				local text = Line.Value
				
				for i = 1, #text do
					linelabel.Text = string.sub(text, 1, i);
					sounds.Talk:Play()
					if skip == true then
						skip = false
						linelabel.Text = text
						break
					end
					
					
					if exit == true then
						break
					end	
					wait(0.07)
				end
				if exit == true then
					exit = false
					break
				end	
				repeat wait() until skip == true or exit == true
				skip = false
			end
			
			exit = false
			skip = false
			
			promptlabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2);
			linelabel:TweenPosition(UDim2.new(0, 0, 1.2, 0), "Out", "Linear", 0.2);
			
			wait(0.5)
			
			chatting = false
			Detected = false
			character.Humanoid.WalkSpeed = 16
			playergui.RebirthGui.Enabled = true
			playergui.InvGui.Enabled = true
			playergui.RebirthGui.MainButton.Visible = true
			playergui.TeleportGui.Enabled = true
			playergui.GamePassShop.Enabled = true
			playergui.CountGui.Enabled = true
			game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true);
			working = true
			hide = false
		end
	end
end)

--// Camera Loop //-


runservice.RenderStepped:Connect(function()
	if Detected == false and chatting == false then
		for i, NPC in pairs(NPCS:GetChildren()) do
			local humanoid = NPC:FindFirstChild("Humanoid");
			local HMR = NPC:FindFirstChild("HumanoidRootPart");
			
			if humanoid and HMR then
				if (HMR.Position - CharHMR.Position).magnitude < 15  then
					Detected = true
					detectedNPC = NPC
					promptlabel:TweenSize(UDim2.new(0.063, 0, 0.119, 0), "In", "Linear", 0.2);
					print(detectedNPC.Name);
				end
			end
		end
	end
	
	if Detected == true and chatting == false then
		local humanoid = detectedNPC:FindFirstChild("Humanoid");
		local HMR = detectedNPC:FindFirstChild("HumanoidRootPart");
		
		if humanoid and HMR then
			if (HMR.Position - CharHMR.Position).magnitude > 15  then
				Detected = false
				detectedNPC = nil
				promptlabel:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2);
				print("No Longer Detected NPC");
			else
				local WTSP = camera:WorldToScreenPoint(HMR.Position)
				promptlabel.Position = UDim2.new(0, WTSP.X ,0, WTSP.Y)
			end	
		end
	end
	
	if chatting == true then
		local humanoid = detectedNPC:FindFirstChild("Humanoid");
		local HMR = detectedNPC:FindFirstChild("HumanoidRootPart");
		
		if humanoid and HMR then
			camera.CameraType = Enum.CameraType.Scriptable
			camera.CFrame = camera.CFrame:Lerp(HMR.CFrame * CFrame.new(-4, 4, -7) * CFrame.fromOrientation(math.rad(-20), math.rad(215), 0), 0.07)
		end
	elseif working == true then
		camera.CameraType = "Custom"
		
	end
	
end)

local orignalTransparency = {}

local function checkPart(part) 
	for a,b in pairs(part:GetChildren()) do 
		checkPart(b) 
	end
	if part:IsA("BasePart") or part:IsA("Decal") then
		if hide then 
			if not orignalTransparency[part] then
				orignalTransparency[part] = part.Transparency
			end
			part.Transparency = 1
		else 
			if orignalTransparency[part] then
				part.Transparency = orignalTransparency[part];
				orignalTransparency[part] = nil
			end
		end
	end
end

local players = game:GetService("Players");
local localPlayer = players.LocalPlayer

game:GetService("RunService").RenderStepped:Connect(function()
	
	for i,v in pairs(players:GetPlayers()) do
		local char = v.Character
		if char then
			checkPart(char);
		end
	end
	
	for part,trans in pairs(orignalTransparency) do
		if not part then
			orignalTransparency[part] = nil
		elseif not part.Parent then
			orignalTransparency[part] = nil
		end
	end
end)

