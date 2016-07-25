# Alias Generator
# - Define a method that asks for a full name.
# 	- Make the name lowercase.
# 	- Swap the first and last name.
# 	- Split the letters in the name.
# - Define a method that takes the name array and finds vowels and consonants.
# 	- Iterate through array.
# 	- Find all of the vowels.
# 		- Change vowel to the next vowel in the sequence.
# 	- Find all of the consonants.
# 		- Change consonants to the next consonant in the alphabet.
# 	- Capitalize the new name.
# 	- Return the new name.
# 	- Ask user if a new name is wanted.
# 		- Run alias generator until user says "quit".
# 	- Store the names and aliases in a hash.
# 	- For each name,
# 		- Return "#{name} is now #{alias}."
# - Exit program.

def alias_manager

puts "Hello! Welcome to our alias manager."

puts "-------------------------------------"

puts "What is your first name?"
first_name = gets.chomp.downcase

puts "------------------------------------"

puts "What is your last name?"
last_name = gets.chomp.downcase

full_name = [last_name, first_name]

vowels = "aeiou".split('')
consonants = "bcdfghjklmnpqrstvwxyz".split('')

new_name = ""

full_name[0].split('').each do |letter|
	if letter == "u"
		new_name << "a"
		elsif letter == "z"
		new_name << "b"
		elsif	vowels.include?(letter)
		new_name << vowels[vowels.index(letter)+1]
	else
		new_name << consonants[consonants.index(letter)+1]
	end
end

new_name << " "

full_name[1].split('').each do |letter|
	if letter == "u"
		new_name << "a"
		elsif letter == "z"
		new_name << "b"
		elsif	vowels.include?(letter)
		new_name << vowels[vowels.index(letter)+1]
	else
		new_name << consonants[consonants.index(letter)+1]
	end
end


new_alias = new_name.split(/(\W)/).each {|name| name.capitalize!}

puts "#{full_name[1].capitalize} #{full_name[0].capitalize}'s new identity is #{new_alias[0]} #{new_alias[2]}."

end
alias_manager