
//==================================================================================
//Release 0   
function phrase_finder(array){
console.log(array);
console.log('');
console.log(array[0].length);
console.log('- - - - - - - - - - - - - -');

//var copyArray = originalArray.slice();
//console.log(copyArray) --> works
var finalArray = [];
//var sizeOfarray = copyArray.length;
//console.log(copyArray.length);-->works


do {
    var copyArray = originalArray.slice();
    
do {
       if (copyArray[0].length > copyArray[1].length){
	        copyArray.splice(1, 1);
	        console.log(copyArray);
	        console.log('')
  }
  else if (copyArray[0].length < copyArray[1].length){
	        copyArray.splice(0, 1);
         	console.log(copyArray);
         	console.log('')
  }    
       
    }
    while (copyArray.length !== 1 );
    
    finalArray.push(copyArray[0]);  
    var find = array.indexOf(copyArray[0]);
    array.splice(find,1);
    console.log(finalArray);
}
while(finalArray.length !== array.length);

//finalArray.push(copyArray[0]);

console.log(finalArray);
  
  
}//end of function 
var originalArray = ['complexities','flowering', 'help me', 'flexible', 'yikes' ];
phrase_finder(originalArray);


console.log("");
console.log("");
console.log("");

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

//Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
//So if we ran your function with an argument of 3, we would get an array of 3 random words back 
//(the words don't have to be actual sensical English words -- "nnnnfph" totally counts). 
//The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. 
//(This involves a new trick, generating a random number, that you'll have to look up, 
//but the solution on how to do so is relatively straightforward.)
//Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

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





















