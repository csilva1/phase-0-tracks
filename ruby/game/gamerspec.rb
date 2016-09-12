require_relative 'game'
describe Guessing_Game do
	let(:game) { Guessing_Game.new("hey") }

 it "this should store the of the input word" do expect(guessing_game.length).to eq 5
 end
 	it "creates the word as an array" do  expect(guessing_game.word).to eq ["c", "a", "r", "o", "l"]
 	end
 	it "supposed to increase guess countand stores input into the new array" do expect(guessing_game.guesses).to eq ["-", "-", "-", "-", "-"]
 	end
 	it "supposed to get the input and store it into a new array" do expect(game.attempt_word).to eq ["carol"]
 	end
 	it "supposed to check the array and see if the letter is included " do expect(game.letter_locate).to be (Array)
 	end
 	it "in the new array its supposed to replace the letter in the index" do expect(game.letter_placement).to eq ["-", "-", "-", "o", "-"]
 	end
 	it "gets the array and turns the array into 1 index" do expect(game.join_word).to eq "-----"
 	end
 end