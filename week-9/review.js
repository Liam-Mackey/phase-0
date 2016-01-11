/*
The challenge I chose was the calculate mode challenge. The reason I chose this one was because I really like the idea of making histograms and I feel it will be really important to know how to do in JavaScript
Here is my Ruby solution:
def mode(list)
  mode = []
  frequency = Hash.new(0)
  list.each { |el| frequency[el] += 1 }
  frequency.each { |k,v| mode.push(k) if v == frequency.values.max }
  return mode
end
*/

/* 
Psuedocode:
Input: Array
Output: Array of most common values in original Array
Steps:
1. Make a new JS object make it empty
2. FOR every value in the array calculate the amount of times it occurs
		3. put the values into our object
3. Make a empty array
3. FOR every key value pair in the object
		4. IF the object's max value equals the value we are currently looking at
			5. Push the key into our new array
4. return array
*/
// function returnMax(obj){
//   var max = 0;
//   for(var i in obj){
//     if (obj[i] > max){
//       max = obj[i]
//     };
//   };
//   return max;
// };


// function mode(list){
//   var count = {};
//   for(var i in list){
//     count[list[i]] = 0;
//   };
//   for (var i in list){
//     count[list[i]] += 1;
//   };
//   var ans = [];
//   for (var x in count){
//     if (count[x] == returnMax(count)){
//       ans.push(x);
//     };
//   };
//   return ans;
// };

// Driver tests 
// console.log(mode(["cat", "cat", "dog"]));
// Refactor

function returnMax(obj){
  var max = 0;
  for(var i in obj){
    if (obj[i] > max){
      max = obj[i]
    };
  };
  return max;
};


function mode(list){
  var count = {};
  for(var i in list){
    if (count[list[i]]){
      count[list[i]] += 1;
    }
    else{
      count[list[i]] = 1;
    }
  };
  var ans = [];
  for (var x in count){
    if (count[x] == returnMax(count)){
      ans.push(x);
    };
  };
  return ans;
};

console.log(mode([1,2,1,2,3,4,4]));

/*

What concepts did you solidify in working on this challenge? 
I deffinetly soldified my ideas about iterating through objects and arrays in javascript as well as default values in JS
What was the most difficult part of this challenge?
Refactoring there are very few built in methods for JS.
Did you solve the problem in a new way this time?
Sort of I made two methods but that was more out of nessectity. I also took an new approach with iteration but once again I had too.
Was your pseudocode different from the Ruby version? What was the same and what was different?
It was fairly simmilar because I think a histogram is really the only way to solve this challenge.






*/

