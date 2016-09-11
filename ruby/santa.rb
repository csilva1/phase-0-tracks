# create a class for Santa
# 1st. instance:'speak' create a methodto PRINT 'Ho, ho, ho! Haaaaaappy holidays!'
# 2nd. instance: 'eat_milk_and_cookies' create a method to PRINT 'That was a good <type of cookie here>!'
# 3rd. instance: 'initialize' create a method that PRINTS 'Initilaizing Santa instance...'

class Santa

	def speak
		print "Ho, ho, ho! Haaaaapppy holidays!"
	end
	
	def eat_milk_and_cookies(type)
		print "That was a good #{type}"	
	end
	
	
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		# random_age = (0..140).to_a
		# @age = random_age.sample
		@age = 0
		@reindeer_ranking = default_ranking
		print #{@reindeer_ranking}
		print " Initializing sex: #{@gender} ethnicity: #{@ethnicity} who is #{@age} yrs old and accomanied by #{@reindeer_ranking} Santa instance..."
	end
	
	def celebrate_birthday
		@age += 1
		puts "Santa just turned #{@age}!"
	end
	
	def get_mad_at(bad_reindeer)
		deleted_reindeer = @reindeer_ranking.delete(bad_reindeer)
		@reindeer_ranking << bad_reindeer
	end

	def default_ranking
		["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	#getter method
end

santas = Santa.new("female", "Latina")
santas.speak
santas.eat_milk_and_cookies("snickerdoodle")


santas = Santa.new("unicorn", "Asian")
santas.speak
santas.eat_milk_and_cookies("macadamiun nut cookie")

santas = Santa.new("male", "black")
santas.speak
santas.eat_milk_and_cookies("macadamiun nut cookie")

santas = Santa.new("mermaid", "Latino")
santas.speak
santas.eat_milk_and_cookies("macadamiun nut cookie")

santas.get_mad_at("Vixen")

santas.celebrate_birthday

# end

















# random_age = (0..140).to_a
# santa_age = []
# 3.times do |i|
# 	santa_age << Santa.new(random_age.sample)
# end






