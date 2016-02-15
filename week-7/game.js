 // Design Basic Game Solo Challenge

// This is a solo challenge


//Game Name//
// Cows-cape : Ground Relief //
// Your mission description:
// To leave the farm and find the city before being turned into ground beef//


// Overall mission:
// Escape the farm
// Goals:
// 1. Avoid farmer butch
// 2. Eat at least 10 patches of grass before leaving farm
//
// Characters:
// Cow (you)
// Farmer Butch (future use)
// Heffer (future use)
// Bull (future use)

// Objects:
// Grass
// Bell (future use)
// Gate

// Functions: (many of these functions did not en up being used)

// You can peform 3 actions on each object in the game. So a total of 6 actions are possible.
// Each object has a function which provides further logic.

// Pseudocode
// 1. Story intro - print to console that you are a self aware cow and you know that
// you are about to be turned into beef. You must exit the gate to free a farmer butch.
//
// 2. Print to console the items that are around you, instruct user to "look" at these
// items to figure out their value.
//
// 2. Define property look for each item "this.look" for gate "this.look" for grass, this.look for bell, this.look for heffer.

// 3. You can use each item. If you use gate before collecting 10 patches, you die of
// starvation. Also, you cannot use gate if butch.location is gate (which is
// completely random). **For later, define a mood of butch. if Butch is in a good mood,
// he might let you leave. or maybe using moo to lure butch away from the gate.

// 4. Define look property/function for each object

// 5. Define use property/function for each object. Use grass should collect grass and
// report to console how many grass patches you have eaten. Use gate will complete
// game if cow.grassCount is greater or equal to 10.

// 6. define moo - not sure yet, but this might do nothing.



// INITIAL SOLUTION

//Title Scene
// console.log("COWSCAPE! - GROUND RELIEF part 1");
// console.log('');
// console.log('');


// //Intro

// console.log("You wake up to the shreaking sound of Moooo and the disctinct smell of animal excrement lingering in your nostrils.");
// console.log("");
// console.log("In a confused stupor, you reach for your phone and find that you don't even have a hand to reach with, you have hooves...and you are naked.");
// console.log("");
// console.log("No, you are not a cool centaur, not even a griffen, you are....a cow!, and that shreaking is the sound of a cow becoming ground beef. ");
// console.log("");
// console.log("You don't know how you got here, but you know you must escape or you may turn into ground beef! ");

// // Define Objective
// console.log("");
// console.log("It's time to get out, You appear to be in a field next to a farmhouse. Next to you is another cow. There is gate not too far from here, and grass patches everywhere that look nutricous(for some reason...) Look around to learn more about each item. ");
// //Counted Items
// var grassCount = 0;
// var gameWin = false;


// // OBJECT CREATION

// function buildItem(look,use,moo) { //item constructor
//   this.look = look;
//   this.use = use;
//   this.moo = moo;
//   this.open = this.use; // open and use have the same action
// };

// var gate = new buildItem("This looks like my way out, I wonder if I can use this.", //construct gate object
//   function use(){
//      if (grassCount >= 3){
//     alert("You've left the farm and can eat grass unharmed forver.");
//     gameWin = true;
//     } else {
//     alert("Eat more grass to fill up your stomach(s) before you leave");
//     };

//   },"Your moo is strong, mighty cow, but it will not mooove this gate!");

// var grass = new buildItem("I think I digest that", //construct grass object
//                         function use(){
//   grassCount += 1;
//   alert("You have consumed " + grassCount + " patches of grass.");
// },"You moo at the grass, it grows even slower.");

// // END OF OBJECT CREATION


// //RUN GAME

// for (var lives = 10; lives > 1; lives-- ) {     // LIVES BEGIN

// if (lives == 1) {
//   alert("You have 1 life left! Make your last mooooooove.")
// } else {
// alert("You have " + lives + " moooves before you are grounded...beef!");
// };

// var itemValid = false;
// var actionValid = false;
// var item = prompt("Please enter an item to interact with","gate or grass");
// var action;

// while (itemValid === false) { // Item Valid
// if (item === "grass") {
//   action = prompt("What would you like to do with grass?","look, use, moo");

//   while (actionValid === false) { //Action Valid
//       if (action === "look") {
//       alert(grass.look);
//       actionValid = true;
//     } else if (action === "use")  {
//       grass.use();
//       actionValid = true;
//     } else if (action === "moo")  {
//       alert(grass.moo);
//       actionValid = true;
//     } else {
//       alert("You cannot " + action + " to grass. Please choose what look, use, or moo");
//       action = prompt("What would you like to do with grass?","look,use,moo");
//     }

//     }; //Action Valid

// itemValid = true;
// }else if (item === "gate") {
//   action = prompt("What would you like to do with the gate?","look, use, moo");

//   while (actionValid === false) { //Action Valid
//       if (action === "look") {
//       alert(gate.look);
//       actionValid = true;
//     } else if (action === "use")  {
//       gate.use();
//       actionValid = true;
//     } else if (action === "moo")  {
//       alert(gate.moo);
//       actionValid = true;
//     } else {
//       alert("You cannot " + action + " to gate. Please choose what look, use, or moo");
//       action = prompt("What would you like to do with gate?","look,use,moo");
//     }

