a = [1,2,3,4,56,6]

p a.reverse()

p a.reverse_each.to_a

a.reverse_each{|y| print y*2}
puts

# rindex is used to check the right most index of an element in array
a = [1,2,3,4,56,6,3,3,3,3]

p a.rindex(3)

# roatate or shift the items of array 
p a.rotate(2)

# Removes items from array
p a
p a.shift(3)
p a


# Shuffle genereate new array with shuffled elements

p a.shuffle

a.sort!

p a