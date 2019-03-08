enumerator = %w(one two three).eac
puts enumerator.class # => Enumerator

enumerator.each_with_object("foo") do |item, obj|
  puts "#{obj}: #{item}"
end

# foo: one
# foo: two
# foo: three

enum_with_obj = enumerator.each_with_object("foo")
puts enum_with_obj.class # => Enumerator

enum_with_obj.each do |item, obj|
  puts "#{obj}: #{item}"
end