class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(times)
  	puts "Woof!" * times
  end

  def roll_over
  	puts "*rolls over*"
  end
  def dog_years(human_years)
  	dog_years = human_years * 7
  end
  def play_dead
  	puts "*plays dead*"
  end
end
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(2)
puppy.play_dead

