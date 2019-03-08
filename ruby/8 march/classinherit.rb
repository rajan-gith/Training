class Box
	def initialize(x,y)
		@width = x
		@height = y
	end
	def getheight
		@height
	end
	def getwidth
		@width
	end
end
class Bigbox < Box
	def getarea
		@width*@height
	end
end

b1 = Bigbox.new(9,8)
p b1.getarea