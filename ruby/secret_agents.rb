# Define an encrypt method that accepts string as an argument.
# Set index to begin at the zero position.
# Method must loop through the string by each letter.
# Method will move each letter up a letter.
# As the program loops, it adds one letter of length to the index. 
# Method will then return the new string, once index equals length of #string.
# Close method.
# Define a decrypt method that accepts a string as an argument.
# Define an empty string.
# Set a counter to 0.
# Define a variable with the alphabet as a string.
# Loop through the argument string and find it on the alphabet.
# Using the index, go back a letter.
# Return the new string.
# Close method.
# Ask user whether they want to encrypt or decrypt a password.
# Ask for a password.
# If encrypt is chosen, call encrypt method when password is typed in.
# If decrypt is chosen, call decrypt method when password is typed in.
# Close the program.


def encrypt(text)
  index = 0
  
  while index < text.length
    
    text[index] = text[index].next

    index += 1
  
  end
  
  p text

end


def decrypt(text)


  counter = 0
  new_word = ""
  
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  
  while counter < text.length
    
    x = alphabet.index(text[counter]) - 1
    new_word += alphabet[x]
    counter += 1
  
  end
  
  p new_word
end

#encrypt("abc") 
#encrypt("zed") 
#decrypt("bcd") 
#decrypt("afe") 

#decrypt(encrypt("swordfish"))
# This works due to the fact that the program works through the parenthesis #first. It then runs the method on the outside, on the new value contained #inside the parenthesis.
  
puts "Hello Secret Agent. Would you like to encrypt or decrypt your password?"
choice_made = gets.chomp

puts "What is your password?"
text = gets.chomp
  
  
if choice_made == "encrypt"
  encrypt(text)

elsif choice_made == "decrypt"
  decrypt(text)
end



