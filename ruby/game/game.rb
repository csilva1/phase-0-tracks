
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
	attr_reader :word, :attempt_word, :guess_count, :length
	

	def guess(letter)
		if @all_guesses.include?(letter)
			@guess_count
		else
			@guess_count +=1
		end
		@all_guesses << letter
	end
	def letter_locate(letter)
		if @word.include?(letter)
			@letter_placement
		else
			puts "Nu-uh honey, that letter ain't in the word. Keep trying shugah"
			@join_word
		end
	end
		def letter_placement(letter)
			@word.each_with_index do |item, index|
				if item = letter
					@user_word[index] = letter
				end
			end
			@join_word
		end

		def join_word
			@new_word = @user_word.join(" ")
			p @new_word
		end

		def initialize(word)
			@length = word.length
			@word = word.split("")
			@guess_count = 0
			@attempt_word = Array.new(@length, "_")
			@all_guesses = []
		end
end

puts "Hey, Welcome to Guess That Word"
puts "1st player: Type in your name"
player1 = gets.chomp
puts "2nd player: Type in your name"
player2 = gets.chomp
puts "#{player1}, type in the guessing word #{@word}"
word = gets.chomp
game = Guessing_Game.new(word)

while game.guess_count < game.length do
	puts "#{player2} guess #{player1}'s word, by typing a letter!"
	letter = gets.chomp
	game.letter_locate(letter)
	game.guess(letter)
end











