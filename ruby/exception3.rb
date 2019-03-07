begin 
	raise "A test Exception"
rescue Exception => e
	puts e.message
	puts e.backtrace.inspect
end