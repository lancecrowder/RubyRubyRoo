class Employee

  attr_accessor :name

  def name=(name)
    if name == ""
      raise "Name cannot be Blank!!!"
    end
    @name = name
  end

  def print_name
    puts "Name: #{@name}"
  end

  # bob = Employee.new
  # bob.name = "Bob Oso"
  # bob.print_name
end