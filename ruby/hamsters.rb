puts "What is your hamsters name?"
  name = gets.chomp
puts "How loud is your hamster on a scale of 1 to 10?"
  loud = gets.chomp.to_i
puts "What is the color of its fur?"
  fur = gets.chomp
puts "Is this hamster a good candidate for adoption?(y/n)"
  candidate = gets.chomp.downcase
if candidate == "y"
  answer = "totally"
else
  answer = "not"
end

puts "What is the estimated age of the Hamster?"
  estimated_age = gets.chomp.to_i
if estimated_age.to_s.empty?
  age = "N/A"
  p nil
else
  age = estimated_age
end


puts "Your hamsters name is #{name}. On a scale of 1-10, its loudness is #{loud}. Its fur is #{fur}. It is #{answer} a good candidate for adoption. And the age of the hamster is #{age}."