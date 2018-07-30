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