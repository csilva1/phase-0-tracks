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
	
	
	def initialize
		print "Initializing Santa instance.."
	end
end

test = Santa.new
test.speak
test.eat_milk_and_cookies("snickerdoodle")
