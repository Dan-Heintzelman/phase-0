 // JavaScript Olympics

// I paired [with: Jones] on this challenge.

// This challenge took me [#] hours.


// Release 1
var addEvents = function(athletes) {
  for (var i = 0; i < athletes.length; i++) {
    athletes[i].win = athletes[i].name + " won the " + athletes[i].event;
  }
console.log(athletes);
}



// Releaes 2
var revString = function(string) {
  var revArray = [];
  revArray = string.split("");
  revArray.reverse();
  var solution = revArray.join("");
  return solution;
}

//Release 2 - Refactor
var revString = function(string) {
  var reversedString = "";
  for (var i = string.length; i >= 0; i--) {
    reversedString += string.charAt(i);
  } // end for
  console.log(reversedString);
}




// Release 3
var evens = function(array){
  var solution = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 === 0) {
      solution.push(array[i]);
    }
  } // end for
  return solution;
}




// Release 4
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}




// Reflection