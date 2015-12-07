// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Regina Wong, Chris Shahin, Lindsey Stevenson, Rueben Brandt, Luis De Castro

// Pseudocode

// input: a number
// output: a string with commas in the right places

// steps:
// add number into a list where each digit is in a separate index
// check the size of the list (how many digits are there)
// if there are fewer than three digits:
//    return the number as a string
// if there are more than three digits:
//    loop through the list from the back
//    insert a comma every three digits
// return the number as a string with commas


// Initial Solution

function separateComma(number){

  var array = number.toString().split("");

  
  if ( array.length >=4 ) {
    for(var x = array.length-4; x >= 0; x-=3) {
      array[x] = array[x] + ','
    }
    console.log(array.join(""))
  }
  else{
    console.log(number);
  }
}


// Refactored Solution

function separateComma(number){

  var array = number.toString().split("");

  
  if ( array.length >=4 ) {
    for(var x = array.length-4; x >= 0; x-=3) {
      array[x] = array[x] + ','
    }
    return array.join("");
  }
  else{
    return number;
  }
}


// Your Own Tests (OPTIONAL)


separateComma(555)
separateComma(77777)
separateComma(100100100)


// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
It was challenging yet interesting. We approached the problem quite similarily in terms of pseudocode. 

What did you learn about iterating over arrays in JavaScript?
With iterating over arrays, the syntax is arranged differently.

What was different about solving this problem in JavaScript?
Javascript seems more condense.

What built-in methods did you find to incorporate in your refactored solution?
None so far because we felt our original solution was quite refactored.
*/
