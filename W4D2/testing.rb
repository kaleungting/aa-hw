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
    # dominance score is not explicitly observable
    @secret_dominance_score = rand
  end

end

class Cat < Animal
  def initialize
    # dominance score is not explicitly observable
    @secret_dominance_score = rand
  end
end

