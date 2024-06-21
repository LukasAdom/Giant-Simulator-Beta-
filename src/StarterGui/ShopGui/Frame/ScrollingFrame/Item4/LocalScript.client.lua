

--// Viraibles //--

local price = script.Parent.ItemPrice
local price2 = script.Parent.Parent.Parent.Info.Price
local price3 = script.Parent.Parent.Parent.Info.ItemPrice
local pricefake = script.Parent.FakeItemPrice
local name = script.Parent.ItemName
local name2 = script.Parent.Parent.Parent.Info.ItemName
local name3 = script.Parent.Parent.Parent.Info.ItemNameText
local stats = script.Parent.Stats
local stats2 = script.Parent.Parent.Parent.Info.Stats2
local stats3 = script.Parent.Parent.Parent.Info.ItemStats
local Item = script.Parent
local description = script.Parent.Description
local description2 = script.Parent.Parent.Parent.Info.Description2
local description3 = script.Parent.Parent.Parent.Info.ItemDescription
local tweenervice  = game:GetService("TweenService")
local Roundframe = script.Parent.Frame
local buy = script.Parent.ItemBuy
local buy2 = script.Parent.Parent.Parent.Info.BuyButton
local buy3 = script.Parent.Parent.Parent.Info.Buy

--// Main //--

script.Parent.MouseButton1Click:connect(function()
	price2.Value = price.Value
	price3.Text = pricefake.Value
	name2.Value = name.Value
	name3.Text = name.Value
	stats2.Value = stats.Value
	stats3.Text = stats.Value
	description2.Value = description.Value
	description3.Text = description.Value
	buy2.Value = buy.Value
	buy3.Text = buy.Value
	
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFramePaper.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameWeight.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameQuestionMark.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameStick.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameToothBruh.Visible = true
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameBanana.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameApple.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFramePillow.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameKat.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameKatV2.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameHeavyRat.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameWaterPig.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameLukasSoul.Visible = false
end)

script.Parent.TouchTap:Connect(function()
	price2.Value = price.Value
	price3.Text = pricefake.Value
	name2.Value = name.Value
	name3.Text = name.Value
	stats2.Value = stats.Value
	stats3.Text = stats.Value
	description2.Value = description.Value
	description3.Text = description.Value
	buy2.Value = buy.Value
	buy3.Text = buy.Value
	
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFramePaper.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameWeight.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameQuestionMark.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameStick.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameToothBruh.Visible = true
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameBanana.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameApple.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFramePillow.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameKat.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameKatV2.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameHeavyRat.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameWaterPig.Visible = false
	script.Parent.Parent.Parent.ViewPortFolder.ViewportFrameLukasSoul.Visible = false
end)

script.Parent.MouseEnter:Connect(function()
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
			Size = UDim2.new(0.161, 0, 0.151, 0)
		}
	
		local tween = tweenervice:Create(Item, info, goal)
	tween:Play()
	
	Roundframe.ImageColor3 = Color3.fromRGB(0, 202, 202)
	
end)

script.Parent.MouseLeave:Connect(function()
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
			Size = UDim2.new(0.147, 0, 0.138, 0)
		}
	
		local tween = tweenervice:Create(Item, info, goal)
	tween:Play()
	
	 Roundframe.ImageColor3 = Color3.fromRGB(2, 231, 231)
	
end)