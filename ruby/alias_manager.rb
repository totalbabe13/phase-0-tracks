#
#var = 'd'
#puts var
#puts var.next 
#puts var.next.next

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
   
   #puts first_letter if vowel
  
  elsif pre_vowels.any? {|letter| letter == first_letter}
   
   #puts first_letter if pre_vowel 
  
  
  elsif not_vowels.select {|consonant| consonant == first_letter}
   new_letter = first_letter.next
   
   #puts new_letter if regular consonant
  
  
  
  end  
   
end
agent_name