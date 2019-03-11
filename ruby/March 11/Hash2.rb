h = Hash.new {|h,k| h[k] = k.to_i*10}   
p h.default()                               
p h.default(2)

a={"a" => "apple", "b" => "banana", "c" => "Camel", "d" => "dog"}

a.delete_if{|k| k=="a"}
p a

a={"a" => "Apple", "b" => "Banana", "c" => "Camel", "d" => "Dog"}

a.each{|k,v| p "#{k} for #{v}"}

a.each_key{ |k| p k}

a.each_pair{|k,v| p k,v}

p a.fetch("z","not found") # key along with default msg if key is not found then display message


p a.fetch_values("a","b","c") # fetches values according to given keys from records


#Check if a key already exists

p a.has_key?("a")

p a.has_value?("Apple")

p a.include?("a") 

p a.key("Apple") # returns key for the value.

p a.member?("a")

	