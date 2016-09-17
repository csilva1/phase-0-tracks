// Create two arrays: one colors and one names
// Create an object: Colors are the horses' names, and the values are the colors 

// var horse_color = ["periwinkle", "fuschia", "olive", "teal"]; // values
// var horse_name = ["Paco", "Archibald", "Gertrude", "Xochilt"];   // keys

// horse_color.push("pumpkin orange");
// horse_name.push("Robert")

// // Create an object using both arrays
// // keys = horse_name
// // values = horse_color. 
// // The code should work as long as both arrays are the same length 

// horse_name = [i]
// horse_color = [i]	

// Release 2: Build Many Objects Using a Constructor
// Use a constructor function to create a car with properties that include a function.
// Run the code to create several cars to verify that it works. 

function Car(make, model, year, anyAccidents) {
	console.log("Let's fill this empty parking spot!", this);
	this.make = make;
	this.model = model;
	this.year = year;
	this.anyAccidents = anyAccidents;

	this.rev = function() { console.log("Vroom!"); };
	this.sputter = function() { console.log("Cough! Cough!"); };
	this.reallyrev = function() { console.log("VROOM! VROOM!"); };
	
	console.log("Check out my sweet ride!");
}

// Here's the first car
var anotherCar = new Car("Toyota", "Corolla", 2015, false)
	console.log(anotherCar);
	console.log("Listen to that engine!"); 
	anotherCar.rev();

// And another...
var otherCar = new Car("Buick","Le Sabre", 1988, true);
	console.log(otherCar);
	console.log("Listen to that engine!"); 
	otherCar.sputter();
	
// ...and another...	
var otherotherCar = new Car ("Chevrolet", "El Camino", 1969, false)
	console.log(otherOtherCar);
	console.log("Listen to that engine!");
	otherOtherCar.reallyrev();
data_structures.js
Open with
Displaying data_structures.js.