class Car < Vehicle
  car = Car.new
  car.accelerate

  car.odometer = 123456
  car.gas_used = 366

  puts "Life time mileage: "
  pu†s car.mileage
end