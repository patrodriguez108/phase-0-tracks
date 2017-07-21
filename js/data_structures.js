var colors = ['blue', 'obsidian', 'orange', 'maroon'];
var horse_names = ['Joe', 'Arya', 'Rick', 'Smoothie'];

colors.push('silver');
horse_names.push('Sylvia');

var horses = {};

for (var i = 0; i < colors.length; i++) {
  horses[horse_names[i]] = colors[i];
}

console.log(horses);

function Car(make, model, year) {
  console.log('This car:', this);
  this.make = make;
  this.model = model;
  this.year = year;
  this.rev = function() { console.log("Vroom"); };
}

var carOne = new Car("Toyota", "Scion", 2008);
console.log(carOne);
console.log("Listen to that car purr");
carOne.rev();

var carTwo = new Car("Tesla", "Model X", 2017);
console.log(carTwo);
console.log("This car makes a nice science sound");
carTwo.rev();

var carThree = new Car("Mitsubishi", "Lancer", 2017);
console.log(carThree);
console.log("Listen to the sound of the atmosphere dying");
carThree.rev();