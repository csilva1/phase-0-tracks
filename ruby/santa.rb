# create a class for Santa
# 1st. instance:'speak' create a methodto PRINT 'Ho, ho, ho! Haaaaaappy holidays!'
# 2nd. instance: 'eat_milk_and_cookies' create a method to PRINT 'That was a good <type of cookie here>!'
# 3rd. instance: 'initialize' create a method that PRINTS 'Initilaizing Santa instance...'

class Santa
	
	def speak
		print "Ho, ho, ho! Haaaaapppy holidays!"	# Whatever you want done
	end
	
	def eat_milk_and_cookies(type)
		print "That was a good #{type}"	
	end
	
	
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		print " Initializing #{@gender} #{@ethnicity} Santa instance..."
	end
	
end

santa = Santa.new("female", "Mexican")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")


santa = Santa.new("unicorn", "Puerto Rican")
santa.speak
santa.eat_milk_and_cookies("macadamiun nut cookie")





