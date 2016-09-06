# Ask the user if their name, age, have any children, what kind of decor theme would they want. Then grab their input and push it into a hash

form = {}

puts "Please complete the form."

puts "What is your name?"
form[:name] = gets.chomp

puts "How old are you?"
form[:age] = gets.to_i

puts "How many children do you have?"
form[:children] = gets.to_i
 
puts "What kind of decor theme would you like?"
form[:theme] = gets.chomp

puts "Would you want to update any info? Enter ( yes / none )"
	input = gets.chomp.downcase

	if input == "yes"
		puts "What would you like to update: Name | Age| Children | Theme"
		update = gets.chomp
		case update
		when "name" then puts "Please update"
		form[:name] = gets.chomp.to_sym
			puts "Name has been updated to #{form[:name]}!"
		when "age" then puts "please update"
		form[:age] = gets.chomp.to_sym
		puts "Age has been updated to #{form[:age]}!"
		when "number of children" then puts "please update"
		form[:children] = gets.chomp.to_sym
		puts "Number of children has been updated to #{form[:children]}!"
		when "decor theme" then puts "please update"
		form[:theme] = gets.chomp.to_sym
		puts "Theme has been updated to #{form[:theme]}!"
	end
elsif input == "none"
	puts "Your application will be submitted!"

end
puts form


