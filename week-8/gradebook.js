/*
Gradebook from Names and Scores
I worked on this challenge [with: Liam Mackey and Angelika Yoder]
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
// var gradebook = {};
// for(var value in students){
//     gradebook[students[value]] = {};
// }

// // console.log(gradebook);

// var index = 0
// for(var grades in gradebook)
//   {
//     gradebook[grades].testScores = scores[index];
//     index ++
//   }

// gradebook.addScore = function(name, score){
//   gradebook[name].testScores.push(score);
// }



// gradebook.getAverage = function(name){
//   return average(gradebook[name].testScores);
// };


// var average = function(array)
// {
//   return array.reduce(function(sum, value){
//     return sum + value;
//   })/ array.length
// }


// Refactored Solution

var gradebook = {};
for(var value in students){
    gradebook[students[value]] = {};
}

// console.log(gradebook);

var index = 0
for(var grades in gradebook)
  {
    gradebook[grades].testScores = scores[index];
    index ++
  }

gradebook.addScore = function(name, score){
  gradebook[name].testScores.push(score);
}



gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};


var average = function(array)
{
  return array.reduce(function(sum, value){ return sum + value; })/ array.length;
}




// __________________________________________
// Reflect
/*

What did you learn about adding functions to objects?
I learned that adding functions to objects is relativley easy. I learned that you add them using dot notation and set that equal to a function. I also learned that you can pass values to functions in objects.
How did you iterate over nested arrays in JavaScript?
I predominently used the for in method. However I tried using the forEach method but it turned out that that would mean writing more code and making it less dry so i decided against it.
Were there any new methods you were able to incorporate? If so, what were they and how did they work?
My pair taught me about the reduce method which is simmilar to the reduce method in ruby which boils down the entire array to one operation and makes it easier to work with. It is a great way to calculate sums and products of values in arrays.



*/








// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)