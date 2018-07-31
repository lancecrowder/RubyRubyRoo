require "./employee"
class SalariedEmployee < Employee
  attr_accessor :salary

  def salary= (salary)
    if salary < 0
      raise "Salary value is not valid!"
    end
    @salary = salary
  end

  def initialize(name = "Anon E. Mouse", salary = 0.0)
    self.name = name
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

  bob = SalariedEmployee.new
  bob.name = "Bob Oso"
  bob.salary = 55000
  bob.print_pay_stub

  puts "-" * 30

  mouse = SalariedEmployee.new
  mouse.print_pay_stub
end