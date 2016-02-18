/*
Gradebook from Names and Scores

I worked on this challenge [with FJ Collins]
This challenge took me [2] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];





// __________________________________________
// Write your code below. // INITIAL SOLUTION //

// var gradebook = {};
// // Make each student name in students a property of gradebook and assign each the value of a new object.

// gradebook["Elizabeth"] = {};
// gradebook["Joseph"] = {};
// gradebook["Susan"] = {};
// gradebook["William"] = {};


// for (var i=0; i<students.length; i++){
//   gradebook[students[i]].testScores = scores[i];
// };

// gradebook.addScore = function(name,grade){
//   gradebook[name].testScores.push(grade);
// };


// function average(array) {
//   var total = 0;
//   var avg = 0
//   for (var i = 0; i < array.length; i++){
//     total += array[i];
//     avg = (total/array.length);
//   }
//  return avg
// };

// gradebook.getAverage = function(name){
//   var total = 0;
//   var avg = 0
//   for (var i = 0; i < gradebook[name].testScores.length; i++){
//     total += gradebook[name].testScores[i];
//     avg = (total/gradebook[name].testScores.length);
//   }
//  return avg
// };


//Create a new function average that accepts an array of integers and return the average of those integers.





//Give each student property of gradebook its own testScores property and assign it the value of the respective students scores from scores.
// gradebook["William"] = {};
// gradebook.William.testScores = {};

// Assign an addScore property to gradebook. Give it the value of a function that accepts name and score arguments.
// Have addScore push the score to the value of the testScore property of the gradebook property that matches the value of the name argument.


// __________________________________________
// Refactored Solution

var gradebook = {};
// Make each student name in students a property of gradebook and assign each the value of a new object.
for (var i=0; i<students.length; i++){
  gradebook[students[i]] = {};
  gradebook[students[i]].testScores = scores[i];
};

gradebook.addScore = function(name,grade){
  gradebook[name].testScores.push(grade);
};


function average(array) {
  var total = 0;
  var avg = 0
  for (var i = 0; i < array.length; i++){
    total += array[i];
    avg = (total/array.length);
  }
 return avg
};

gradebook.getAverage = function(name){
 return average(gradebook[name].testScores);
};









// __________________________________________
// Reflect

// 1. What did you learn about adding functions to objects?

//   I learned that adding functions to objects seems awkward at first but it is much easier
//   than it seems. Essentially, all you have to do is to use dot notation to add the function
//   name to the object, then set it equal to a function, and proceed to define that function.

// 2. How did you iterate over nested arrays in JavaScript?

//   Accessing the values in a nested array was pretty easy, and very similar to ruby. Essentially,
//   we used a for loop with a zero index set at the value of i. For each iteration, we would access
//   each array using the index number (0 - 4) or array[i].

// 3. Were there any new methods you were able to incorporate? If so, what were they and how did they work?

//   We did not need to use any new methods in our initial solution or our refactor, it did not
//   seem to be necessary. I would however love to see how a new method could be used to replace
//   any of the code her.









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
