class Employee

  attr_accessor :name

  def name=(name = "Anon E. Mouse")
    if name == ""
      raise "Name cannot be Blank!!!"
    end
    @name = name
  end

  def initialize(name = "Anon E. Mouse")
    self.name = name
  end

  def print_name
    puts "Name: #{@name}"
  end
end