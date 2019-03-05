$books = 10; #global var

class Student
	def initialize(name)
		@name = name
	end
	def showbook
		puts("#{@name} has #{$books} books.")
	end 

end
jean = Student.new('Jean')
maxx = Student.new('Maxx')
jean.showbook
maxx.showbook

puts("Both The Students have same number of books (#{$books})") # global var



