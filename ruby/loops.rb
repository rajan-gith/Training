a=5
puts("watch a dying")
while a>=0 do 
	puts("a is #{a}")
	a-=1
end

puts("a is rising")
begin
	a+=1
	puts("a is #{a}")
end while a<5

