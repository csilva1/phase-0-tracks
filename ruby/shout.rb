module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
   def self.yelling_happily(words)
   	words + "!!!" + " :)"
   end
end
puts Shout.yelling_happily("yaaay")
puts Shout.yell_angrily("Nooo")

