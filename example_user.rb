class User
   attr_accessor :name, :email #declare properties of the class
   def initialize(attributes={})
      @name = attributes[:name]  #instance variables begin with @ (properties of class)
      @email = attributes[:email]
   end
   def formatted_email
      "#{@name} <#{@email}>"
   end
end
