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

1.  What JavaScript knowledge did you solidify in this challenge??

  I think that my pair and I can both vouch for the fact that we learned that it is
  incredibly easy to forget to put in the keyword var, to declare a variable. Also, we
  learned that we need to use this keyboard to declare our init value in our for loops.

2.  What are constructor functions?

  Constructor functions remind me quite a lot of what making a "class" is in Ruby. Code within a
  function is intended to be reused multiple times. Before it can be used, it must first be
  instantiated and perhaps given some arguements when this is done (just like a ruby class). Once
  an instance is created using:
   var newInstance = new functionName();
 then newIntance will have the properties defined in the the contructor function. (assuming it w
  as given some).

3. How are constructors different from Ruby classes (in your research)?

  My research seems to show that ruby classes DO very simliar things to JS constructors,
  however the way they do it is different. In Ruby, instances of classes are used to make new
  objects. In JS, a constructor is an object that is invoked to make a new object. However, one
  big difference is that a constructor function cannot build a function that is available to all
  instances of itself like ruby can. This can be done using the prototype function in JS.

  W3schools explains this in a very simple way. "Every JavaScript object has a prototype. The pr
  ototype is also and object. All Javascript objects inherit their properties and methods from their
  prototype."

  I am not entirely clear on this, but it seems like the .prototype function is used to add properties
  and functions to existing constructors. However, I don't see why you can't just add the function into
  the constructor everytime you need a new function added to a contructor!
