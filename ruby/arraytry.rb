names = Array.new(1) # initializing array
p names.class, names.size, names.length
names[0] = 'new name'
names[1] = 'new name2'
names += ['rick','monty']
p names.class, names.size, names.length
nums = Array(0..9)
p(nums)
a={apple:"fruit",banana:"fruit"} 
a=Array(a) # converting hash to array
p a

arr=["a","b","c","d","e","f"]
p arr[0]
p arr[1]
p arr[2]
p arr[3]
p arr[4]

p arr.at(0) # printing value from an index
p arr[10] # this will work fine but arr.fetch[10] will ran into an error
p arr.fetch(19,"oops") # additional msg is also attached in case the result dont come either

p arr.first,arr.last

p arr.take(2),arr.drop(2) #take return first specified elements from array and drop will leave them 

(0..arr.length-1).each do |a| #each loop
	puts a
end

p arr.include?("a") # display if arr contains the following chars

ar=["a","b","c","d"]

ar.push("e") #inserting new element at the end of the array
p ar

ar.pop #poping last element from the array
p ar

ar.insert(0,"A") #inserting at a perticular index in array
p ar

ar.shift # this will pop first item from the array
indx=2
ar.delete_at(indx) # this will delete item from a location

b=[1,2,2,2,2,4,4,4,7,7,6,2,3,nil,6,7,nil]
b.compact! #remove all of the nill values from the list
p  b

b.uniq!
p b

b.each{|i| p i*2} # each loop

words=%w[first second third fourth fifth]
str=''
words.reverse_each{ |i| str+=i+" "}
p str

b.map {|i| p i**2 }