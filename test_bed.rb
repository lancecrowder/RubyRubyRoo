class TestBed
end

begin
  puts "I'll be run"
  raise "Oops"
  puts "I'll be skipped"
rescue
  puts "Rescued an Exception!!!"
end

puts "Do I get Run?!"