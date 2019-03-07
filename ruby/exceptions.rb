begin
	a=[12,3,4]
	b=3
	a+=b	
rescue 
	puts "something is not right"
else 
	puts"me"
ensure 
	puts "I'll be always in the end"
end
