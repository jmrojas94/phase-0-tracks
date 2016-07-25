# Nested Hash 
# Create a hash of my favorite artists from different genres.
# - Sort by genre,
#     - favorite artist,
#     - number of albums 
#     - times I've seen them live
#     - and my favorite songs.
# - Print deeply nested data from the hash structure.

my_playlist = {
    hardcore: {
        favorite_artist: "Defeater",
        number_of_albums: 4,
        times_seen: 1,
        favorite_songs: [
            "The Red, White and Blues", 
            "Unanswered",
            "But Breathing"
        ]
    },
    hip_hop: {
        favorite_artist: "Future",
        number_of_albums: 4,
        times_seen: 0,
        favorite_songs: [
            "March Madness",
            "56 Nights",
            "Big Rings"
        ]
    },
    pop_punk: {
        favorite_artist: "The Wonder Years",
        number_of_albums: 5,
        times_seen: 0,
        favorite_songs: [
            "Passing Through A Screen Door", 
            "Cardinals",
            "I Don't Like Who I Was Then"
        ]
    }
}

puts "My favorite songs in the hardcore genre:"
p my_playlist[:hardcore][:favorite_songs]

puts "-----------------------------------------"

puts "Third favorite song by my favorite pop-punk band:"
p my_playlist[:pop_punk][:favorite_songs][2]

puts "-----------------------------------------"

puts "I forgot to add a song to my favorite hardcore band."
my_playlist[:hardcore][:favorite_songs].push("Cowardice")
p my_playlist[:hardcore][:favorite_songs]

puts "-----------------------------------------"

puts "I actually saw my favorite hip-hop artist once..."
my_playlist[:hip_hop][:times_seen] = 1

puts "Times I saw him:"
p my_playlist[:hip_hop][:times_seen]