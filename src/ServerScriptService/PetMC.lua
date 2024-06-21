local PetMC = {}

PetMC.Pets = {
	
	["Common"] = {
		game.ReplicatedStorage.Pets:WaitForChild("Fox");
	};
	
	["Uncommon"] = {
		game.ReplicatedStorage.Pets:WaitForChild("Fox");
	};
	
	["Rare"] = {
		game.ReplicatedStorage.Pets:WaitForChild("Fox");
	};
	
	["Legendary"] = {
		game.ReplicatedStorage.Pets:WaitForChild("Fox");
	};
	
	["Unknown"] = {
		game.ReplicatedStorage.Pets:WaitForChild("Fox");
	};
	
}

PetMC.rarities = {
	
	["Common"] = 50;
	
	["Uncommon"] = 25;
	
	["Rare"] = 15;
	
	["Legendary"] = 9.9;
	
	["Unknown"] = 0.1;
}

PetMC.ChooseRandPet = function()
	
	local RNG = math.random(0.0,100)
	
	local count = 0.05
	
	for rarity, weight in pairs(PetMC.rarities)do
		count = count + weight
		if RNG <= count then
			
			local rarityTable = PetMC.Pets[rarity]
			local chosenPet = rarityTable[math.random(1,#rarityTable)]
			
			return chosenPet
			
		end
	end
	
end

return PetMC
