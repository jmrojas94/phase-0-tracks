require_relative 'word_guessing_game'

describe WordGame do 
	let(:game) {WordGame.new("hello")}

	it "finds the length of a word" do
		expect(game.num_of_guesses).to eq(5)
	end

	it "stores guessed letter into guessed letter array and adds to guess count" do
		expect(game.guess("f")).to eq(1)
	end

	it "fills letters in the placeholder if the right letter is chosen" do
		expect(game.fill_the_blank("h")).to eq("h - - - -")
		expect(game.fill_the_blank("d")).to eq("h - - - -")
	end
	
end