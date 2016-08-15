# Record Collection Program

# Create a program that stores the favorite records of a user including the artist, album, rating, and genre.

# - Ask for the users name.
# - Creat a table for the user.
# 	- Add the artist name.
# 	- Album name.
#	- Release year.
# 	- Rating.
# 	- Genre.
# - Then ask if the user would like to store another, print the list, delete an entry, or update an item.
# - When the user is done, print a list of albums and their data.

require 'sqlite3'
database = SQLite3::Database.new("record_collection.db")

puts "Welcome to the Record Collection!"
puts "Lets start with your name!"
user = gets.chomp

# Create database.
create_table_cmd = <<-SQL

CREATE TABLE IF NOT EXISTS "#{user}" (
	id INTEGER PRIMARY KEY,
	album_name VARCHAR(255),
	artist VARCHAR(255),
	genre VARCHAR(255),
	year INT,
	rating INT
)

SQL

# Adds album.
def add_album(database, user)

	puts "What is the name of the album?"
	album_name = gets.chomp

	puts "Who is the artist?"
	artist = gets.chomp

	puts "What genre is this album?"
	genre = gets.chomp

	puts "When was this album released?"
	year = gets.chomp.to_i

	puts "On a scale of 1-10, rate this title."
	rating = gets.chomp.to_i

	database.execute("INSERT INTO #{user} (album_name, artist, genre, year, rating) VALUES (?, ?, ?, ?, ?)", [album_name, artist, genre, year, rating])

	small_table(database, user)

end

# Deletes Entry.
def delete_album(database, user)

	small_table(database, user)

	puts "Which title number would you like to delete?"
	item = gets.chomp.to_i
	database.execute("DELETE FROM #{user} WHERE id=(?)", [item])

	small_table(database, user)

end

# Prints tables.

def small_table(database, user)

	counter = 0

	while counter < database.execute("SELECT * FROM #{user}").length
		item = database.execute("SELECT * FROM #{user}")
		puts "--------------------------------"
		puts "ID: #{item[counter][0]}"
		puts "Album: #{item[counter][1]}"
		puts "Artist: #{item[counter][2]}"
		puts "--------------------------------"
		counter += 1
	end

end

def full_table(database, user)

	counter = 0

	while counter < database.execute("SELECT * FROM #{user}").length
		item = database.execute("SELECT * FROM #{user}")
		puts "--------------------------------"
		puts "ID: #{item[counter][0]}"
		puts "Album: #{item[counter][1]}"
		puts "Artist: #{item[counter][2]}"
		puts "Year: #{item[counter][3]}"
		puts "Rating: #{item[counter][4]}"
		puts "Genre: #{item[counter][5]}"
		puts "--------------------------------"
		counter += 1
	end

end

# Changes data.

def change_data(database, user)

	small_table(database, user)

	puts "Which title number would you like to edit?"
	title = gets.chomp.to_i
	puts "What would you like to change about this entry?"
	puts "1. Album Name"
	puts "2. Artist"
	puts "3. Year"
	puts "4. Rating"
	puts "5. Genre"
	item = gets.chomp.to_i
	
	attributes = {1 => "album_name", 2 => "artist", 3 => "year", 4 => "rating", 5 => "genre"}

	puts "What should I change this to?"
	answer = gets.chomp
	if item == 1 || 5
		answer = "'#{answer}'"
	end

	database.execute("UPDATE #{user} SET #{attributes[item]}=#{answer} WHERE id=#{title}")

	full_table(database, user)

end

# User Interface
puts "--------------------------------"
puts "Record Collection adds your favorite albums into an easy to read database so you never forget what is in your collection."
puts "--------------------------------"

database.execute(create_table_cmd)
def interface(database, user)

	user_input = ""

	until user_input == 5
		puts "What would you like to do?"
		puts "1. Add an album."
		puts "2. Delete an album."
		puts "3. Change album data."
		puts "4. View your colleciton."
		puts "5. Exit."
	user_input = gets.chomp.to_i
		if user_input == 1
			add_album(database, user)
		elsif user_input == 2
			delete_album(database, user)
		elsif user_input == 3
			change_data(database, user)
		elsif user_input == 4
			full_table(database, user)
		elsif user_input == 5
			puts "Thanks! Here is a list of your entries:"
			full_table(database, user)
			break
		end
	end
	
end

interface(database, user)
			
			
				
			