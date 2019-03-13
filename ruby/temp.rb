a = [{"a" => "abc","b" => "boy"},{"a" => " apple","b" => "banana"}]

b = {{"name"  => "john","age" => 34}=> {"name" => "doe","age" => 30}}


for i in a
	 i.each{ |k,v| p "#{k},#{v}"}
end

b.each{ |k,v| p k,v}

for i in b
	p i
end