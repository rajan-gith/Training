class Box 

	attr_accessor:w, :h
	def initialize(w,h)
		@w = w
		@h = h
	end

	def to_s
		"(#{@w},#{@h})"
	end

end

b1 = Box.new(1,2)
b1.w = 4
b1.h = 5

puts(b1.to_s)