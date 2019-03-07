begin 
	puts "not any exceptions"
	puts "here comes raise an exception"
	raise "customException"
	puts "I am after the exception"
rescue
	puts "I am here to rescue you"
end
