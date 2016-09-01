#def test
#	puts "This is a test"
#	yield ("Monday")
#	puts "Test is complete!"
#end
#test { |day| puts "I completed my quiz on #{day}" }

numbers = [1, 2, 3]

#cars = {'Honda' => 'Civic', 'Toyota' => 'Camry', 'Tesla' => 'Model_S'}

#numbers.each do |number|
#	p number
#end

numbers.map! do |number|
puts number
number.next
end

p numbers

