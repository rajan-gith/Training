a = [ "a", "b", "c", "d" ]

p a.map {|x| x + "!" }

p a.collect.with_index {|x, i| x[0...i] }
