# Hash initializing one way
grades = Hash.new { |grades, key| grades[key] =nil  }

grades = { jana_doe: 4, john_doe: 7}

p grades[:jana_doe], grades[:john_doe], grades[:maria]

# Hash initializing 2nd way
option = Hash.new(0)
p option["ne"]
p grades
# Hash can be initialized in following way
options = { font_size: 10, font_family: "Arial" }

l_hash = Hash["a",100,"b",200]
p l_hash

r_hash = Hash[[["a",100],["b",100],["c",100],["d",100]]]
p r_hash
