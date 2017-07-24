
// 7.1 Leonardo Kaplan
//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

function reverser(word){
 //word.length -1
 return word.split("",word.length-1)
}

reverser('apples')

//1. count the characters
//2. use that number -1 to split the word into array
//3. .pop() method --remove characters from on e array 
//4. push() to put charcters in new array
//5. .join method