
def agent_name
  agent = 'Leonardo' #Miupesfu
  
  
  not_vowels = ['b','c','f','g','j','k','l','m','p','q','r','s','v','w','x','y','z']
  
  vowels      = ['a','e','i','o','u']
  
  pre_vowels  = ['d','h','n','t']
  
   
  number_of_letters = agent.length  # 8
  
  
  code_array1 = agent.downcase.split('') 
  #transform string into array, separate characters 
  
  new_code_name = []
  
  #p code_array1  # ["l", "e", "o", "n", "a", "r", "d", "o"]
  
  first_letter = code_array1.first
  #point to the first letter => 'l'
  
  #task 1: ask if letter is vowel or not ?
  if vowels.any? {|letter| letter == first_letter} 
   #compare vowel array to the first letter (L), evaluates as false
   #puts'vowel'
   #puts first_letter #if vowel
      if first_letter == 'a'
        first_letter = 'e'
      
      elsif first_letter == 'e'
        first_letter = 'i'
      
      elsif first_letter == 'i'
        first_letter = 'o'
      
      elsif first_letter == 'o'
        first_letter = 'u'
      
      else  first_letter == 'u'
        first_letter= 'a'
      end
   puts first_letter
     
  
  elsif pre_vowels.any? {|letter| letter == first_letter}
   #puts 'pre-vowel'
   #puts first_letter #if pre_vowel 
   
      if first_letter == 'd'
        first_letter = 'f'
      
      elsif first_letter == 'h'
        first_letter = 'j'
      
      elsif first_letter == 'n'
        first_letter = 'p'
      
      elsif first_letter == 't'
        first_letter = 'v'
      end 
      puts first_letter
  
  elsif not_vowels.select {|consonant| consonant == first_letter}
   new_consonant = first_letter.next
   #puts 'consonant'
   puts new_consonant #if regular consonant
  
  
  
  end  
   
end
agent_name