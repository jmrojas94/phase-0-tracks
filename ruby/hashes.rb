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
# 			- Return key and value.
#   - If none,
#       - Skip.
# - Print the updated hash and exit program.

client = {}

puts "Hello! Welcome to our design client database entry system! Lets begin with a few questions."

puts "What is your name?"
client[:name] = gets.chomp

puts "What is your age?"
client[:age] = gets.chomp.to_i

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

puts "What would you like your decor theme to be?"
client[:decor_theme] = gets.chomp

puts client
