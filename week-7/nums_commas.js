
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
/*

3.FOR each digit in the string in reverse
4. IF digit index is MOD 4 equals 0
  5.Insert comma at index
6.Put array back into string
*/

// Initial Solution
// function seperateComma(integer){
//   var numString = integer.toString();
//   var numArray = numString.split("");
//   for (var i = -(numArray.length); i < 0; i ++){
//     console.log(i)
//     if (i % 3 == 0 && i != -(numArray.length)){
//       numArray.splice(i, 0, ",");
//     };
//   };
//   return numArray.join('');
// };

// console.log(seperateComma(1000000));
// 1,000,000


// Refactored Solution
/*
Input: integer
output: string with commas in the right place
Steps:
1.Turn integer into string
2.Turn string into array


*/
function seperateComma(integer){
  var numString = integer.toString();
  var numArray = numString.split("");
  for (var i = -3; i > -(numArray.length); i -=4){
    numArray.splice(i,0,",")
  }; 
  return numArray.join('');
};

console.log(seperateComma(1000000000));
var a = seperateComma(1000);
// Your Own Tests (OPTIONAL)
// These are our tests
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (a === "1,000"),
  "The value of the a should be '1,000'",
  "1. "
)






// Reflection

/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
It was much harder to approach the problem from a javascript perspective. I took a different route because i knew i couldnt use string methods to solve the problem. It was much harder.
What did you learn about iterating over arrays in JavaScript?
I learned that for loops are your friend and that they can be simmilar to the each iterator in ruby. For loops are also a bit easier than while Lopps.
What was different about solving this problem in JavaScript?
We had a lot less built in methods available to us. We had to think a bit more thouroughly and logically. BUt despite that we still succeded with the challenge.
What built-in methods did you find to incorporate in your refactored solution?
We used splice and join which operate differently then they way they do in ruby. I definetly had a tough time figureiing out how to use the join method it took me a while to figure out that it adds commas automatically.
*/