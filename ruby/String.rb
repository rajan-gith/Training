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

name="rich"
puts(name.capitalize)

puts(name.center(20,"__")) # printing name variable at center of 20 char wide long output with '_' as padding str

arr_char="abcdef          \n \n"
print(arr_char.chars)
print("\n")

puts(arr_char.chomp(" \n")) # does not affect original arr_char var 
puts(arr_char.chomp!(" \n"))# does modiefied the arr_char var
print(arr_char)


a="Hello world"
puts(a.count('lo')) # counts l and o and add those counts
 
puts(a.crypt('aa')) #crypts usign crypt function 

puts(a.delete('l')) # deletes all 'l' in th string
puts (("hello * \n").dump) #prints string with all special chars

a.each_byte{|i| puts i} # prints each byte of the given string

puts(a.downcase)
puts(a.upcase)

puts("hello\nworld".each_line('l') {|s| p s}) #prints new line after every encounter with char 'l' 
# str.empty return a value either if string is empty or not

# str.end_with(pat1,pat2) return boolean either end with patern1 or patern2.

a="hello replace all a and e from me"
puts(a.gsub(/[ae]/,"?"))
puts(a.hash)

puts(a.include? "h")#returns true if includes the given str

# .index method for checking the index of given char in the string
puts(a.index'l')

# .replace replaces the string with other
a.replace("new")
puts(a)
str="hello"
p str.inspect
puts


p str.intern # return symbolname for the given string

# length return chars length

p str.length

p str.match('.+')

p 'a'.next  # prints next char of the given char by increment inits alphanumeric no.

# .oct change digits in octal form

b="split this"
p b.split("")


a.gsub('a','i') #multi char replacement
a.sub('a','i') #single char replacement

