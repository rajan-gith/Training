class Box
	def initialize(x,y)
		@width = x
		@height = y
	end
	def width
		@width
	end
	def height
		@height
	end
	def +(other)

		Box.new(@width + other.width, @height + other.height)
	end
	def -(other)
		Box.new(@width - other.width, @height - other.height)
	end
end
b1=Box.new(5,6)
b2=Box.new(5,4)
p b1 + b2