# Guess My Number Game
# Written by: Lance!

# 1. Get player name and greet player by name
puts "Welcome to 'Guess the Number!'"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# 2. Store a random number for the user to guess.
puts "I'm thinking of a number between 1 and 100."
puts "Can you guess it, in 7 guesses or less?"
target = rand(100)+1

# 3. Keep track of number of player guesses.  Let them know how namy they have left before each turn
num_guesses = 0
guessed_it = false

until num_guesses ==7 || guessed_it

# remaining_guesses = 10 - num_guesses
puts "You have #{7 - num_guesses} guesses left."

# 4. Prompt the player to make guesses as to what the target number is
print "Make a guess: "
guess = gets.to_i
num_guesses += 1

# 5. Let the player know if the guess was High or Low
if guess < target
  puts "Oops, your guess is too LOW"
elsif guess > target
  puts "Oops, your guess is too HIGH"

# 6. Let the player know if their guess was correct, by name, and number of guesses to get the correct answer
elsif guess == target
  puts "Good Job, #{name}!"
  puts "#{guess} is Correct!!! You got it in #{num_guesses} guesses!"
  guessed_it = true
end
# 7. If player runs out of turns before guessing correctly, let em down easy and tell them the number

# 8. keep allowing player to play till they run out of turns or get the answer.
end
unless guessed_it
  puts "Sorry, you ran out of guesses.  The correct number is #{target}"
end
