// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.

// http://code.tutsplus.com/tutorials/the-basics-of-object-oriented-javascript--net-7670
// Warm Up




// // Bulk Up
function Olympian(name,event){
  this.name = name;
  this.event = event;
  this.win = function (){
    return this.name + " won the " + this.event;
  };
}

var sarah = new Olympian("Sarah Hughes", "Ladies Singles")
console.log(sarah.win());

// Jumble your words
function reverseString(string){
  var strArray = string.split("");
  var revArray = strArray.reverse();
  return revArray.join("");
  
};

var cat = "I am a cat"

console.log(reverseString(cat));



// 2,4,6,8
function evenNumbers(num){
  if (num % 2 == 0)
    return true
  else 
    return false
};

var numArray = [1,2,3,4,5,6,7];

var evenArray = numArray.filter(evenNumbers);

console.log(evenArray);



function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};
// "We built this city"
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// I definetly solidified my knowledege of constructor functions and array methods for this challenge.
// What are constructor functions?
// Constructor functions are basically blueprints for objects in javascript. For example a sloth constructor would have properties like name age and species and it would have functions like sleep and eat. These are all part of a blueprint for the sloth.
// How are constructors different from Ruby classes (in your research)?
// In ruby you can add methods (i.e functions) right into the class however in JavaScript it is common practice to add functions (i.e methods) with a prototype method. This allows for all instances of the constructor function to have the added functions. This is one major difference. Another is that the syntax for constructor functions and classes is totally different.



// Reflection