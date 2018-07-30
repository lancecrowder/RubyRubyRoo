require './animal'
class Armadillo
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end