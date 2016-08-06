// Release 0
var colors = ['blue', 'green', 'red', 'purple'];
var names = ['Joe', 'Kevin', 'Jack', 'Horsey'];


colors.push('orange');
names.push('Daniel');

console.log(colors);
console.log(names);

// Release 1
var horses = {}

function create_array(colors, names) {
for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}
return horses
}

console.log(create_array(colors, names));


// Release 2 
function Car(make, model, year, doesItRun) {
  
  this.make = make;
  this.model = model;
  this.year = year;
  this.doesItRun = doesItRun;
  
  this.drive = function() { console.log ("Vroom!"); };
  
}

var anotherCar = new Car("Honda", "Civic", 2008, true);

console.log(anotherCar); 

anotherCar.drive();

console.log("-----------------")

var anotherCar2 = new Car("Chevy", "Malibu", 2001, false);

console.log(anotherCar2);

anotherCar2.drive();