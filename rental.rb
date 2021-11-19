class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.price + self.bike.weight * 2 + self.bike.storage.weight * 2
    # self.bike.price + self.weight * 2
    # ^chose not to do this incase later owner may want $2 for one and $3 for another, ^
    # easier to change, more readable 
  end

  def weight
    self.bike.weight + self.bike.storage.weight
  end

end
