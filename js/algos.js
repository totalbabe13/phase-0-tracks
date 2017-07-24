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

// COULD NOT FIGURE THIS ONE OUT :( 
//==================================================================================
//Release 1

//1. -create function that compares values in objects -


console.log("Matching Values in Objects")
function key_pair_finder(object_1,object_2){
//console.log(object_1.age)
//console.log(object_2.age)
   	//match = false
	if (object_1.value === object_2.value){
    	//match = true
		console.log("Match!")
		console.log(object_1)
		console.log(object_2)
	}
	
	//else if (object_1 === object_2){
		//match = true
	//	console.log("Match!")
	//} 	



}

var  person_1 = {name: "Steven", age: 54};
var  person_2 = {name: "Tamir",  age: 54}; 

console.log("")
console.log("")

var  animal_1 = {animal: "Dog", legs: 4};
var  animal_2 = {animal: "Dog", legs: 3};

key_pair_finder(person_1, person_2)
key_pair_finder(animal_1, animal_2)
//==================================================================================
//Release 2	

//Write a function that takes an integer for length, and builds and returns an 
//array of strings of the given length. So if we ran your function with an argument 
//of 3, we would get an array of 3 random words back (the words don't have to be 
//actual sensical English words -- "nnnnfph" totally counts). The words should 
//be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. 
//(This involves a new trick, generating a random number, that you'll have to look up,
//but the solution on how to do so is relatively straightforward.)

//==================================================================================

function word_inventor(word_num){

alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

	//INPUT = integer for length 

	//. create an array that has three indexes/objects (maybe they are blank string already)

	//. argument word_num would be also the length of array, meaning it contains 3 objects

	
	  //  create a variable that will hold an array whos index count will be a random
	  // amount between 1 - 10
	  
	  // for each item in array there will be an array inside, who's array.length with invoke 
	  // the parameter (so the sub arrays below, will take argument/parameter as thier length
	  // and have random integers in each index that will match with alphabet array?) 
	  
	  //word_num array_1 =[ sub_arr1 = [13,9,5], sub_arr2 = [8,1,22], sub_arr3 = [19,11,4] ]



   //OUTPUT = 3 random strings
}

word_inventor(3)






















