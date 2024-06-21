local playergui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local plrs = game:GetService("Players")
local plr = game.Players.LocalPlayer.Character 
local pl = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local camera = game.Workspace.Camera
local closeframe = script.Parent.Menu.CloseFrame
local closeframe2 = script.Parent.RebirthGui.CloseFrame2
local closeframe3 = script.Parent.GamePassShop.CloseFrame3
local closeframe4 = script.Parent:WaitForChild("CountGui").CloseFrame4
local closeframe5 = script.Parent:WaitForChild("TeleportGui").CloseFrame5
local closeframe6 = script.Parent:WaitForChild("InvGui").CloseFrame6
local db = false
local tweeninfo = TweenInfo.new(
	2,
	Enum.EasingStyle.Exponential,
	Enum.EasingDirection.In,
	0,
	false
)



game.ReplicatedStorage.Teleport.OnClientEvent:Connect(function()
	if not db then
		
		db = true
		
		script.Parent.Menu.IgnoreGuiInset = true
		script.Parent.RebirthGui.IgnoreGuiInset = true
		script.Parent.GamePassShop.IgnoreGuiInset = true
		script.Parent.InvGui.IgnoreGuiInset = true
		script.Parent.TeleportGui.IgnoreGuiInset = true 
		plr.Humanoid.WalkSpeed = 0			
		closeframe.Position = UDim2.new(1.2, 0, 0, 0)
		closeframe2.Position = UDim2.new(1.2, 0, 0, 0)
		closeframe3.Position = UDim2.new(1.2, 0, 0, 0)
		
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
		
		local tween = TweenService:Create(closeframe, info, goal)
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
		
		local tween = TweenService:Create(closeframe2, info, goal)
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
		
		local tween = TweenService:Create(closeframe3, info, goal)
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
		
		local tween = TweenService:Create(closeframe4, info, goal)
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
		
		local tween = TweenService:Create(closeframe5, info, goal)
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
		
		local tween = TweenService:Create(closeframe6, info, goal)
		tween:Play()
		
		wait(0.5)
		
		local d = plr:GetChildren() 
		for i=1, #d do 
			if (d[i].className == "Accessory") then 
				d[i].Handle.Transparency = 1
			end 
		end
		if plr.Humanoid.RigType == Enum.HumanoidRigType.R15 then
			plr.HumanoidRootPart.Position = Vector3.new(71.213, 3.864, 207.863)
			plr.LeftUpperLeg.Transparency = 1
			plr.LeftLowerLeg.Transparency = 1
			plr.LeftFoot.Transparency = 1
			plr.RightUpperLeg.Transparency = 1
			plr.RightLowerLeg.Transparency = 1
			plr.RightFoot.Transparency = 1
			plr.RightUpperArm.Transparency = 1
			plr.RightLowerArm.Transparency = 1
			plr.RightHand.Transparency = 1
			plr.LeftUpperArm.Transparency = 1
			plr.LeftLowerArm.Transparency = 1
			plr.LeftHand.Transparency = 1
			plr.UpperTorso.Transparency = 1
			plr.LowerTorso.Transparency = 1
			plr.Head.Transparency = 1
			plr.Head.face.Transparency = 1
			
			playergui.GamePassShop.MainButton.Visible = false
			playergui.InvGui.MainButton.Visible = false
			playergui.TeleportGui.MainButton.Visible = false
			playergui.RebirthGui.MainButton.Visible = false
			playergui.CountGui.Enabled = false
			playergui.NPCGui.Enabled = false
			
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
			
			local tween = TweenService:Create(closeframe, info, goal)
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
			
			local tween = TweenService:Create(closeframe2, info, goal)
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
			
			local tween = TweenService:Create(closeframe3, info, goal)
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
			
			local tween = TweenService:Create(closeframe4, info, goal)
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
			
			local tween = TweenService:Create(closeframe5, info, goal)
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
			
			local tween = TweenService:Create(closeframe6, info, goal)
			tween:Play()
			
			camera.CameraType = Enum.CameraType.Scriptable
			camera.CFrame = game.Workspace.PartCamera1.CFrame
			
			local tween = TweenService:Create(camera, tweeninfo, {CFrame = game.Workspace.PartCamera2.CFrame})
			tween:Play()
			
			wait(99999999999999999)
			camera.CameraType = Enum.CameraType.Custom
			db = false
			
			
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
			
			local tween = TweenService:Create(closeframe, info, goal)
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
			
			local tween = TweenService:Create(closeframe2, info, goal)
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
			
			local tween = TweenService:Create(closeframe3, info, goal)
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
			
			local tween = TweenService:Create(closeframe4, info, goal)
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
			
			local tween = TweenService:Create(closeframe5, info, goal)
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
			
			local tween = TweenService:Create(closeframe6, info, goal)
			tween:Play()
			
			wait(0.5)
			
			local d = plr:GetChildren() 
			for i=1, #d do 
				if (d[i].className == "Accessory") then 
					d[i].Handle.Transparency = 1
				end 
			end
			
			if plr.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				plr.LeftLeg.Transparency = 1
				plr.RightLeg.Transparency = 1
				plr.RightArm.Transparency = 1
				plr.LeftArm.Transparency = 1
				plr.Torso.Transparency = 1
				plr.Head.Transparency = 1
				plr.Head.face.Transparency = 1 
				
				playergui.GamePassShop.MainButton.Visible = false
				playergui.RebirthGui.MainButton.Visible = false
				playergui.InvGui.MainButton.Visible = false
				playergui.TeleportGuiMainButton.Visible = false
				playergui.CountGui.Enabled = false
				playergui.NPCGui.Enabled = false
				plr.HumanoidRootPart.Position = Vector3.new(71.213, 3.864, 207.863)
				
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
				
				local tween = TweenService:Create(closeframe, info, goal)
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
				
				local tween = TweenService:Create(closeframe2, info, goal)
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
				
				local tween = TweenService:Create(closeframe3, info, goal)
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
				
				local tween = TweenService:Create(closeframe4, info, goal)
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
				
				local tween = TweenService:Create(closeframe5, info, goal)
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
				
				local tween = TweenService:Create(closeframe6, info, goal)
				tween:Play()
				
				camera.CameraType = Enum.CameraType.Scriptable
				camera.CFrame = game.Workspace.PartCamera1.CFrame
				
				local tween = TweenService:Create(camera, tweeninfo, {CFrame = game.Workspace.PartCamera2.CFrame})
				tween:Play()
				
				wait(99999999999999999)
				db = false
				camera.CameraType = Enum.CameraType.Custom
			end
		end
	end
end)



