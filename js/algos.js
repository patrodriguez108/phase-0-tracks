// have variable equal array
//   write array

// find length for each element of array
// write function that can return element with longest length
// print function

var nonsense = ["supercalifragiliciousexplialidocious", "lemonade", "liar"];

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

countLetters(nonsense);

var westeros = ["oldgods", "newgods", "dracarys"];

countLetters(westeros);

