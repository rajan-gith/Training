n = 9
fib = 0
n1 = 0
n2 = 1

for i in 0...n
	print fib.to_s + " "
	
	n1 = n2
	n2 = fib
	fib = n1 + n2
end