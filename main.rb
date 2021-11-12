!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 9999)

bike.add_cargo(:apples)
bike.add_cargo(:water)
bike.add_cargo(:repair_kit)


puts "Space for #{bike.cargo_remaining_capacity} items left."

bike.rent!
