months = Hash.new("month")
puts "#{months[0]}"
puts "#{months[72]}"
p months
puts months.class

a={"january"=>"cold", "feb"=>"less cold","mar"=>"yeah good"}

p a
p a['january']
p a['mar']
p a['apr']="nice "
# a.clear
# a.delete('january')
a.delete_if { |k,v| a[k]=="cold"}

b=a.invert
p b
a.merge!(b)
p a

b.replace("jan"=>"january")
p b
n={1=>"one",2=>"two",3=>"three",4=>"four"}
n2=n.select{|k,v| k>2 }
p n2
x=3
p n2.key("three").equal?3


