

class  Guess_what 
  attr_reader :guess_count
  attr_reader :is_over
	
  def initialize(guess) 
    @guess = guess
    @guess_count = 0
    @is_over = false
  end
  
  def enter_word
  	@guess.enter_word! 
  end
  
  def attempts(index)
  	@guess_count += 1
  	if @guess[index] != enter_word.length
  		@is_over = true
  		puts "Oooops, you are out of guessing orpotunities."
  	else
  		false
  		puts " Please try again!"
  	end

  loop do 
    @guess_count += 1
    puts " Please try again!"
    break if @guess.to_s == enter_word.to_s 
  		puts "Bravo! You got it!"
  end 
    
    def hint 
    	if @guess.length == enter_word.length
    		puts "length of the word is #{enter_word.length},please guess again"
        eles puts "Please try again!" 
    	end 
  end
end

# user interface

puts "Welcome to the Guess_what Game!"
game = Guess_what.new

puts "User A, please enter a word."
game.enter_word

while !game.is_over
  puts "Bravo! You got it!"
  guess = gets.chomp.to_i
  if !game.attempts(guess - 1)
  	puts "Please try again!"
  end
end

puts ""Bravo! You got it!"

