local viewportcamera = Instance.new("Camera",script)
local playergui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
viewportcamera.CameraType = Enum.CameraType.Scriptable

local R = 0

local item = game.ReplicatedStorage.FakeItems.Pillow

local viewportpoint = Vector3.new(0,0,0)

local viewportframe = script.Parent

viewportframe.CurrentCamera = viewportcamera

item:SetPrimaryPartCFrame(CFrame.new(viewportpoint))

item.Parent = viewportframe

game:GetService("RunService").RenderStepped:Connect(function()


local cframe, size = item:GetBoundingBox()

local max =  math.max(size.X,size.Y,size.Z)

local dis = (max/math.tan(math.rad(viewportcamera.FieldOfView))) * 1.5

local curentdis = (max/2) + dis

	viewportcamera.CFrame = CFrame.Angles(0,math.rad(R),0) * CFrame.new(viewportpoint + Vector3.new(0,0,curentdis),viewportpoint)
	
	R = R + 1 
		
end)
