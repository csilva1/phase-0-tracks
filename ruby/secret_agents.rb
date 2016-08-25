#encryption function
def encrypt(string)
	indx = 0
	encrypted_string = ""
	while indx < string.length
		if string[indx] == " "
			encrypted_string[indx] = " "
		elsif string[indx] == "z"
			encrypted_string[indx] = "a"
		else
			encrypted_string[indx] = string[indx].next
		end
		indx += 1
	end
	return encrypted_string
end

#decryption function
def decrypt(string)
	indx = 0
	decrypted_string = ""
	alpha = "abcdefghijklmnopqrstuvwxyz"
	while indx < string.length
		if string[indx] == " "
			decrypted_string[indx] = " "
		elsif string[indx] == "a"
			decrypted_string[indx] = "z"
		else
			decrypted_string[indx] = alpha[alpha.index(string[indx]) - 1]
		end
		indx += 1
	end
	return decrypted_string
end

#testing functions
#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")

#using encrypt and decrypt will return the original password
#puts decrypt(encrypt("swordfish"))

puts "Would you like to encrypt or decrypt your password? (e/d)"
preference = gets.chomp

puts "Please enter your password: "
password = gets.chomp

if preference == "e"
	puts encrypt(password)
elsif preference == "d"
	puts decrypt(password)
end