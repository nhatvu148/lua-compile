Animal = {
    height = 0,
    weight = 0,
    name = "No Name",
    sound = "No Sound"
}

function Animal:new(height, weight, name, sound)
    setmetatable({}, Animal)
    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound

    return self
end

function Animal:toString()
    animalStr = string.format("%s weighs %.1f lbs, is %.1f in tall and says %s", self.name, self.weight, self.height,
                    self.sound)
    return animalStr
end

spot = Animal:new(10, 15, "Spot", "Woof")
print(spot.weight)
print(spot:toString())

Cat = Animal:new()

function Cat:new(height, weight, name, sound, favFood)
    setmetatable({}, Cat)
    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound
    self.favFood = favFood

    return self
end

function Cat:toString()
    animalStr = string.format("%s weighs %.1f lbs, is %.1f in tall and says %s and loves %s", self.name, self.weight,
                    self.height, self.sound, self.favFood)
    return animalStr
end

fluffy = Cat:new(10, 15, "Fluffy", "Meow", "Tuna")
print(fluffy:toString())