!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]
bag = Luggage.new(items)

bike = Bike.new(:color => :pink, :id => 1, :price => 99.99, :storage => bag)
# ^ to remove the dependency of knowing the order of arguments ^

rental = Rental.new(bike)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"
