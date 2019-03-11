# Array comparison

arr1 = [1000,2,3,35,5]
arr2 = [100]
arr3 = ["a","b","c"]
=begin
	In here there is comparison by "<=>" operator
	this will return -1,nil,1

	-1 if arrays mismatch or less than
	+1 if array is greater than
	0  if arrays match
	nil if comparison is not possible

=end

puts(arr1 <=> arr2) 
puts(arr2 <=> arr1) 
puts((arr3 <=> arr1).class)