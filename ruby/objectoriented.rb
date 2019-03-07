class Box
	@@no_of_box = 0
	def initialize(w,h)
		@width,@height = w,h
		@@no_of_box += 1
		@area = w * h
	end
	def show_height
		@height
	end
	def show_width
		@width
	end
	def area
		@area
	end
	def box_no
		@@no_of_box
	end
end
square = Box.new(10,10)
p square.show_width.to_s + " is the widht of box, height is " + square.show_height.to_s + " having area "+square.area.to_s+" and box no. is "+square.box_no.to_s

rectangle = Box.new(20,10)
p rectangle.show_width.to_s + " is the widht of box, height is " + rectangle.show_height.to_s + " having area "+rectangle.area.to_s+" and box no. is "+rectangle.box_no.to_s
