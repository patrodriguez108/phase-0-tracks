// Release 0
// have variable equal array
//   write array

// find length for each element of array
// write function that can return element with longest length
// print function

// Release 1
// write out function
//   function should search through objects' values
//   function should have booleans defined
//   fucntion should have conditional statements
//     conditional statements should be able to determine if values of objects equal one another or not
// print function

var nonsense = ["supercalifragiliciousexplialidocious", "lemonade", "liar"];

var westeros = ["oldgods", "newgods", "dracarys"];

var gaiman = ["morpheus", "wednesday", "hecate"];

var salim = {name: "Salim", age: 32};

var roger = {name: "Roger", age: 32};

var alvin = {name: "Alvin", age: 23};

var theodore = {name: "Theodore", age: 21}

function countLetters(array) {
if (array[0].length > array[1].length && array[0].length > array[2].length) {
  console.log(array[0]);
} else if (array[1].length > array[0].length && array[1].length > array[2].length) {
  console.log(array[1]);
} else if (array[2].length > array[0].length && array[2].length > array[1].length) {
  console.log(array[2]);
} else {
  console.log("Error");
}
  };

function thisThing(object1, object2) {
  var obj1 = Object.entries(object1);
  var obj2 = Object.entries(object2);
  var name1 = obj1[0];
  var age1 = obj1[1];
  var name2 = obj2[0];
  var age2 = obj2[1];
  if (name1[1] == name2[1]) {
    console.log("true");
} else if (age1[1] == age2[1]) {
    console.log("true");
}  else {
    console.log("false");
  }
}

countLetters(nonsense);

countLetters(westeros);

countLetters(gaiman);

thisThing(salim, roger);

thisThing(alvin, theodore);

