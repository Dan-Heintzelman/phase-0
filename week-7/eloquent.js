// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
// var dans_dog_name = "Izzy"
// var dans_dog_type = "Husky"
// var dans_dog = dans_dog_name + " the " + dans_dog_type + "."
// console.log(dans_dog)

// Short Program

// prompt("Whats your favorite food?","")
// alert("Hey, that's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//FizzBuzz

for (var counter = 1; counter <= 100; counter++) {
  if (counter % 3 == 0)
    console.log("Fizz");
  else if (counter % 5 == 0)
    console.log("Buzz");
  else
    console.log(counter);
  };
//LoopingTriangle

var triangle = "#"
while (triangle.length < 8) {
  console.log(triangle);
  triangle += "#";
};

// Functions



// Complete the `minimum` exercise.
var min = function(val1, val2) {
  if (val1 < val2)
    return val1;
  else
    return val2;
}

//Driver Code
console.log(min(0, 10));
console.log(min(0, -10));
// Data Structures: Objects and Arrays

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Dan Heintzelman",
  age: 30 ,
  foods: ["Pizza", "Sushi", "Thai"],
  quirk: "I like Star Trek"
}

