h={a:"apple",c:"cream",d:"dog"}
p h

c=h.reject{|k,v| v=="apple"}
p c

# h.reject!{|k,v| v=="apple"}
# p h
p h
p h.shift # shift deletes 
p h.sort # gives us an array
p h
p h.to_s
p h.values
p h.values_at(:a,:c) # returns values from hash by given key pair hash