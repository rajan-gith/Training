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

puts s1.name

# s1.name = "abc"  # commenting this line otherwise the object had been frozen and it gives error now.

puts s1.name # name remains the last modified name beforr freeze call.