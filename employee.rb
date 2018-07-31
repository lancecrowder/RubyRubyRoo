class Employee

  attr_accessor :name, :salary

  def name= (value)
    if value == ""
      raise "Name cannot be Blank!!!"
    end
    @name = value
  end

  def salary= (value)
    if value <=0
      raise "A salary of #{@salary} is not valid!"
    end
    @salary = value
  end

  def print_pay_stub
    puts "Employee Name: #{@name}"
    period_pay = (@salary/365.0) * 14
    puts format("Pay This Period: $%.2f", period_pay)
  end

  kate = Employee.new
  kate.name = "Kate Skate"
  kate.salary = 50000

  kate.print_pay_stub

  puts "-" * 30

  bob = Employee.new
  bob.name = "Bob Oso"
  bob.salary = 100000
  bob.print_pay_stub
end