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




// Your Own Tests (OPTIONAL)


separateComma(555)
separateComma(77777)
separateComma(100100100)


// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
What did you learn about iterating over arrays in JavaScript?
What was different about solving this problem in JavaScript?
What built-in methods did you find to incorporate in your refactored solution?
*/
