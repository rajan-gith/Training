n = 41
count = 0
for i in 2...n
	if n%i == 0
		count += 1
		break
	end
end
if count > 0
	p "#{n} is not prime."
else
	p "#{n} is prime."
end