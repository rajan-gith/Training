# This program is used for checking the if the 7 is present at either first location or the last location in array
arr = [3,4,5,6,7]
if arr.length >= 1
	if arr.last == 7 or arr.first == 7
		puts "Yes 7 is present at desired location"
	else 
		puts "No"
	end
else 
	puts"Array is empty"
end