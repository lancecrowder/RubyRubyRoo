class Dog

  def talk(name)
    puts "#{name} says \"Bark 'N Stuff!\""
  end

  def move(name, destination)
    puts "#{name} is running to the #{destination}"
  end

end

stripe = Dog.new

stripe.talk("Stripe")
stripe.move("Stripe","Hizzy fo Shizzy!")