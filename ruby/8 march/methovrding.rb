class Box
	def initialize(x,y)
		@width = x
		@height = y
	end
	def getarea
		@width * @height
	end
end

class Bigbox < Box
	def getarea
		ar = @width * @height
		puts ("area is #{ar}")
	end
end

b1 = Bigbox.new(4,5)
b1.getarea # child method
b2 = Box.new(6,7)
p b2.getarea # parent method