//   };

// itemValid = true;
// } else {
//   item = prompt(item + " is not a valid item.", "Enter gate or grass");
// };
// };// Item valid end

// if (gameWin === true) {
//   break;
// };
// }; //Lives End



// INTRO

document.write("You wake up to the shreaking sound of Moooo and the disctinct smell of animal excrement lingering in your nostrils.");
document.write("<br>");
document.write("  In a confused stupor, you reach for your phone and find that you don't even have a hand to reach with, you have hooves...and you are naked.");
document.write("<br>");
document.write("No, you are not a cool centaur, not even a griffen, you are....a cow!, and that shreaking is the sound of a cow becoming ground beef. ");
document.write("<br>");
document.write("You don't know how you got here, but you know you must escape or you may turn into ground beef! ");

// Define Objective
document.write("<br>");
document.write("It's time to get out, You appear to be in a field next to a farmhouse. Next to you is another cow. There is gate not too far from here, and grass patches everywhere that look nutricous(for some reason...) Look around to learn more about each item. ");




// Refactored Code
//Counted Items
var grassCount = 0;
var gameWin = false;


// ITEM CONSTRUCTOR

function buildItem(look,use,moo) { //item constructor
  this.look = look;
  this.use = use;
  this.moo = moo;
  this.open = this.use; // open and use have the same action
};

// BUILD GATE
var gate = new buildItem(
  "This looks like my way out, I wonder if I can use this.",
  function use() {
     if (grassCount >= 3){
      alert("You've left the farm and can eat grass unharmed forver.");
      gameWin = true;
     }else {
      alert("Eat more grass to fill up your stomach(s) before you leave");
     };
     },
    "Your moo is strong, mighty cow, but it will not mooove this gate!");


// BUILD GRASS
var grass = new buildItem(
  "I think I digest that",
  function use(){
    grassCount += 1;
    alert("You have consumed " + grassCount + " patches of grass.");
    },
    "You moo at the grass, it grows even slower.");

// GAME LOGIC

for (var lives = 10; lives > 1; lives-- ) {     // LIVES BEGIN

  if (lives == 1) {
    alert("You have 1 life left! Make your last mooooooove.")
  } else {
    alert("You have " + lives + " moooves before you are grounded...beef!");
  };

  var itemValid = false;
  var actionValid = false;
  var item = prompt("Please enter an item to interact with.","gate or grass");
  var action;

while (itemValid === false) { // Item Valid
if (item === "grass") {
  action = prompt("What would you like to do with grass?","look, use, moo");

  while (actionValid === false) { //Action Valid
      if (action === "look") {
      alert(grass.look);
      actionValid = true;
    } else if (action === "use")  {
      grass.use();
      actionValid = true;
    } else if (action === "moo")  {
      alert(grass.moo);
      actionValid = true;
    } else {
      alert("You cannot " + action + " to grass. Please choose what look, use, or moo");
      action = prompt("What would you like to do with grass?","look,use,moo");
    }

    }; //Action Valid

  itemValid = true;  //item and action complete, end loop by setting valid to true
}else if (item === "gate") {
  action = prompt("What would you like to do with the gate?","look, use, moo");

  while (actionValid === false) { //Action Valid
      if (action === "look") {
      alert(gate.look);
      actionValid = true;
    } else if (action === "use")  {
      gate.use();
      actionValid = true;
    } else if (action === "moo")  {
      alert(gate.moo);
      actionValid = true;
    } else {
      alert("You cannot " + action + " to gate. Please choose what look, use, or moo");
      action = prompt("What would you like to do with gate?","look,use,moo");
    }

  };

  itemValid = true;  //item and action complete, end loop by setting valid to true
}else {
  item = prompt(item + " is not a valid item.", "Enter gate or grass");
};
};// Item valid end

if (gameWin === true) {  // Every life it checks for gameWin before running loop, break if game is won
  break;
};
}; //Lives End






// Reflection


// 1. What was the most difficult part of this challenge?

//   I'd say the most difficult part of this challanege was the whole challange! Since we just learned how
//   to write JS, it was almost if I had to learn while writing this game. I knew what I wanted to happen,
//   I just didn't realize that I would have to keep the game really basic to make it fully functional. Once
//   I was able to sacrifice some features, it felt more feasible.

// 2. What did you learn about creating objects and functions that interact with one another?

//   I learned that using a constructor is pretty neat! I don't know if I really needed it, but I have a nice
//   framework that I can create new objects in the game with. It would be neat to mess around with having the
//   user create their own objects in the game using the contructor and prompts.

// 3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

//   My logic was pretty straightfoward, and therefore I didn't see any reason to subsitute any methods that I
//   originally used. I refactored for readability and also made it look cleaner when played in the browser. I
//   will say that in my original solution, I could have gone more basic, but I decided to add in new features
//   at the end like "number of lives". Also, I like that my game will not allow you to mess up, you will run
//   out of lives or win. It will not break. However, currently it is impossible to just quit out of the game.


// 4. How can you access and manipulate properties of objects?

//   There are a few ways you can manipulate properties of an object. You can do object.propertyX = value to
//   change the value. Also, you can use delete object.propertyX to get rid of that property.