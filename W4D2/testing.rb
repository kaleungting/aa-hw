class Vehicle

  attr_reader :wheels, :color
  def initialize(wheels = 4,color = "black") 
    @wheels = wheels
    @color = color
  end

end

class MyCar < Vehicle

  def initialize(bling)
    super()
    @bling = bling
  end
end