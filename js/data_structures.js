

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