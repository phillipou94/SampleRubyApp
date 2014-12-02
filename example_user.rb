class User
   attr_accessor :name, :email #declare properties of the class
   def initialize(attributes={})
      @name = attributes[:name]
      @email = attributes[:email]
   end
   def formatted_email
      "#{@name} <#{@email}>"
   end
end
