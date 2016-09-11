# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#    def self.yelling_happily(words)
#    	words + "!!!" + " :)"
#    end
# end
# puts Shout.yelling_happily("yaaay")
# puts Shout.yell_angrily("Nooo")

module Shout
	def yell(emotions)
		puts "In the stadium there was a mix emotions between the winning and losing fans of #{emotions}"
	end
end

class Happy_yell
  include Shout
end

class Angry_yell
  include Shout
end

happy = Happy_yell.new
happy.yell("*cheers* & 'WOHOOING'")

angry = Angry_yell.new
angry.yell("*sobbing* & 'BOOING'")



