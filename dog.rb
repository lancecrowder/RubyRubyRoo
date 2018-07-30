require './animal'
class Dog < Animal
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