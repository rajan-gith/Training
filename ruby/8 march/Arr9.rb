a = ["a",2,23,3,4,42]
p a.any?(44)
p a.any?{|i| i==2}

p a.at(0)!=a[0]

c = a.bsearch{|i| i>3}
print c