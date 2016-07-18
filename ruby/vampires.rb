puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

real_age = 2016 - year

if real_age == age += 1
	correct_age = true
else 
	correct_age = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
wants_garlic_bread = gets.chomp.downcase

if wants_garlic_bread == "yes"
	garlic_tolerance = true
else 
	garlic_tolerance = false
end

puts "Would you like to enroll in the company's health insurance? (yes/no)"
wants_insurance = gets.chomp.downcase

if wants_insurance == "yes"
	insurance = true
else
	insurance = false
end
