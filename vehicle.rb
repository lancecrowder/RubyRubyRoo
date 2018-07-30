class Vehicle
  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sounds_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front two wheels."
  end

  def mileage
    return @odometer / @gas_used
  end
end

class Car < Vehicle
  car = Car.new
  car.accelerate

  car.odometer = 123456
  car.gas_used = 366

  puts "Life time mileage: "
  puts car.mileage
end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed"
    @cargo = contents
  end

  truck = Truck.new
  truck.load_bed("Natural Light")
  puts "We filled the bed with #{truck.cargo}!!!"
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel!"
  end

  motorcycle = Motorcycle.new
  motorcycle.steer
  motorcycle.accelerate
end