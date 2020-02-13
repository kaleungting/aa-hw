class Animal 
    def initialize

    end

  def dominates?(other_animal)
    self.secret_dominance_score > other_animal.secret_dominance_score
  end

  private
  attr_reader :secret_dominance_score

end

class Dog < Animal
  def initialize
    @secret_dominance_score = rand
  end

  def boost
    @secret_dominance_score + 1
  end

end

class Cat < Animal
  def initialize
    @secret_dominance_score = rand
  end
end

if __FILE__ == $PROGRAM_NAME
koba = Dog.new  
biscuit = Cat.new
# puts koba.dominates?(biscuit) 
puts koba.boost
end

# class Person  
#   def initialize(age)  
#     @age = age  
#   end  
#   def age  
#     @age  
#   end  
#   def compare_age(c)  
#     if c.age > age  
#       "The other object's age is bigger."  
#     else  
#       "The other object's age is the same or smaller."  
#     end  
#   end  
#   protected
#   attr_reader :age  
# end  


# if __FILE__ == $PROGRAM_NAME
# chris = Person.new(25)  
# marcos = Person.new(34)  
# puts chris.compare_age(marcos)  
# #puts chris.age  

# end