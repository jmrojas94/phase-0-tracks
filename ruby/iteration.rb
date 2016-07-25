# Release 0
def print_something
  puts "Before:"
  yield("In", "between")
  puts "After!"
end

print_something { |word1, word2| puts "#{word1} #{word2}" }


# Release 1
#.each on array
states = ["Texas", "Florida", "California"]

puts "Original data:"
p states

states.each do |name|
  puts "I live in #{name}."
end

puts "After .each:"
p states 

puts "-------------------------------"

#.each on hash

capitals = {
  Austin: 885400,
  Tallahassee: 186411,
  Sacramento: 479686
}

puts "Original data:"
p capitals

capitals.each do |city, population|
  puts "In #{city} there are #{population} people."
end

puts "After .each:"
p capitals

puts "--------------------------------"

#.map! on array
puts "Original data:"
p states

states.map! do |name|
  name.upcase
end

puts "After .map call:"
p states

# Release 2

numbers = [1, 2, 3, 4, 5, 6, 7, 8]

letters = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5,
  f: 6,
  g: 7,
  h: 8,
}


puts "Before delete_if:"

puts "Array:"
p numbers

puts "Hash:"
p letters

puts "--------------------------"
puts "After delete_if:"

puts "Array:"
p numbers.delete_if {|x| x < 5}

puts "Hash:"
p letters.delete_if {|letter, number| number < 5}

numbers = [1, 2, 3, 4, 5, 6, 7, 8]

letters = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5,
  f: 6,
  g: 7,
  h: 8,
}

puts "--------------------------"
puts "Before keep_if:"

puts "Array:"
p numbers

puts "Hash:"
p letters

puts "--------------------------"
puts "After keep_if:"

puts "Array:"
p numbers.keep_if {|x| x < 5}

puts "Hash:"
p letters.keep_if {|letter, number| number < 5}

numbers = [1, 2, 3, 4, 5, 6, 7, 8]

letters = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5,
  f: 6,
  g: 7,
  h: 8,
}

puts "--------------------------"
puts "Before select!:"

puts "Array:"
p numbers

puts "Hash:"
p letters

puts "--------------------------"
puts "After select!:"

puts "Array:"
p numbers.select! {|x| x > 3}

puts "Hash:"
p letters.select! {|letter, number| number == 4}

numbers = [1, 2, 3, 4, 5, 6, 7, 8]


puts "--------------------------"
puts "Before take_while:"

puts "Array:"
p numbers

puts "--------------------------"
puts "After take_while:"

puts "Array:"
p numbers.take_while {|x| x < 5}