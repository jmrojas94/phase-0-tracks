# Interior Design Client Form:
# - Create a hash for client information.
# - Ask user for the clients information.
# 	- Store name, age, number of children, and decor theme.
# 		- If no children,
# 			- Return "N/A"
# - Return the hash with all the answers.
# - Ask the user if they want to update a key.
# 	- If yes, 
#		- Ask what key they would like to update.
# 			- Update the key
#   - If none,
#       - Skip.
# - Print the updated hash and exit program.

client = {}

space = "---------------------------------"

puts "Hello! Welcome to our design client database entry system! Lets begin with a few questions."

puts space

puts "What is your name?"
client[:name] = gets.chomp

puts space

puts "What is your age?"
client[:age] = gets.chomp.to_i

puts space

puts "Do you have any children? (yes/no)"
has_children = gets.chomp.downcase

if has_children == "yes"
	client[:has_children] = true
	puts "How many?"
	client[:number_of_children] = gets.chomp.to_i
else
	client[:has_children] = false
	client[:number_of_children] = "N/A"
end

puts space

puts "What would you like your decor theme to be?"
client[:decor_theme] = gets.chomp

puts space

puts "Thank you!"

puts client

puts space

puts "Would you like to change any of your information? (yes/no)"
answer = gets.chomp.downcase

if answer == "yes"

	puts space
	puts "What answer would you like to change? Your name, age, if you (I) have children, number of children, or decor theme? If none, simply type 'none'."
	change = gets.chomp.downcase
	if change == "none"
		puts "Thanks again!" 

	else	
		case change
		when "name"
			puts "What is your name?"
			client[:name] = gets.chomp
		when "age"
			puts "What is your age?"
			client[:age] = gets.chomp.to_i
		when "if i have children"
			puts "Do you have children?"
			has_children = gets.chomp.downcase
			
			if has_children == "yes"
				client[:has_children] = true
				puts "How many?"
				client[:number_of_children] = gets.chomp.to_i
			else
				client[:has_children] = false
				client[:number_of_children] = "N/A"
			end

		when "number of children"
			puts "How many children do you have?"
			client[:number_of_children] = gets.chomp.to_i
		when "decor theme"
			puts "What would you like your decor theme to be?"
			client[:decor_theme] = gets.chomp
		end
	end
end	

puts "Here is your information:"
puts "---------------------------------"
puts client
puts "---------------------------------"