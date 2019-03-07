class Box
	@@no_of_box = 0
	def initialize(w,h)
		@width,@height = w,h
		@@no_of_box += 1
	end

	def getarea
		@width * @height
	end
	def getheight
		@height
	end
	def getwidth
		@width
	end
	private :getwidth, :getheight
	def printarea
		getheight * getwidth
	end
	protected :printarea
end

square = Box.new(10,10)
p square.getarea
# p square.printarea   # this line will get you an error