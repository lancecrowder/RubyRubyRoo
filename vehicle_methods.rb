def accelerate
  puts "Stepping on the gas"
  puts "Speeding up!!!"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep Beep!!!"
end

def use_headlights (brightness = "Low-Beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for Deer!!!"
end

sound_horn
accelerate
use_headlights()
use_headlights("High-Beams")
use_headlights("Jim-Beam")