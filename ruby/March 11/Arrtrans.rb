a = [[1,2,3],[5,6,7]]
# transpose will transpose row and columns as in matrix
p a.transpose



# values_at will result all values at specified indexes

a = [1,2,2,3,45,6,5,343,34]

p a.values_at(1,2,3,4,-1)

# unshift will add elements at front

new_arr = ["second","third"]
new_arr.unshift("first")
p new_arr

# uniq! will remove duplicates form array

p a.uniq! # returns nill if no duplicates are found

puts
# zip converts any args to array and merge elements to self.
a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
p [1, 2, 3].zip(a, b)  
p [1, 2].zip(a, b)      
p a.zip([1, 2], [8])    
