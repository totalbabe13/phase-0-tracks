
// 7.1 Leonardo Kaplan
//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

function reverser(word){
 

 last =  word.length 
 //1. count the characters
 
 array_1 = word.split("",word.length)
//2. use that number -1 to split the word into array
 
 array_2 = array_1.reverse();
//3. .pop() method --remove characters from on e array


 console.log(array_2.join(''))
 //console.log(array_2)
 //console.log(array_1)
 //console.log (word.split("",word.length))
}
//4. use .join function
reverser('stressed')

