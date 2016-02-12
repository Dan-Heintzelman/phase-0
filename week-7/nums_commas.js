// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
1.Take the integer input, and split it into an array of strings.
// 2. Reverse the array.
3. Find the total length of the array.
4 IF the length is divisible by 3, do nothing
5. ELSE pad begging of array with 1 or 2 zeroes.
6. Remove first 3 values and store into a solution array, then add a
comma to it. Repeat process until end of array.
7. Remove zeroes from beginning of array and then remove last item in
the array (the comma).
8. Combine array back into one string

743
001,569,743  remainder = 1
022,222,222  remainder = 2

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

}





// Your Own Tests (OPTIONAL)




// Reflection