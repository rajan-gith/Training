class Student
	attr_accessor:name
	def initialize (name)
		@name = name
	end
end
s1 = Student.new("abc")
puts s1.name
s1.name = "new name"
puts s1.name

s1.freeze # freezing the s1 object 

if s1.frozen?
	puts "can't be modiefied"
else
	puts "can be modifed"
end