puts ("what is the hamsters name?")
name = gets.chomp
puts ("What is it's volume level on scale from 1 to 10?")
volume = gets.to_i
if volume < 5
	volume = " quite "
else volume = " loud " 
end
puts ("What is the fur color?")
color = gets.chomp
puts ("Is it a good candidate? (yes/no) ")
good_candidate = gets.chomp
puts ("Estimated age? ")
age = gets.to_i
       if age == "" 
       age = nil
   end

print ( " This is " + name + " he is pretty " + volume + "  ,with  " + color + " fur. About " + age.to_s + " years old "+ " Do we think he is a good candidate? " + good_candidate )