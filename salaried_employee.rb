require "./employee"
class SalariedEmployee < Employee

  attr_reader :salary

  def salary=(salary)
    if salary < 0
      raise "Salary value is not valid!"
    end
    @salary = salary
  end

  def initialize(name = "Anon E. Mouse", salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    print_name
    period_pay = (salary / 365.0) * 14
    puts format("Pay This Period: $%.2f", period_pay)
  end

  kate = SalariedEmployee.new("Ema Nymton", 50000)
  # kate.name = "Ema Nymton"
  # kate.salary = 50000
  kate.print_pay_stub

  puts "-" * 30

  bob = SalariedEmployee.new("Bob Oso", 55000)
  # bob.name = "Bob Oso"
  # bob.salary = 55000
  bob.print_pay_stub

  puts "-" * 30
end