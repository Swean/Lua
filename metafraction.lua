defaultFavs = {a = 0, b = 0}
metafraction = {}
function metafraction.__add(f1, f2)
	sum = {}
	sum.b = f1.b * f2.b
	sum.a = f1.a * f2.b + f2.a * f1.b
	return sum
end
setmetatable(defaultFavs, metafraction)

f1 = {a = 1, b = 2}
f2 = {a = 2, b = 3}



setmetatable(f1, {__index = defaultFavs})
setmetatable(f2, {__index = defaultFavs})


--s = f1 + f2

--setmetatable(s, metafraction)
print(s.a, s.b)
t = s + s
print(t.a, t.b)
