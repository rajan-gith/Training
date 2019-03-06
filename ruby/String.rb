a=String.new("This is the another way to initialize a string")
puts a

a=12
b=String.try_convert("#{a}")
p b

print("a "*5) #str multiply will repeat str no. of times.

print("\nfirst half "+"second half\n") #concatination

a='abc'

b="abc"
b+="def"
a.concat("def") # used to concatination
puts a +" is a "
puts b +" is b"

# a.freeze
puts a.frozen?
puts(a)

a="hello"
b<<a
puts(a)

new_s="abc"
new_s1="aaa"
puts(new_s<=>new_s1)




