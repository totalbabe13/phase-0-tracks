def agent_name
  agent = 'Leonardo' #Miupesfu
  
  
  not_vowels = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  vowels      = ['a','e','i','o','u']
  
   
  number_of_letters = agent.length  # 8
  
  
  code_array1 = agent.downcase.split('') 
  #transform string into array, separate characters 
  
  new_code_name = []
  
  #p code_array1  # ["l", "e", "o", "n", "a", "r", "d", "o"]
  
  first_letter = code_array1.first
  #point to the first letter => 'l'
  
  #task 1: ask if letter is vowel or not ?
  if vowels.any? {|letter| letter == first_letter} == false
  
  end  
   
end
agent_name