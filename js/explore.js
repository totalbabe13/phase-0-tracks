
// 7.1 Leonardo Kaplan
//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

function reverser(word){
 

 last =  word.length 
 
 
 array_1 = word.split("",word.length)

 
 array_2 = array_1.reverse();
 

 console.log(array_2)
 //console.log(array_1)
 //console.log (word.split("",word.length))
}

reverser('stressed')

//1. count the characters
//2. use that number -1 to split the word into array
//3. .pop() method --remove characters from on e array 
//4. push() to put charcters in new array
//5. .join method