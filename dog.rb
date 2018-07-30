require './animal'
class Dog < Animal
  def to_s
    "#{@name} the dog, is #{@age} years old!"
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

puts stripe, bat