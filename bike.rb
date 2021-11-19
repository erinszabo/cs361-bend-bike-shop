require_relative 'luggage'

class Bike

  STANDARD_WEIGHT_LBS = 200 

  attr_reader :price, :weight, :storage

  def initialize(id:, color:, price:, storage:)
    @id = id
    @color = color
    @price = price
    @weight = STANDARD_WEIGHT_LBS
    @storage = storage
  end

end
