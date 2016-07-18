puts "How many employees will be processed?"
employees = gets.chomp.to_i

index = 0

while index < employees

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

	allergies = nil
	until allergies == "done" || allergies == "sunshine"
		puts "List all of your allergies. When finished, type 'done'."
		allergies = gets.chomp
	end

	if correct_age && (garlic_tolerance || insurance)
		puts "Probably not a vampire."
	elsif !correct_age && (garlic_tolerance || insurance)
		puts "Probably a vampire."
	elsif !correct_age && !(garlic_tolerance || insurance)
		puts "Almost certainly a vampire."
	elsif name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
	elsif allergies == "sunshine"
		puts "Probably a vampire."
	else 
		puts "Results inconclusive."
	end
	
	index +=1

	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end
		