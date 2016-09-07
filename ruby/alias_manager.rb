#Spy's full name will be entered and the first and last name and switch it with .reverse and then take vowels (a,e,i,o,u) and switch them.


store_name = {}

def next_const(str)

#p str

str.tr('aeiouAEIOU', 'eiouaEIOUA').tr('bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ', 'cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZB')
  
end

loop do
puts "What is your first name?"
first_name = gets.chomp.downcase.capitalize

puts "What is your last name?"
last_name = gets.chomp.downcase.capitalize

store_name[:full_name] = first_name + " " + last_name

reversed_name = last_name + " " + first_name

store_name[:spy_name] = next_const(reversed_name)
# p next_const(reversed_name)

puts "Type 'quit' to exit or hit 'Enter' to continue"
input = gets.chomp


	
break if input == 'quit'

end
store_name.each do |full_name, reversed_name|
	
p store_name

end

puts "#{store_name[:full_name]} is also known as #{store_name[:spy_name]}!"



