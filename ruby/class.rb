class Customer
	attr_accessor :customer_name
	@@no_of_customers = 0
	def initialize(id = nil,name = nil,age = nil)
		@customer_id = id	
		@customer_name = name
		@customer_age = age
		@@no_of_customers += 1 
		@position = @@no_of_customers
	end
	def self.hello(customer_name)
		puts("Hello #{customer_name}. How are you?")
	end
	def showage
		puts("#{@customer_name}'s age is #{@customer_age}")
	end
	def show_details
		puts("#{@customer_name} is at #{@position} from all the customers(Total = #{@@no_of_customers})")
	end
	
end
new_object = Customer.new(1,'Daavid',99)
Customer.hello(new_object.customer_name)
new_object.showage
new_object.show_details

