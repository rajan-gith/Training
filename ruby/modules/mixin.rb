module M1
  def a1
		puts "m1 module a1 method"
	end
	def a2
		puts "m1 module a2 method"
	end
end

module M2 
	def b1
		puts "m2 module b1 method"
	end
	def b2 
		puts "m2 module b2 method"
	end
end

class Can
	include M1
	include M2
end
c = Can.new
c::a1
c.a2
c.b1
c.b2