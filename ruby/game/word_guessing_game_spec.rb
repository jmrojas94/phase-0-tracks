require_relative 'word_guessing_game'

describe WordGame do 
	let(:game) {WordGame.new("hello")}

	it "finds the length of a word" do
		expect(game.num_of_guesses).to eq(5)
	end

	it "stores guessed letter into guessed letter array and subtracts a guess from the guess count" do
		expect(game.guess("f")).to eq(4)
	end

	it "fills letters in the placeholder if the right letter is chosen" do
		expect(game.fill_the_blank("h")).to eq("h - - - -")
		expect(game.fill_the_blank("d")).to eq("h - - - -")
		expect(game.fill_the_blank("e")).to eq("h e - - -")
		expect(game.fill_the_blank("l")).to eq("h e l l -")
		expect(game.fill_the_blank("o")).to eq("h e l l o")
	end

	it "ends the game when word is guessed" do
		game.fill_the_blank("h")
		game.fill_the_blank("e")
		game.fill_the_blank("l")
		game.fill_the_blank("o")
		expect(game.winner) == true
	end

	it "ends the game when user runs out of turns" do
		game.fill_the_blank("d")
		game.fill_the_blank("x")
		game.fill_the_blank("c")
		game.fill_the_blank("i")
		game.fill_the_blank("e")
		expect(game.winner) == false
	end
		
end