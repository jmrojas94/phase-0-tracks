# - Create a Word Game Class. 
# - Define the initialize method which takes in a word.
# 	- Split the word into an array.
# 	- Set the number of guesses to the amount of letters in the word.
# 	- Create a word placeholder with the word length.
# 	- Create an empty array to store guessed letters.
# - Define a guess method that takes in a letter.
# 	- Place the letter into the guessed letters array.
# - Define a method that fills in the letters in the placeholder and takes in a letter.
# 	- IF the word array includes the letter,
# 		- Fill the letter in.
# 	- ELSE,
# 		- Return the placeholder.
# - Define a method that ends the game.
# 	- IF word array and hidden word array match,
# 		- Print congratulations.
# 	- ELSE IF number of guesses is equal to the guess counter,
# 		- Print failure.
# - End Class.
# - Prompt the first player to enter a word.
# - Pass the word into the new Word Game instance.
# - Until game is over,
# 	- Prompt user to pick a letter.
# 	- Fill in blank
# - Print congratulations or failure.