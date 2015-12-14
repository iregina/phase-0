
var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100], // Joseph's scores
               [85, 80, 90, 90], // Susan's scores
               [75, 70, 80, 75], // William's scores
               [100, 90, 95, 85] ] // Elizabeth's scores

// Object-Oriented Programmming
// Single Responsibility: 
// 1. Write a constructor function for a student 
// 2. Define the properties of this student: name, score
// 3. Create this new student object (4 objects total)

// This is an object
function Student(name, score){
  this.name = name; // not a variable, a property can hold values
  this.score = score; // not a variable, acts like a variable 
  //don't call score within the function
  this.addScore = function(newscore){
    score.push(newscore);
  }
}

// this is creating new objects - how to store 
var joseph = new Student(students[0], scores[0]);
var susan = new Student(students[1], students[1]);
var william = new Student(students[2], scores[2]);
var elizabeth = new Student(students[3], scores[3]);

joseph.addScore(3);
console.log(joseph.score);