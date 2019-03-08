class Box
	def initialize(w,h)
		@width, @height = w, h
	end
	def area
		print("This area is from parent class: ")
		puts ("#{@width * @height}")	
	end
end
class Square < Box
	def area
		puts super() # super keyword is used to invoke the same function from parent class 
		puts("This is from child class")
	end
end
s1 = Square.new(3,4)
s1.area