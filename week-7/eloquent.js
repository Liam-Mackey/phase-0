
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var myVar = 5;
console.log(myVar * 5);
// var food = prompt("Whats your favorite food");
// undefined
// console.log("Hey thats my favorite too!");
// VM280:2 Hey thats my favorite too!
// undefined
// var food = prompt("Whats you your favorite food");
// undefined
// console.log("Hey " + food + " Is my favorite too!" );
// VM378:2 Hey sushi Is my favorite too!
// undefined

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//chess board
var i = 1;
var out = "#"
while (i < 8){
	out += "#"
	console.log(out);
	i++;
};


// Functions

// Complete the `minimum` exercise.
var min = function(val1, val2){
	if (val1 < val2){
		return val1;
	}
	else if (val2 < val1){
		return val2;
	}
	else{
		return "They're equal"
	};
};

console.log(min(0, 10));
console.log(min(0, -10));
console.log(min(0,0));
// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Liam",
	age: 21,
	favorite_foods: ["suhsi", "Lamb", "Lobster", "fish"],
	quirk: "I read all three lord of the rings in two weeks!",
};

