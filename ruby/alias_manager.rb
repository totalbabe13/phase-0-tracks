#
#var = 'd'
#puts var
#puts var.next 
#puts var.next.next

def agent_name
  agent = 'Teonardo' #Miupesfu
  
  
  not_vowels = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  
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
   
   puts first_letter #if vowel
  
  elsif pre_vowels.any? {|letter| letter == first_letter}
   
   puts first_letter
  
  
 # elsif not_vowels.select {|consonant| consonant == first_letter}
   #compare first letter to ALL consonants
  # new_code_name = not_vowels.select {|consonant| consonant == first_letter}
   #puts new_code_name
   #puts first_letter
  
  
  
  end  
   
end
agent_name