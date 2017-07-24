//1.create an array with many different length strings

//2.access each string in the array
//2.a --> call 1 element length in driver code
//2.b --> count the length of each string

//3. COMPARE with if statement 
//3.a try writting a bubble sort algorythm
//3.b use a counter to move through array indexes
//3.c change index values using operators
 
 //i = 0 // first value
 //j = 1 // secound value
 //k = 2 // mover
// l = 0 // index counter

 //4. compare lengths of each string 
 //5. larger loop to iterate through all of the word array
//==================================================================================
//Release 0   
function phrase_finder(array){
 for (var l = 0; l < phrase_array.length; l++) {
	i = 0 // first value
    j = 1 // secound value
    k = 2
	if (phrase_array[i].length > phrase_array[j].length) {
		//var bigger = phrase_array[i]
		phrase_array.splice(k,0,phrase_array[i])
		phrase_array.shift()
		i = i++;
		j = j++; 
		k = k++;
	} 
	else if ( phrase_array[i].length < phrase_array[j].length) {
		i = i++;
		j = j++; 
		k = k++;
	}
    console.log("- - - - - - - - - ")
    console.log(i,j,k,l)
	console.log(phrase_array)
	
 }
 
 return console.log(phrase_array[4])
}
var phrase_array = ['complexities','flowering', 'help me', 'flexible', 'yikes' ]
phrase_finder(phrase_array)


console.log("")
console.log("")
console.log("")
//==================================================================================
//Release 1
console.log("Matching Values in Objects")
function key_pair_finder(object_1,object_2){
//console.log(object_1.age)
//console.log(object_2.age)
   	match = false
	if (object_1.age === object_2.age){
    	match = true
		console.log("Ages Match!")
	}
	
	else if (object_1.name === object_2.name){
		match = true
		console.log("Names Match!")
	} 	



}

var  person_1 = {name: "Steven", age: 54};
var  person_2 = {name: "Tamir", age: 54}; 

var  animal_1 = {animal: "Dog", legs: 4};
var  animal_2 = {animal: "Dog", legs: 3};

key_pair_finder(person_1, person_2)
key_pair_finder(animal_1, animal_2)
//==================================================================================
//Release 2	

function word_inventor(word_num){

}

word_inventor(3)

