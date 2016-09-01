#def test
#	puts "This is a test"
#	yield ("Monday")
#	puts "Test is complete!"
#end
#test { |day| puts "I completed my quiz on #{day}" }

numbers = [1, 2, 3]

#numbers.each do |number|
#	p number
#end

numbers.map! do |number|
puts number
number.next
end

p numbers

cars = {'Honda' => 'Civic', 'Toyota' => 'Camry', 'Tesla' => 'Model S'}

cars.each do |manufacturer, model|
	puts "The best selling car from #{manufacturer} is the #{model}."
end

#1
numbers = [1,2,3,4,5,6,7,8,9]

numbers.delete_if { |number| number < 5 }

p numbers

#2
numbers.keep_if { |number| number < 5 }

p numbers

#3
numbers.keep_if { |number| number.even? }

p numbers

#4
numbers.drop_while {|number| number < 3 } 




