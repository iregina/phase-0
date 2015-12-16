// hello, I am your grocery list: 
var groceryList = [];

// this is how you add items to your grocery list. You must specify the
// item and the quantity: 
function addItems (item, quantity) {
  groceryList[item]=quantity;
}

// made a mistake? this how you remove an item.

function removeItems (item) {
  delete groceryList[item];
} 

// update quantity 

function updateQuantity (item, quantity) {
  groceryList[item] = quantity;
}

function printList (){
  console.log("My Grocery List:")
  var props = ""; 
  for (var item in groceryList){
    props += groceryList[item] + " units of " + item + "\n";
  }
  console.log(props);
}
console.log("I am setting up my initial grocery list:")
addItems("apple", 3);
addItems("grapes",2);
addItems("pizza", 10);
printList();
console.log("I just removed pizza from my grocery list:")
removeItems("pizza");
printList();
console.log("I want more apples and grapes:")
updateQuantity("apple",7);
updateQuantity("grapes",7);
printList();


// REFLECTION: 
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I solidfied my understnading of creating functions 
// What was the most difficult part of this challenge?
// I didn't understand why my hash wouldn't accept values until I tried it out by just assigning a value to a hash. I also had trouble
// understanding how to create  loop of grocery items. 
// Did an array or object make more sense to use and why?
// An object made more sense because we are dealing with items not objects. 