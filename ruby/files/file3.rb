
arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]
puts arr[2]

IO.foreach("input.txt"){|i| p i.class}