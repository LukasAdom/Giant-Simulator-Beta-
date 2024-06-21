local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
 
local player = Players.LocalPlayer
 
-- Create effects and parent them to the player's current camera
local blurEffect = Instance.new("BlurEffect")
blurEffect.Parent = workspace.CurrentCamera
local colorCorrectionEffect = Instance.new("ColorCorrectionEffect")
colorCorrectionEffect.Parent = workspace.CurrentCamera
 
-- Effect constants
local EFFECT_DELAY = 0  -- Seconds
local EFFECT_DURATION = 6  -- Seconds
local TINT_COLOR = Color3.fromRGB(200, 45, 45)
local BLUR_INTENSITY = 56  -- From 0 to 56 (full blur)
 
-- Create a "TweenInfo" used for the duration of both the blur and color effects
local deathEffectInfo = TweenInfo.new(
	EFFECT_DURATION,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.Out,
	0,
	false,
	EFFECT_DELAY)
 
-- Create tweens using specific goals for blur and color
local tweenBlurGoal = {
	Size = BLUR_INTENSITY,
	-- Other properties to customize based off the "BlurEffect" instance
}
local tweenColorGoal = {
	TintColor = TINT_COLOR
	-- Other properties to customize based off the "ColorCorrectionEffect" instance
}
local tweenBlur = TweenService:Create(blurEffect, deathEffectInfo, tweenBlurGoal)
local tweenColor = TweenService:Create(colorCorrectionEffect, deathEffectInfo, tweenColorGoal)
 
local function playDeathTween()
	blurEffect.Enabled = true
	colorCorrectionEffect.Enabled = true
	tweenBlur:Play()
	tweenColor:Play()
end
 
local function setupDeathTween(character)
	
	local humanoid = character:WaitForChild("Humanoid")
 
	if tweenBlur and tweenBlur.PlaybackState == Enum.PlaybackState.Playing then
		tweenBlur:Cancel()
		tweenColor:Cancel()
	end
 
	-- Disable the effects and set them to starting values
	blurEffect.Enabled = false
	blurEffect.Size = 0
	colorCorrectionEffect.Enabled = false
	colorCorrectionEffect.TintColor = Color3.fromRGB(255, 255, 255)
 
	-- Create the "Died" event connection for the tween
	humanoid.Died:Connect(function()
		playDeathTween()
	end)
end
 
-- Event connections
player.CharacterAdded:Connect(setupDeathTween)
 
if player.Character then
	setupDeathTween(player.Character)
end