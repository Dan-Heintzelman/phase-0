console.log("");
console.log("It's time to get out, You appear to be in a field next to a farmhouse. Next to you is another cow. There is gate not too far from here, and grass patches everywhere that look nutricous(for some reason...) Look around to learn more about each item. ");
//Counted Items
var grassCount = 0;
var gameWin = false;


// OBJECT CREATION

function buildItem(look,use,moo) { //item constructor
  this.look = look;
  this.use = use;
  this.moo = moo;
  this.open = this.use; // open and use have the same action
};

var gate = new buildItem("This looks like my way out, I wonder if I can use this.", //construct gate object
  function use(){
     if (grassCount >= 3){
    alert("You've left the farm and can eat grass unharmed forver.");
    gameWin = true;
    } else {
    alert("Eat more grass to fill up your stomach(s) before you leave");
    };

  },"Your moo is strong, mighty cow, but it will not mooove this gate!");

var grass = new buildItem("I think I digest that", //construct grass object
                        function use(){
  grassCount += 1;
  alert("You have consumed " + grassCount + " patches of grass.");
},"You moo at the grass, it grows even slower.");

// END OF OBJECT CREATION


//RUN GAME

for (var lives = 10; lives > 1; lives-- ) {     // LIVES BEGIN

if (lives == 1) {
  alert("You have 1 life left! Make your last mooooooove")
} else {
alert("You have " + lives + " moooves before you are grounded...beef!");
};

var itemValid = false;
var actionValid = false;
var item = prompt("Please enter an item to interact with","gate or grass");
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

itemValid = true;
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

itemValid = true;
} else {
  item = prompt(item + " is not a valid item.", "Enter gate or grass");
};
};// Item valid end

if (gameWin === true) {
  break;
};
}; //Lives End



