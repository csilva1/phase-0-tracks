# create a class for Santa
# 1st. instance:'speak' create a methodto PRINT 'Ho, ho, ho! Haaaaaappy holidays!'
# 2nd. instance: 'eat_milk_and_cookies' create a method to PRINT 'That was a good <type of cookie here>!'
# 3rd. instance: 'initialize' create a method that PRINTS 'Initilaizing Santa instance...'

class Santa
	attr_reader :example_gender, :exampl_ethnicities, :random_age
	#=>not needed because there is attr_accessor which makes it writable and readable
	attr_accessor :age, :ethnicity, :gender
	def speak
		print "Ho, ho, ho! Haaaaapppy holidays!"
	end
	
	def eat_milk_and_cookies(type)
		print "That was a good #{type}"	
	end
	
	
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@random_age = rand(140)
		@age = 0
		@reindeer_ranking = default_ranking
		print #{@reindeer_ranking}
		print " Initializing sex: #{@gender} ethnicity: #{@ethnicity} who is #{@age} yrs old and accomanied by #{@reindeer_ranking} Santa instance..."
	end

	def age
		@age = 0
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
	
	def santa_info
		puts "This Santa is #{@random_age} yrs old, #{@gender}, and #{@ethnicity}"
	end
	
end

# santas = Santa.new("female", "Latina")
# santas.speak
# santas.eat_milk_and_cookies("snickerdoodle")


# santas = Santa.new("unicorn", "Asian")
# santas.speak
# santas.eat_milk_and_cookies("macadamiun nut cookie")

# santas = Santa.new("male", "black")
# santas.speak
# santas.eat_milk_and_cookies("macadamiun nut cookie")

# santas = Santa.new("mermaid", "Latino")
# santas.speak
# santas.eat_milk_and_cookies("macadamiun nut cookie")

# santas.age = "Santa just had his birthday and is now 1 yrs old!"

# santas.get_mad_at("Vixen")

# santas.celebrate_birthday

# santas.gender = "The Latina santa that was a female"
# puts "#{santas.gender} is now a male."

# santas.age = 3
# puts "Santa is now #{santas.age}"

# santas.ethnicity = "The Santa that was formerly Latina is now a unicorn"
# puts "Santa's can do more than bring presents, they can also transform. #{santas.ethnicity}"

 
 
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "how many Santa's would you want to create?"
how_many = gets.to_i

how_many.times do

	Santa.new(example_genders.sample, example_ethnicities.sample).santa_info

end





