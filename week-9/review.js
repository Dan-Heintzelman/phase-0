
console.log('Hi Dan');
console.log('Hi Ryan');

// Requirements

// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)


// PSEUDOCODE:

// 1. Create an object literal, saved to a variable
// 2. Add a 'food_items' property which is itself an empty object
// 3. Add properties which are functions that modify the food_items list
//   - add an item
//   - remove an item
//   - update the qty of an item
//   - print out the list

// 4. Use driver code to use these methods to modify the food_items list


// var grocery_list = {
//     food_items: {},
//     add_item: function (item, qty) {
//       this.food_items[item] = qty;
//     },
//     remove_item: function (item) {
//       delete this.food_items[item];
//     },
//     update_qty: function (item, qty){
//       this.food_items[item] = qty;
//     },
//     print_list: function () {
//       console.log('ITEMS IN LIST:');
//       for (var item in this.food_items) {
//         console.log(item + ': ' + this.food_items[item]);
//       }
//     }
// };


// REFACTORED as constructor

function GroceryList (initial_list) {
  this.food_items = initial_list || {};
  this.update_item = function (item,qty){
    this.food_items[item] = qty;
    this.print_list();
    };
  this.remove_item = function (item) {
    delete this.food_items[item];
    this.print_list();
  };
  this.remove_single_item = function (item) { //Add new function to remove one item only
    if (this.food_items[item] > 1) {
      this.food_items[item]--;
      this.print_list();
    }
    else if (this.food_items[item] === 1) {
      this.remove_item(item);
    }
  };
  this.print_list = function () {
      console.log('ITEMS IN LIST:');
      for (var item in this.food_items) {
      console.log(item + ': ' + this.food_items[item]);
      }
      };

};

var myList = new GroceryList ({
  bananas: 5,
  grapes: 2
});

var ryandanlist = new GroceryList ({
  baguettes: 10,
  "Foot Cream": 3
});


myList.update_item('grapes', 1);

myList.update_item("Foot Cream", 500);
myList.remove_item('bananas');
myList.remove_single_item('grapes');

// REFLECTION

// 1. What concepts did you solidify in working on this challenge? (reviewing the
// passing of information, objects, constructors, etc.)
//
// This activity helped me solidify the difference between using an object literal
// definition and a cronstructor function to create to create intsance of an object.
//
// 2.  What was the most difficult part of this challenge?
//
// I actually found this challenge to be fairly easy. However, I think it was at
// first difficult to think about how to best print out the results in a way they
// would look nice for a grocery list.
//
// 3. Did an array or object make more sense to use and why?
//
// An object made more sense to use since an object could contain everything we
// needed to make our solution work. We just created an object called grocery list
// and defined properties as functions that modified the nested object food items.
