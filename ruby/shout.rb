# Create a class for word game

# method to initialize game
# take in a word

# method to split word 
# check length 

# method to take in letter
# iterate through word array to find letter
# if letter found
# 	fill in letter in its right place
# else
# 	"try again"
	
# method to take guesses from word length
# if word is not guessed by then
# 	return word
# 	return taunting message
# else 
# 	return word 
# 	return congratulatory message


#!/usr/bin/env ruby

class WordGame
	
	def initialize(word)
		@word = word.downcase
		@word_array = word.split('')
		@hidden_word = ('_ ' * word.length).split(' ')
		@num_of_guesses = word.length
		@guess_counter = 0 
		@guessed_letters = []
		@game_over = false
	end
	
	def word
		@word
	end
	
	def hidden_word
		@hidden_word
	end
	
	def guessed_letters
		@guessed_letters
	end
	
	def num_of_guesses
		@num_of_guesses
	end
	
	def guess_counter
		@guess_counter
	end
	
	def answer
		@word
	end
	
	def game_over
		@game_over
	end
	
	def word_array
		@word_array
	end
	
	def letter_guess(letter)
		unless @guessed_letters.include?(letter)
		@guessed_letters << letter
		@guess_counter += 1
	else
		@guessed_counter
	end
	end
	
	def fill_in_the_blank(letter)
		if @word_array.include?(letter)
			replace = @word_array.each_index.select{|x| @word_array[x] == letter}
			replace.each do |x|
				@hidden_word[x] = letter
			end
			@hidden_word.join(' ')
		else
			@hidden_word.join(' ')
		end
	end
		
	def game_manager
		if @word_array == @hidden_word
			puts "Congrats! The word was #{@word}!"
			@game_over = true
		elsif @num_of_guesses == @guess_counter
			puts "LOL FUCKENCLOWN"
			@game_over = true
		end
		@game_over
	end
end

puts "Enter a word!"
word = gets.chomp

game = WordGame.new(word)
p game.word
p game.hidden_word

until game.game_over
puts "Pick a letter"
letter = gets.chomp

game.letter_guess(letter)

p game.fill_in_the_blank(letter)

game.game_manager
if !game.game_over
	puts "You have #{game.num_of_guesses - game.guess_counter} guess(es) left"
end
end
