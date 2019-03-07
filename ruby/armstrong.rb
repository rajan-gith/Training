a = 153
b = a.to_s
ar = b.split("")
arm = 0

for i in ar
	i = i.to_i
	arm += i**3
end

if a == arm
	p "armstrong"
end