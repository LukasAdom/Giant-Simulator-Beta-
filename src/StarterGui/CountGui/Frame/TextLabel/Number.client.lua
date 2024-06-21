local plr = game.Players.LocalPlayer

local abb = {	
	K = 4,
	M = 7,
	B = 10,
	T = 13,
	q = 16,
	Q = 19,
	s = 22,
	S = 25,
	o = 28,
	n = 31
}
local money = plr.leaderstats:WaitForChild("Rebirths")
local number1 = plr.leaderstats:WaitForChild("Rebirths")
script.Parent.Text = number1.Value

local number = plr.leaderstats:WaitForChild("Rebirths").Value
	
	script.Parent.Text = number
	
	local text = tostring(math.floor(number,number1))	
	local CA
	for abb, digits in pairs(abb) do
		if #text >= digits and #text < (digits + 3) then
			CA = abb
			break
		end
	end
	
	if CA then
		local digits = abb[CA]
		
		local rounded = math.floor(number / 10 ^ (digits - 2)) * 10 ^ (digits - 2)
		
		
		text = "" .. string.format("%.1f ", rounded / 10 ^ (digits - 1)) .. CA
	else
		text = "" .. number
	end
	

	script.Parent.Text = text

money:GetPropertyChangedSignal("Value"):Connect(function()
local number = plr.leaderstats:WaitForChild("Rebirths").Value
	
	script.Parent.Text = number
	
	local text = tostring(math.floor(number,number1))	
	local CA
	for abb, digits in pairs(abb) do
		if #text >= digits and #text < (digits + 3) then
			CA = abb
			break
		end
	end
	
	if CA then
		local digits = abb[CA]
		
		local rounded = math.floor(number / 10 ^ (digits - 2)) * 10 ^ (digits - 2)
		
		
		text = "" .. string.format("%.1f ", rounded / 10 ^ (digits - 1)) .. CA
	else
		text = "" .. number
	end
	

	script.Parent.Text = text
end)



