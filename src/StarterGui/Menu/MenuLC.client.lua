--// Variables //--

local plr = game.Players.LocalPlayer
local char = plr.Character
local camera = workspace:WaitForChild("Camera")
local camerapart = workspace:WaitForChild("CameraPart")
local blur = game.Lighting.Blur

--// Camera //--

wait(1)
repeat wait() until char

camera.CameraType = "Scriptable"
camera.CFrame = camerapart.CFrame
script.Parent.IgnoreGuiInset = true
blur.Size = 10
