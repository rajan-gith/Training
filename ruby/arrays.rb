a=[1,2,3,4,5]
puts(a.class)

a.each do |i|
	puts(i)
end

a1={"name":"Jack","surname":"shukla"}
puts(a1.class)
puts(a1)
a1.each do |key,value|
	puts("#{key},#{value}")
end

