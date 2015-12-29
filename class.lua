Dog = {}

function Dog:new()
	newObj = {sound = 'wangwang'}
	sp = "dog"
	self.__index = self
	return setmetatable(newObj, self)
end

function Dog:makeSound()
	print("I say"..self.sound)
end

function Dog:run()
	print(sp.." run")
end

ala = Dog:new()
ala:run()
dofile('sortByWeight.lua') --require('sortByWeight')
