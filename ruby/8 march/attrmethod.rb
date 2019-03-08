# this program is to use getter and setter in efficient way

class Student
	attr_accessor:name, :age, :marks	
end

p 1
s1=Student.new

s1.name = "david".capitalize
s1.name = 45
s1.marks = 78

puts s1.name,s1.name,s1.marks
