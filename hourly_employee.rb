require "./employee"
class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      puts "Hourly Wage is not valid"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      puts "Hours per Week is not valid"
    end
    @hours_per_week = hours_per_week
  end

  def self.security_guard(name)
    HourlyEmployee.new(name,19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  def initialize(name = "Anon E. Mouse", hourly_wage = 0.0, hours_per_week = 0.0)
    super (name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    period_pay = hourly_wage * hours_per_week * 2
    puts format("Pay This Period: $%.2f", period_pay)
  end

  puts "-" * 30
  steve = HourlyEmployee.security_guard("Scuba Steve")
  # steve.name = "Scuba Steve"
  # steve.hourly_wage = 15.25
  # steve.hours_per_week = 35
  steve.print_pay_stub
  puts "-" * 30

end