class Luggage

  attr_reader :items

  DEFAULT_MAX_CAPACITY = 10

  def initialize(items)
    @capacity = DEFAULT_MAX_CAPACITY
    @items = items
  end

  def add(item)
    # should maybe check if below max capacity first, 
    # but not relevant to the exercise 
    self.items << item
  end

  def weight
    self.items.size * 10
  end

end
