class Blocks
  def my_method
    puts "We're in the method, about to invoke your BLOCK!!!"
    yield " Lance!"
    puts "We're back in the method"
    yield
    puts "Method again!"
  end
end

Blocks.new.my_method do |thing|
  puts "We're in the block - #{thing}"
end


Blocks.new.my_method do |thing|
  puts "It's a block party!!! - #{thing}"
end

Blocks.new.my_method { |thing| puts "'Whoooo!' - Rick Flair & #{thing}" }