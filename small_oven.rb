class OvenOffError < StandardError
end
class OvenEmptyError < StandardError
end

class SmallOven
  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end

  def turn_off
    puts "Turning oven off."
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise OvenOffError, "You need to turn the oven on first!"
    end
    if @contents == nil
      raise OvenEmptyError, "There's nothing in the oven!"
    end
    "Golden-brown #{contents}"
  end

  dinner = ["Turkey", "Casserol", "pie!"]
  oven = SmallOven.new
  oven.turn_on
  dinner.each do |item|
    begin
      oven.contents = item
      puts "Serving #{oven.bake}"
    rescue OvenEmptyError => error
      puts "Error: #{error.message}"
    rescue OvenOffError => error
      puts "Error: #{error.message}"
      oven.turn_on
      retry
    ensure
      oven.turn_off
    end
  end
end