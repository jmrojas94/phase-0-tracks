class Santa

	attr_reader :ethnicity, :age, :reindeer_ranking
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = rand(0..140)
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

		puts "This Santa is a(n) #{@ethnicity} #{@gender} Santa who is #{@age} years old." 
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
	end

	def celebrate_birthday
		@age += 1
	end

	# #Setter Methods
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# #Getter Methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def reindeer_ranking
	# 	@reindeer_ranking
	# end

	# def gender 
	# 	@gender
	# end

end

# Driver code
# santas = Santa.new("male", "Latino")
# santas.speak
# santas.eat_milk_and_cookies("chocolate chip")
# p santas
# santas.celebrate_birthday
# p santas.age
# p santas.ethnicity
# p santas.reindeer_ranking
# santas.get_mad_at("Vixen")
# p santas.reindeer_ranking
# p santas.gender
# santas.gender = ("Not Male")
# p santas.gender

# p santas

# santas = []

# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p santas

# Build Many Santas

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

50.times do |i|
	santas = Santa.new(example_genders.sample, example_ethnicities.sample)
	puts "------------------------------------"
end