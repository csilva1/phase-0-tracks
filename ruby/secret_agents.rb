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

puts encrypt("some text")
puts encrypt("z")

puts decrypt("tpnf ufyu")
puts decrypt("a")