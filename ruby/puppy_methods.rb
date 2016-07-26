class Puppy
  
  def initialize
    puts "Initializing new puppy instance..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(integer)
    integer.times {|i| puts "Woof!"}
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    dog_years = 7 * human_years
    p dog_years
  end
  
  def jump
    puts "*jumps*"
  end
  
end


puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(10)
puppy.jump

class Kitten
  
  def initialize
    puts "Initializing new kitten class"
  end
  
  def meow(integer)
    integer.times {|num| puts "Meow"}
  end
  
  def scratches_something(furniture)
    puts "The cat is scratching #{furniture}"
  end
end


kitten_arr = []

50.times do |num| 
  kitten_arr << Kitten.new
end

kitten_arr.each do |kitten|
  kitten.meow(2)
  kitten.scratches_something("couch")
end

 # p kitten_arr