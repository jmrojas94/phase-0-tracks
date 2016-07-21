# Alias Generator
# - Define a method that asks for a full name.
# - Make the name lowercase.
# - Swap the first and last name.
# - Split the letters in the name.
# - Iterate through array.
# - Find all of the vowels.
# 	- Change vowel to the next vowel in the sequence.
# - Find all of the consonants.
# 	- Change consonants to the next consonant in the alphabet.
# - Capitalize the new name.
# - Return the new name.
# - Ask user if a new name is wanted.
# 	- Run alias generator until user says "quit".
# - Store the names and aliases in a hash.
# - For each name,
# 	- Return "#{name} is now #{alias}."
# - Exit program.

def alias_manager

	puts "Hello! Welcome to our alias manager."

	puts "-------------------------------------"

	puts "What is your first name?"
	first_name = gets.chomp.downcase

	puts "------------------------------------"

	puts "What is your last name?"
	last_name = gets.chomp.downcase

	full_name = [first_name, last_name]


end

alias_manager
