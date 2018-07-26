class Dog

  attr_accessor :name, :age

  def name= (value)
    if value == ""
      raise "Name cannot be Blank!!!"
    end
      @name = value
  end

  def age= (value)
    if value < 0
      raise "An age value of #{value} is not valid!"
    end
      @age = value
  end

  def report_age
    puts "#{@name} is #{@age} years old"
  end

  def talk
    puts "#{@name} says \"Bark 'N Stuff!\""
  end

  def move(destination)
    puts "#{@name} is running to the #{destination}"
  end

end

stripe = Dog.new
stripe.name = "Stripe"
stripe.age = 10

bat = Dog.new
bat.name = "Bat"
bat.age = 1

stripe.report_age
bat.report_age
stripe.talk
stripe.move("Hizzy fo Shizzy!")