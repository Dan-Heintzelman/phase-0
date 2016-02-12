// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// 1.Take the integer input, and split it into an array of strings.
// 2. Reverse the array.
// 3. Find the total length of the array.
// 4 IF the length is divisible by 3, do nothing
// 5. ELSE pad begging of array with 1 or 2 zeroes.
// 6. Remove first 3 values and store into a solution array, then add a
// comma to it. Repeat process until end of array.
// 7. Remove zeroes from beginning of array and then remove last item in
// the array (the comma).
// 8. Combine array back into one string

// 743
// 001,569,743  remainder = 1
// 022,222,222  remainder = 2

// Initial Solution

// var separateComma = function(number) {
//   // number = number.split(number.toString(""));
//   var numString = number.toString();
//   var numArray = numString.split("");
//   var remainder = (numArray.length % 3);
//   if (remainder === 1 ) {
//     numArray.unshift("x", "x");
//   } else if (remainder === 2) {
//     numArray.unshift("x");
//   }

//   var commaArray = [];
//   while (numArray.length != 0) {
//   for (var i = 0; i < 3 ; i++) {
//   commaArray.push(numArray.shift());
//   }
//   commaArray.push(",");

//   } //End of While

//   while (remainder >= 0){
//     commaArray.shift();
//     remainder--;
// }
//   commaArray.pop();
//   return (commaArray.join(""));

// }


// separateComma(1000000000)

// Refactored Solution

var separateComma = function(number) {

  var numArray = number.toString().split("").reverse();
  var remainder = (numArray.length % 3);


  var commaArray = [];
  while (numArray.length != 0) {
    for (var i = 0; i < 3 ; i++) {
      commaArray.push(numArray.shift());
    }
      commaArray.push(",");

  }

  commaArray.pop();
  commaArray.reverse();
  return (commaArray.join(""));

};





// Your Own Tests (OPTIONAL)
separateComma(1000000000)



// Reflection

// 1. What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

//   We ended up approaching the proplem two different ways. The first solution, at least for me, was different my ruby solution
//   because we did not reverse the input before calculating where the commas were. Instead, we made the number divisble by 3
//   by padding it with the character "x". While this solution was interesting, it was not very efficient. The refactored solution
//   was more simliar to what I did in Ruby, but it was still unique because it used a for loop intead of the .each iterator. I found
//   this to be our first challenge with JS, so it was kind of difficult.

// 2. What did you learn about iterating over arrays in JavaScript?

//   I learned that you can't simply iterate over and array using a function like you use a method in Ruby. Although there is more
//   syntax needed in JS, it ultimately was not too challenging to iterate through our array using the for loop.

// 3. What was different about solving this problem in JavaScript?

//   I pretty much answered this in the first question pretty specifically! :D.

// 4. What built-in methods did you find to incorporate in your refactored solution?

//   Our refactored solution really just approached the proplem differently and removed a lot of lines of code. We just learn how to use
//   the functions (pop, reverse, join, shift, toString, and lenght). Most of these are very simliar to the methods in ruby!