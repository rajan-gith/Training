# ruby have ranges .. for inclusive ... for exclusive 

# ranges in sequence
range1 = (1..10).to_a
range2 = ('bar'..'baz').to_a
range3 = (1...10).to_a
puts "#{range1}" # prints range from 1 to 10 inclusive
puts "#{range2}" # prints range from bar to baz incrementing chars again and again
puts "#{range3}" # prints range from 1 to 10 exclusive
range1 = (1..10)
p range1.min # min function
p range1.max # max function

# iteration over ranges
range1.each {|i|p i**i }  

range1.each do |x|

	p "in loop #{x}"
	
end

####### RANGES AS CONDITION 

score=84

result = case score
	when 0..10	then "poor"
	when 11..40 then "okay but fail"
	when 41..60 then "good"
	when 60..100 then "excellent"
	else "not valid"
end

p result

################### Ranges as Intervals 
if ((1..10)===5)
	p "5 is in range"
end