a = ["a","b","c","d","e","f"]
p a.index { |x| x == "d" } # finds the index of an item on specific condition
p a.index { |x| x.next == "d" } # same as above