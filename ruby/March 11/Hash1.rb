# Grab all keys by key method

a = { "name" => "nick", "profession" => "Actor", "salary" => "40 k" }

p a.keys

# Grab all values of a Hash by values method

p a.values

b = { "name" => "nick", "salary" => "40 k"}

p a>b  # true as a is bigger than b

p a<=b # check if a is subset of b

p b<=a # check if b is subset of a

# Comparing hashes 

hash1 = {"key1" => "value1" , "key2" => "value2" , "Key3" => "value3"}
hash2 = {"key2" => "value2" , "Key3" => "value3" , "key1" => "value1"}

p  hash2==hash1

p  hash1.eql?(hash2)

p  hash2.any? { |k,v| v == "value1"  }

