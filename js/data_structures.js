var colors = ["Blue", "brown" ,"white", "flourescent orange"];
color_of_horse = colors[0]

var horses = ["Ed", "Beauty", "Ghost", "Lady"];

new_horse = horses[0]
colors.push("Glow in the Dark");
colors.push("Chrome")

horses.push("Cheeta")
horses.push("George")

stables = {}
//stables[horses[0]] = color_of_horse

for (var i = 0; i < horses.length; i++) {
  stables[horses[i]] = colors[i]
	
}

console.log(stables)

//Horses are great, but times are a-changin', and we need to add an option for 
//faster transportation that we can create with an assembly line. At the bottom 
//of your data_structures.js file, write a constructor function for a car.
//Give it a few different properties of various data types, including at least one function. 
//Demonstrate that your function works by creating a few cars with it.

function Car(make, model, year, used) {
	
	console.log("Our new car:", this);
	this.model = model;
	this.make = make;
	this.year = year;
	this.used = used;

	this.runs = function() { console.log("Vrooom!"); };
	
	console.log("Car INITIALIZATION COMPLETE");
}

console.log("Let's build a car ...");

var anothercar = new Car("Honda","Accord", 1999, true);
console.log(anothercar);
console.log("Our car can run:");
anothercar.runs();
console.log("----");


function Building(floors, residential, year_made, location){

	console.log("Our new Building is:", this)
	this.floors = floors;
	this.residential = residential;
	this.year_made = year_made;
	this.location = location;

	this.opens = function() {console.log("Open for buisness!");};
}

console.log("Lets build a Building...");

var aNewBuilding = new Building(14, true, 1985, "Chicago");
console.log(aNewBuilding);
console.log("Our Building can open for buisness every day..")
aNewBuilding.opens();

	
