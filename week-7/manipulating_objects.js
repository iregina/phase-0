var _ = require('underscore')

function sayHello() {
  console.log('Hello, World');
}

_.times(5, sayHello);



// Your previous Ruby content is preserved below:

 // Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!

var adam = { 
  name: 'Adam'
};

var terah = {
  name: 'Terah',
  spouse: adam,
  age: 32,
  height: 66,
  weight: 125,
  children: {
    carter: {
      name: "Carter"
    },
    carson: {
      name: "Carson"
    },
    colton: {
      name: "Colton"
  }
  },
  hairColor: "brown"
}; 

// should add semi colon here
// __________________________________________
// Write your code below.


// JavaScript hoisting
// terah.spouse = adam;
// https://www.interviewcake.com/question/js-scope
console.log(terah.spouse);

adam.spouse = terah;
adam.children = terah.children;





// __________________________________________
// Reflection: Use the reflection guidelines
//
//
//
//
//
//


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)

/*
REFLECTION

What tests did you have trouble passing? What did you do to make it pass? Why did that work?
We had trouble passing the spouse: adam test because the terah method couldn't pull adam. We made it work by moving that function lower down. 

How difficult was it to add and delete properties outside of the object itself?
it wasn't too difficult but I was a little confused about how to add the children to terah

What did you learn about manipulating objects in this challenge?
you have to be careful. 
*/