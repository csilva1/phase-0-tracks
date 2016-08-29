puts "What is your name?"
name = gets.chomp
puts "How old are you? What year were you born?"
age = gets.to_i
year_born = gets.to_i
if age == (2016 - year_born)
	is_a_vampire = false
else
	is_a_vampire = true
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
order_garlic_bread = gets.chomp
if order_garlic_bread == "y"
	is_a_vampire = false
else order_garlic_bread == "n"
	is_a_vampire = true
end

puts "Whould you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp
if insurance == "y"
	is_a_vampire = false
else insurance == "n"
	is_a_vampire = true
end

if name = "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire"
elsif (order_garlic_bread == "n") && (insurance == "n")
	puts "Probably a vampire"
elsif (age && order_garlic_bread) || insurance
	puts "Probably not a vampire"
elsif (insurance == "y") && (order_garlic_bread == "y")
	puts "Probably not a vampire"
else 
	puts "Results inconclusive"
		
end

	


#wolves_like_sunshine = true
#wolves_like_garlic = true
#vampires_like_sunshine = false
#vampires_like_garlic = false
 
 #def not_vampire
	#if (age <= 100 && garlic_bread == 'y') || insurance == 'y'
	#puts "Probably not a vampire"
#  end
