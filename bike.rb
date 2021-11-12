# Bike

class Bike

  STANDARD_WEIGHT_LBS = 200 
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price_cents, :weight, :rented, :cargo_contents

  def initialize(id, color, price_cents, weight = STANDARD_WEIGHT_LBS, rented = false)
    @id = id
    @color = color
    @price_cents = price_cents
    @weight = weight
    @rented = rented
    @cargo_contents = []
  end

  def rent!
    self.rented = true
  end

  def return!
    self.rented = false
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def empty_cargo
    self.cargo_contents.clear
  end

  def cargo_capacity
    MAX_CARGO_ITEMS
  end

  def cargo_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end
