food = {
	oriental: {
		response_time: 'Fast',
		menu: {
			sushi: 5,
			pho: 7,
			udon: 4
		},
		portion: [
			"Large",
			"Medium",
			"Small"
		]
	},
	latin: {
		salsa: [
			"Hot",
			"Medium",
			"No Spicy"
		],
		burrito: {
			super: 10,
			regular: 5
		},
		rating: []
	}
}

food[:latin][:rating] << 5
food[:oriental][:portion][1]
food[:latin][:salsa][1] = "Not so hot"
