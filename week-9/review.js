# hello, I am your grocery list: 
var groceryList = [];

# this is how you add items to your grocery list. You must specify the
# item and the quantity: 
function addItems (item, quantity) {
	groceryList.push(
	{item: item,
		amount: quantity}
	);
}

# made a mistake? this how you remove an item. 

console.log("hello");
console.log(groceryList);
addItems("cheese", 2);
addItems("burger", 3);
console.log(groceryList);