def agent_name
  agent = 'Leonardo' #Miupesfu
  
  
  not_vowels  = ['b','c','f','g','j','k','l','m','p','q','r','s','v','w','x','y','z']
  
  vowels      = ['a','e','i','o','u']
  
  pre_vowels  = ['d','h','n','t']
 
 
  code_array1 = agent.downcase.split('') 
  #transform string into array, separate characters 
  
  new_code_name = []
  
  number_of_letters = code_array1.length 
  
  
  #p code_array1  # ["l", "e", "o", "n", "a", "r", "d", "o"]
  
  
  
  
  while new_code_name.length != number_of_letters
  
  first_letter = code_array1.first
  #point to the first letter => 'l'
  
  #task 1: ask if letter is vowel or not ?
  if vowels.any? {|letter| letter == first_letter} 
   #compare vowel array to the first letter 
   #puts'vowel'
   #puts first_letter #if vowel
      if first_letter == 'a'
        first_letter = 'e'
         new_code_name.push(first_letter)      
      
      elsif first_letter == 'e'
        first_letter = 'i'
        new_code_name.push(first_letter) 
        
      elsif first_letter == 'i'
        first_letter = 'o'
        new_code_name.push(first_letter)
        
      elsif first_letter == 'o'
        first_letter = 'u'
        new_code_name.push(first_letter)
        
      else  first_letter == 'u'
        first_letter= 'a'
        new_code_name.push(first_letter)
        
  end
   #puts first_letter
   #puts new_code_name  
 
 
  
  elsif pre_vowels.any? {|letter| letter == first_letter}
   #puts 'pre-vowel'
   #puts first_letter #if pre_vowel 
   
      if first_letter == 'd'
        first_letter = 'f'
        new_code_name.push(first_letter)
      
      elsif first_letter == 'h'
        first_letter = 'j'
        new_code_name.push(first_letter)
        
      elsif first_letter == 'n'
        first_letter = 'p'
        new_code_name.push(first_letter)
        
      elsif first_letter == 't'
        first_letter = 'v'
        new_code_name.push(first_letter)
  end 
      #puts first_letter
      #puts new_code_name
  
  
  
  elsif not_vowels.select {|consonant| consonant == first_letter}
   new_consonant = first_letter.next
   #puts 'consonant'
   #puts new_consonant #if regular consonant
   new_code_name.push(new_consonant)
   #puts new_code_name
  end  

code_array1.rotate! #changes the first letter of original array, puts next letter to be evaluated
puts
p new_code_name

end #end of while   
end #end of def 
agent_name

