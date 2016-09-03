def fib(int)
	fibonacci = [0,1]
	n = int - 2
	a_number= 0 
	b_number= 1 
	n.times do
		temp = a_number
		a_number=b_number
		b_number = temp+b_number
		fibonacci << b_number
	end 
	return fibonacci

end
	
	p fib(6)
	p fib(100)		
		