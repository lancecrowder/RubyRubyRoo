class Dog

  # def name=(new_value)
  #   @name = new_value
  # end
  #
  # def name
  #   @name
  # end
  #
  # def age=(new_value)
  #   @age = new_value
  # end
  #
  # def age
  #   @age
  # end
  attr_accessor :name, :age

  def report_age
    puts "#{@name} is #{@age} years old"
  end

  def talk(name)
    puts "#{name} says \"Bark 'N Stuff!\""
  end

  def move(name, destination)
    puts "#{name} is running to the #{destination}"
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
# stripe.talk("Stripe")
# stripe.move("Stripe","Hizzy fo Shizzy!")