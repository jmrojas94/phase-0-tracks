require_relative 'word_guessing_game'

describe WordGame do 
	let(:game) {WordGame.new("hello")}

	it "finds the length of a word"
		expect(@game.num_of_guesses).to eq 5
	end

	it "creates a placeholder for a word"
		expect(@game.placeholder). to eq "- - - - -"
	end
	
end
