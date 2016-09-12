
#user1: get user input for secret word then convert input of secrete into array letters would be seperated into seperate string
# #user2: have user guess letters of secret word and compare user2 letter_input  (.include?)with secret word array. Take user2 letter input and seach to see if letter exists in array and if it does then iterate though the 'secret word' array' ex: "arr = [1, 2, 3, 4, 5]
#arr.each { |a| print a -= 10, " " }
# prints: -9 -8 -7 -6 -5
#=> [1, 2, 3, 4, 5]"locate the appropriate index "a = [ "a", "b", "c" ]
# a.index("b")              #=> 1
# a.index("z")              #=> nil
# a.index { |x| x == "b" }  #=> 1"
#'---' would be an array (ex: ["-", "-", "-"]) and should amount to the (.length) of the secret word, create new array for "---" that matches the amount of letters in the secret word array "Array.new(3, true) #=> [true, true, true]". 
# -- IF letter matches 'secretword' THEN say "Your getting close" ELSE say "keep trying"
#PRINt ["-"] INTO  string with ".join(",")"
#keep track of guesses so if user 2 had tried a letter that was already tried PUTS "OOPS! you already tried that letter, please try again"

#loop in driver code

class Guessing_Game
	attr_reader :length, :word, :attempt_word, :guess_count
	def initialize(word)
		@length = word.length
		@word = word.split("")
		@guess_count = 0
		@attempt_word = Array.new(@length, "_")
		@all_guesses = []
	end

	def guess(letter)
		if @all_guesses.include?(letter)
			@guess_count
		else
			@guess_count +=1
		end
		@all_guesses << letter
	end

end














