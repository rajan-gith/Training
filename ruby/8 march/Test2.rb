class Animal
   attr_accessor:color,:name
   def initialize(name, color)
      @name = name
      @color = color
   end
end

class Cat < Animal
   def speak
      return "meow"
   end
end

cat=Cat.new("abc","brown")
puts cat.inspect
puts cat.speak


