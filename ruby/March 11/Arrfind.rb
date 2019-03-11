a = ["a","b","c","d","e","f"]
p a.index { |x| x == "d" }
p a.index { |x| x.next == "d" }