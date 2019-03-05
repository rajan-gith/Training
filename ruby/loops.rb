######################--while---loop------################################
a=5
puts("watch a dying")
while a>=0 do 
	puts("a is #{a}")
	a-=1
end
#######################--while-modifier---################################
puts("a is rising")
begin
	a+=1
	puts("a is #{a}")
end while a<5
######################--until--loop-----##################################
b=0
until b>4 do 
	puts("b is #{b}")
	b+=1
end
######################--until-modifier--#################################
c=0
begin
	c+=1
	puts("c is #{c}")
end until c==2
#####################--for--loop--#######################################
for i in 1..6
	puts(i)
end

for i in 1..100
	if i==30
		puts("this loop is gonna break")
		break
		#this line is not reachable
	end
	puts(i)
end