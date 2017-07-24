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
   var phrase_array = ['complexities','flowering', 'help me', 'flexible', 'yikes' ]
//last_word = (phrase_array.length -1)

    i = 0 // first value
    j = 1 // secound value
    k = 2 
 for (var l = 0; l < phrase_array.length; l++) {
 //for (var i = 0; i < phrase_array.length; i++) {
//l is index counter
	
	if (phrase_array[i].length > phrase_array[j].length) {
		var bigger = phrase_array[i]
		phrase_array.splice(k,0,bigger)
		phrase_array.shift()
		i = i + 1;
		j = j + 1; 
		k = k + 1;
		//console.log(phrase_array[i])
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
	console.log(phrase_array[4])
	
 }
 
 console.log(phrase_array[4])
	