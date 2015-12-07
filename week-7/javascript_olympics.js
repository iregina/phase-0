// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [1] hours.


// Warm Up


// Bulk Up
var Olympics = ["Sean", "Lacrosse Game", "Regina", "Tennis Game"];

var win = function(array) {
for (i = 0; i < array.length; i= i+2)
	console.log(array[i] + " won the " + array[i+1] + "!");
};

win(Olympics);


// Jumble your words


var reverse = function(string){
	var word = string.split("");
	word.reverse();
    word = word.join('');
	console.log(word);
};

reverse(name)


// 2,4,6,8
var number = [1,2,3,4,5,6,7,8];
var even = function(array){
    for (i=0; i < array.length; i++)
    {
        if (array[i] % 2 !== 0){
            delete array[i];
        }
    }
    return array
};

even(number);




// "We built this city"

function Athlete(name, age, sport, quote){
	this.name = name;
	this.age = age;
	this.sport = sport;
	this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");

console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// Variable and creating functions 
// // What are constructor functions?
// Constuctor functions is a javascript function for creating an object type that can used multiple times
// without having to redefine it
// How are constructors different from Ruby classes (in your research)?
// Instead of "this", Ruby uses "self"



