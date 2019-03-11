h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge!(h2)
p h1.merge(h2){|key, oldval, newval| newval - oldval}
p h1


h1["d"]= 200
p h1.slice("a","b","d") # slice returns a hash only containing given keys value pairs

# Element assignment 

h1.store("e",400)


# Transforming keys and values

h = { a: 1, b: 2, c: 3 }
h.transform_keys!{|k| k.to_s }
h.transform_values!{|v| v.to_s }
p h


# gets values of given keys from record as an array 
h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
p h.values_at("cow", "cat")  