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

puts "What"
user = gets.chomp

# Create database.
create_table_cmd = <<-SQL

CREATE TABLE IF NOT EXISTS "#{user}" (
	id INTEGER PRIMARY KEY,
	album_name VARCHAR(255),
	artist VARCHAR(255),
	year INT,
	rating INT,
	genre VARCHAR(255)
)

SQL

# Adds album.
# def add_album(database, user, album_name, artist, year,
# 	rating, genre)
# 	database.execute("INSERT INTO (?) (album_name, artist, year, rating, genre) VALUES (?, ?, ?, ?, ?)", [user, album_name, artist, rating, genre])
# end

# # Deletes Entry.
# def delete_album(database, user)
# 	database.execute("DELETE FROM (?) WHERE album=(?)", [user, item])
# end


database.execute(create_table_cmd)
database.execute("INSERT INTO #{user} (album_name, artist, year, rating, genre) VALUES ('lol', 'lolol', 1994, 10, 'metal')")