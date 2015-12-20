// DOM Manipulation Challenge


// I worked on this challenge [Regina Wong and Caroline Kenworthy].


// Add your JavaScript calls to this page:

// Release 0:

var rel0 = document.getElementById("release-0");
rel0.className = "done";

// Release 1:

document.getElementById("release-1").style.display = "none";

// Release 2:
var header = document.getElementsByTagName("h1")[0];
header.innerHTML = "I completed release 2.";

// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 4:

var rel4 = document.getElementsByClassName("release-4")

for (i = 0; i < rel4.length; i++) {
      rel4[i].style.fontSize = "2em";
}

// Release 5:

var template = document.getElementById("hidden");
document.body.appendChild(template.content.cloneNode(true));





// Reflection

// What did you learn about the DOM?
// When a browser looks your HTMl, they turn it into the DOM. It stands for Document Object Model
// It is an application programming interface, or API, for valid HTML documents
// It defines the logical structure of documents and the 
// way a document is accessed and manipulated. The DOM lets programmers navigate through
// a structure and add, edit, or modify elements of a HTML file. In DOM, documents have logical structures.
// the idea behind DOM is every part of a document can be an object.

// What are some useful methods to use to manipulate the DOM?
// Some useful methods are: .getElementsByClassName, getElementbyID, getElementsByTagName