class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, options = {})
    self.name = name
    self.age = options[:age]
    self.occupation = options[:occupation]
    self.hobby = options[:hobby]
    self.birthplace = options[:birthplace]
  end
end

def print_summary(candidate)
  puts "Candidate: #{candidate.name}"
  puts "age: #{candidate.age}"
  puts "Occupation: #{candidate.occupation}"
  puts "Hobby: #{candidate.hobby}"
  puts "Birthplace: #{candidate.birthplace}"
end

candidate1 = Candidate.new("Bob Oso", {:age => 49, :occupation => "Attorney", :hobby => "Wheelbarrow Racing!", :birthplace => "Miami"})
candidate2 = Candidate.new("Ema Nymton", :birthplace => "Somerset", :hobby => "Beer", :occupation => "CI-Yay", :age => 42)
candidate3 = Candidate.new("Faye Kerr", birthplace: "San Anto", hobby: "Vodka", occupation: "Mom", age: 43)
candidate4 = Candidate.new("Ricky Bobby", age: 29)
candidate5 = Candidate.new("Bobby Ricky")
puts "-" * 30
print_summary(candidate1)
puts "-" * 30
print_summary(candidate2)
puts "-" * 30
print_summary(candidate3)
puts "-" * 30
print_summary(candidate4)
puts "-" * 30
print_summary(candidate5)
puts "-" * 30
