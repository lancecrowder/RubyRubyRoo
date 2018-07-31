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
      raise "Salary value is not valid!"
    end
    @salary = value
  end

  def initialize (name = "Anon E. Mouse", salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "Employee Name: #{@name}"
    period_pay = (@salary/365.0) * 14
    puts format("Pay This Period: $%.2f", period_pay)
  end

  kate = Employee.new("Kate Skate", 50000)
  kate.print_pay_stub

  puts "-" * 30

  bob = Employee.new("Bob Oso", 55000)
  bob.print_pay_stub

  puts "-" * 30

  employee = Employee.new("steve", -500)
  employee.print_pay_stub
end