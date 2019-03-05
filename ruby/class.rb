class Customer
	@@no_of_customers = 0
	def initialize(id = 0,name = '',age = 0)
		@customer_id = id	
		@customer_name = name
		@customer_age = age
		@@no_of_customers += 1 
		@position = @@no_of_customers
	end
	def hello
		puts("Hello #{@customer_name}. How are you?")
	end
	def showage
		puts("#{@customer_name}'s age is #{@customer_age}")
	end
	def show_details
		puts("#{@customer_name} is at #{@position} from all the customers(Total = #{@@no_of_customers})")
	end
	
end
new_object = Customer.new(1,'David',99)
new_object.hello
new_object.showage
new_object.show_details
