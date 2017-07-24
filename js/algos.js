//write a function that takes an array of words or phrases 
//and returns the longest word or phrase in the array. 

//So if we gave your function the array of 
//["long phrase","longest phrase","longer phrase"], 
//it would return "longest phrase". 

//This is a logical reasoning challenge,
// so try to reason through this based on what you already know, 
//rather than Googling the fanciest solution or 
//looking up built-in sorting functions. 
//Note that "some string".length will do what you expect in JS.
//Add driver code that tests your function on a few arrays.


//1.create an array with many different length strings

var phrase_array = ['flowering', 'help me', 'flexible', 'yikes', 'complexities' ]

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
    i = 0 // first value
    j = 1 // secound value
    k = 2 
 for (var l = 0; l < phrase_array.length; l++) {
 	// mover
// l = 0 // index counter
	
	if (phrase_array[i].length > phrase_array[j].length) {
		var bigger = phrase_array[i]
		phrase_array.splice(k,0,bigger)
		phrase_array.shift()
		i = i + 1;
		j = j + 1; 
		k = k + 1;
		//console.log(bigger)
	} 

	else if ( phrase_array[i].length < phrase_array[j].length) {

		i = i + 1;
		j = j + 1; 
		k = k + 1;
		//var larger = phrase_array[j]
		//console.log(phrase_array[j])

	}
    console.log("- - - - - - - - - ")
    console.log(i,j,k,l)
	console.log(phrase_array)
}	



	//remove switch [0] with [1] using first splice it back into array infront of [1]
	// then use .shift() to remove the orignal copy so now [0] is smaller than [1]
   




 

//select the longest string

// - - - - - - - - - - - - 

//console.log(phrase_array)
