def mileage(miles_driven, fuel_used)
  if fuel_used == 0
    return 0.00
  end
  miles_driven/fuel_used
end

trip_mileage = mileage(400, 12)
puts "You got #{trip_mileage}MPG this trip."

lifetime_mileage = mileage(11432, 366)
puts "This car averages #{lifetime_mileage}MGP."

catch = mileage(0, 0)
puts "I didn't wreck if : #{catch} = 0.0"